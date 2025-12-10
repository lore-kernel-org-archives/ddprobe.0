Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE771C84D7
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 19:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765395174; cv=none; b=LLSLvp70KM/A2ZY7j4lABbzjalrPOOy94LAdK+KFdL2N3ylrXN2HPt72sjNoeLo1qtmqEHMEqBJAAmBk1dvhsv9S/XJoTGBJoccYMm0za78AQ7Um9CBWCVCEril3IAGADTkCFgifkLkT3iNCpv9KAyxpLm1rYucFrsabM2orEss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765395174; c=relaxed/simple;
	bh=lZtBfIUl01acF1x4nNpGGOp0PVLzE78raGMqVJyUQRk=;
	h=To:Subject:From:Message-Id:Date; b=D305F454y1dqA4LeUQOCu67v7SKyp382qPM49hKtunEn8TO4RdRtPj2kD5OvWQEgwxuPaiWNQeoB5BpHQ1lLbIffL7sJK20r5E5nZZkHnW7p1EMiTSOqvrqhkQKCvviqKB9qn+uYGERpwES9cJcyWVU7X1UZx0xGSTZahTrGxRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSiaxA3q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSiaxA3q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92CCC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 19:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765395173;
	bh=lZtBfIUl01acF1x4nNpGGOp0PVLzE78raGMqVJyUQRk=;
	h=To:Subject:From:Date:From;
	b=mSiaxA3qEsDN8wAKxP3adERs8sB46L8y8LUTFM07ePR0052y7Sc6EDzuGSFOwgswE
	 QGj3FCHIKxozrD2Xml5+EXAFj1IIj91EhQ3xrRqOwmscU0geEhV5rtM69YRPfaTTFq
	 lASucUzbeBP8nsChZPWNoX16bp+eD/tYitiG/AeBvbLYpyp/90CmaYRLWnvwSKyXgi
	 B3P9j3RzhrvaOWNpZb52pmp8DNsoQ+NX6UECwCgNRyffNBzjUl2qVVEG5T1y/JCeYQ
	 9JvwO9Va7DKUUWGUugOFXGfMB2w77d0F/BP5I7lb3PGl1DUCnTlxRvmRqMd25IqqVk
	 UCysynNgB490A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EFBD3E774
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 19:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176539517359.2824.14081276387840084671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 816d6cec4aba6d5d7ef19fd184c8e2f0ecdb99ff3c22c7a252a2ade9e86cd665
Date: Wed, 10 Dec 2025 19:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765395173
