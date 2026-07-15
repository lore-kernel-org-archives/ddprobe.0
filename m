Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74B822ECD35
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 17:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784135314; cv=none; b=VHxa6W0G4ziWSnjbn2dECaFBeseLsBb84i9PZYSlLxXQ8oRPZfuJvEtNYgJhqxDiwjp9NhfnBH/s5BEuvV5xoNce8gSW62H1x/WKnCNjiNLRd7t37xwQ9uAWKwBYwHaWYRKh20eC2JYMPBHPIhyKDquf+qrsDdHa66mJWEO85dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784135314; c=relaxed/simple;
	bh=kAaGMH/JujQaoFDuY48vv/rkQGXalpk7D6A+8yfNVB8=;
	h=To:Subject:From:Message-Id:Date; b=dTHomtDBDKiE7Fr0kME8p+Rx0I8oU3MSO6WFkhjZH5nfg/q4/P/Y0Qx3gPSL8dSWqmdVDktOkcpU2WERlZfs1yeK06NVarSpzXJnv9v9fgWbv/u1+++FiRlbuIQks4yOa1a72iSam4PuKjJ4SF1OOi+p4d6lvTErSYYdWX9CtLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eUgRwZ+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUgRwZ+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51F2C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 17:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784135313;
	bh=kAaGMH/JujQaoFDuY48vv/rkQGXalpk7D6A+8yfNVB8=;
	h=To:Subject:From:Date:From;
	b=eUgRwZ+mgCPuV6WnkegCPQj9QqEqZ8+hN/9fmY3YYwr5pVb0u4RTGpx3fSu5ly9Sb
	 ld8lZE9Ku0l5557yF3FPfkh5rmPu0+F/o4EJGGwfVfoDSOdNRcg3jg+RD4jd2+PGZR
	 7JBAaqwX6/YdMAT+DJwYVCNsxcvi0SbECLpA1U4T+BlHw+ioeax7kNI8khwA5V5vTk
	 hZRQSpEhMRKkr2A63GEayyyLYFhtM8giUV0SdjTefUn5m0ew9cKC3gwOG+9TLleCKo
	 2uUuPMRfU97GSJxbhbvY8M3m0SaAJLVl36e5BYMylOb54bm7RZKi19zsYuau04h4u6
	 1kptkmHZXiqNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC63C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 17:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178413531369.25874.7402855644160949031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07046a11dcedaa6235ca37138c0b72098230edefec5b143d24a6adad1a3509ec
Date: Wed, 15 Jul 2026 17:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784135313
