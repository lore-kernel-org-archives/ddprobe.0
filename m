Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC3917B420
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 12:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717070663; cv=none; b=DHMtvpotvu9UhXEKwG0XCNBk9NgF/VXmKaIaV0CmIT5LAO0ReW+/2Zjr1ZPfuX8F/fUy1/F7mRAXkvIDuAU8lK++vqjMj/pCF6U61dE/MgacP3ZmbdHRFXlIZmt6mS6yuxb1LTDUxTORNiYvlTCZe5xC1MdDtpA7Ymh/LyyAqr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717070663; c=relaxed/simple;
	bh=fRhen6eqyGue6PUyUazdxIlIRY/MyMJMHfPoPyIurdk=;
	h=To:Subject:From:Message-Id:Date; b=UttdlmXbhiD/dqjDFdDKuuPUN0GMh7G1/aI7qm/9dfBClWHaIF5aO/6xYJgi0rzfk22JRTalTH7liN/5rI9Wh5fOjFzdC7z1A7Cr8mSD0FMtcoaJsPVLEcInynnIrnksMVZjhhi+hKrLajP290O/tJSZiQr/LlfYRrLy9yRIKOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=it0FIVyc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="it0FIVyc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E78F2C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 12:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717070662;
	bh=fRhen6eqyGue6PUyUazdxIlIRY/MyMJMHfPoPyIurdk=;
	h=To:Subject:From:Date:From;
	b=it0FIVycYc2Ls/M0mrhvH0eTbcEZNsq+XaeyIQCM78pIJMiWokn/UfIzaHZ93nMKh
	 sgh7CQt/UchWZoVG1/EUbeuPA+8POkzqkLmePC5X7bR0aSo+dgYtMjIfxeUAyqb2vu
	 cJpJe3pg3VVyIOVWbrZ2jk7hv257tE/Alsao0m78CVMMbxZ0PEySPVbrlP0/0Bf4lf
	 lGYOJrqjLMc/3FqBntO7YmQcRnbjH/Amvm248bREvUnoDrLFjxH7E7WMRBvpl1si8U
	 wmtC3Q79pqVVn/Y8Wmkjw2qeTNWNWHCq5e2HHy5ubqiIgeZcHHguL2cDDj0XXbbcpw
	 vWNM+LGaOaFOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB0A6C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 12:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171707066281.471.6595667482737829396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3600d14c298d25107a676be3b7ec84ecd091c456345a0dc56ff135164496ad1
Date: Thu, 30 May 2024 12:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717070662
