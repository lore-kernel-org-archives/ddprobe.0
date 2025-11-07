Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C40ED3195EC
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762523993; cv=none; b=ssRbndgoS4MAv3yZFG8kt6xMJF21DUYzYCynrVgXhUVNbD6o2o8SkRlr1xoHk1Hidp9OBORHTd/Q9LpGXs2DYr52VsGJ+V/agOXFcnaOf206csf9xSfJ9wH4rCUg7ZQ1u6oP+wXA2HlYY2SrT2VsVisgXgm2erIkDQjZYH/domI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762523993; c=relaxed/simple;
	bh=WqfUPEyifUkZHlbCBNrC4/py7aiUWc4QeVNs33xqIKU=;
	h=To:Subject:From:Message-Id:Date; b=Zoi1pRdy5ZKFcSDck9Clbfk4xNpIWdkpjLUSg3INjecvgKG4BjVR+NJxvr3X0Hn93lcQUqvQ2pkahbeKoYhw3DqtJqpDn5aHknskQIHLyMkh0VQzc3R+dSESotXgxajjUrMRAcFSY9lUE215Tzx0SUoD5ECpSZij8tPNqI881RE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OaKyxy/Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OaKyxy/Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C7B5C4CEF8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762523993;
	bh=WqfUPEyifUkZHlbCBNrC4/py7aiUWc4QeVNs33xqIKU=;
	h=To:Subject:From:Date:From;
	b=OaKyxy/Y3KU6HGQeQn9LGb9+Hk9phf2M/D9VBcqgzcefbR88Qwa7r7SDcYRWdbr/X
	 ljedU8sIOHdv/BuBcmHW2SIE2RX31qFJUXIZULF3GSu4Ee7CT832UjeNJSYXlW1L52
	 1lcwtovAD61ausPVdLyjk38Z3Ttlh6hhg4s55/G8l/lw8DYtpGf6gqq3Z0TVcXh/lB
	 vse90O2N434mM3MLAV4Pdktd6DMQCnL1mUxpE+ZDTKvcduP3GBz4rnS6WPBj1VOu2Q
	 X9x9KanAhbhoQHErefR/e2REHny+KZqKO2iL2PFUAUXTQajhhzEOQ5zS296nFiJs6w
	 lBpP+yRPCrLyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91384CCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176252399358.19125.1725410929506349961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eed53718c74d2bfea9bcbf6af15519f2d062b70a9202c9a378136bdbe3be45f1
Date: Fri, 07 Nov 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762523993
