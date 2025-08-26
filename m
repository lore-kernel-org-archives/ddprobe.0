Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B0026CE0A
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756246194; cv=none; b=CbgDFlD9trqAlT4OuKsjv5N/zwTlkm/6hJoa7SZrTbIGuyhURclcYRVfVD5yQx01GuNOxWdleGaKUcs+suv9RWsD/8l7i6H4UOtc1Qo8AbCkYSIsmF3XQo817kCgQdyNwTPfMEd14EQIwtHOx03TFyHpYBIG+XjugqywV9BX2fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756246194; c=relaxed/simple;
	bh=OIo6WA8gmv8wTPqtc01iieW9bs97iCH53crU5o0iUWw=;
	h=To:Subject:From:Message-Id:Date; b=EoSEysTEVR8HpjyyPHg/vICDusVAceD++vGCrLp/UGnZCroM2UBAHjofM7EIFVNnjNpQFcRu964mWwHwig7sl2RRrGWgCi2sHpsIhdH1LXL2gQO3ZP+aOZlU6ntNHeBZ90asL+N9u/IwG3sAsg+yafg9rqwTjzA2qeNP3EAJZRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lW3elOYV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lW3elOYV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1094C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756246193;
	bh=OIo6WA8gmv8wTPqtc01iieW9bs97iCH53crU5o0iUWw=;
	h=To:Subject:From:Date:From;
	b=lW3elOYVvcxQGs02Y7Xn5YRp4K/0dmg70KHK7eudpgjYLsGUQj6H6Xj34ymogCt2g
	 dRMIydl+BbUkCjqI6Ohlq3L0q5nj1eBQyi0bOdsxBfh/1Z+oYJNyOSqWVmP5ZnRSyI
	 jjgH3OgasUcumP5pLNuQrdh+Oz4sV2t0RFlchZ3Uk8ic+4UwzTU0hUkh8VhQvAOzVl
	 Y7U1uZ0JEmn4E9UsA6R9W3TEW4QXplZb6A0ItyDX3dSRekL9gob9uiqRgR8mUsKIlX
	 w9jBAx0ASkl6XF0P9LtHZ3mIpw5QSDACCfpUbFCb1asu5bqnEQh1JZKMxJDeli87pS
	 QkAXkNXJPGZqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6D1CA0FED
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175624619357.17184.5144541536295345690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5196d39926cfa2c6e0e884cc8c1788831bd05fedc55a9b66a19233fde1805aee
Date: Tue, 26 Aug 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756246193
