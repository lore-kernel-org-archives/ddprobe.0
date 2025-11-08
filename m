Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1414C34D38B
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762583394; cv=none; b=IJFIRRPoTnQ8S3E2Xfn8C3AaftAT6oE/fUrtFXK3VIuVmOmj1wRr2cF/EvAJyXH9H8fa5f3v3Ow66FfljPpNjx9j2JTwXFBShDoBOwjKmkVBIyOB4RR8GTp17EVbQk0eWLZW8TrnGF7tVL0yS37g0Oghbfu2z66Sp8U3zfdMRjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762583394; c=relaxed/simple;
	bh=PxS+yh9IkiN9ZunBGKTv6pkaGiCzuP6DRlisOJiOQG4=;
	h=To:Subject:From:Message-Id:Date; b=hekzQJd77YnVbm9WSINW/kCF70oKuvfFRQBn4l9yCA9u6xDwCoM5mbzF6bsIeEUDSA7+0exTIKWPz5pf1+EIh4UMu7vSLYqZByrPXbr6ccgSKqs2FhkE6KaowQJXDYCfF+J6wEN6C1WZoO4PIhwEIojUhKQ3qbs69ZKR5Xh+LK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTxhZqNd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTxhZqNd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BE24C113D0
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762583393;
	bh=PxS+yh9IkiN9ZunBGKTv6pkaGiCzuP6DRlisOJiOQG4=;
	h=To:Subject:From:Date:From;
	b=eTxhZqNdS/i9MdpFqogNLn5HvRbBm/LkLWnEHVGeWp/rnNdOwbmNyTSuQRe9kqtHh
	 m6EWjrByZAghBgGhuaSz5fzEyjou7IcmReVQ/GGDxWM2Qs/cvQrmSz3xpI4Y+AScF4
	 nRJnOPt5WK/p0f1oWE9kF2A0KtmyE+r65M5sMvMZPL88N8pVRgIQt87zmB8ygyJt1C
	 l2gMpmNTYGVYoFPzZ5JLzvKOJr4ugR3cgnoszvUl2EQxOgro/ErvQNl3rrAcTgjeDB
	 xHKTnSEMagIB8FxPjacntexYrQE6OL01Gyhne7ea9tR8ZrTEiQm2qSC7OeQNZCa/q0
	 ZP3RkHecoRTlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7BACCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176258339357.13450.16439961122921656865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d348c4e2e3086f5c4a3519b5c0b8a9bcc9742df4ee99f0abcb42e957e0ad893
Date: Sat, 08 Nov 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762583393
