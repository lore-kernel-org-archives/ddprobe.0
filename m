Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4394921638C
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737573954; cv=none; b=mZkHwt8sgncrHUmz9gx//JszMhMWZDm3AxmtpKyz3dToPcvHUCkHzRzjKzEPAvvFaQOvLwAonX/nQwiko8Td4/Ufe2lBdQQLna4pK2luJmIcQexYjdHUGLIpNGSt0+mi9WEEB7zAYD7GtiZip5DNhV+s3bgbUJ/kr99U5AKFDxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737573954; c=relaxed/simple;
	bh=Xu1AIqXg5jZX5/rSyJ3KJbmNVT+sxa2PAcffyJKc/8k=;
	h=To:Subject:From:Message-Id:Date; b=Uvz7TUakme/ekLbxczk+FmprbRhsn/twqhZj5XsZTYq2/PYd+cpzAA5atwkaxxlNEWjSeA+pmVliFq2tDSx9qJ3tdeehWzNtnPwabl5w5a1JkkZiFsKnG5V+hVaDMaCq85kl1+1yAnaChDqQSjvhrTJx/hxG02YZfWtZw44oybE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ABuNsdsr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABuNsdsr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B38BBC4CED3
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737573953;
	bh=Xu1AIqXg5jZX5/rSyJ3KJbmNVT+sxa2PAcffyJKc/8k=;
	h=To:Subject:From:Date:From;
	b=ABuNsdsrSrVLocXY1P2/gobreUJUffzFhFkf+lH0uuiJqoJ2cOQv+MPb5s0qPjnsf
	 LqHz0ftSjGuX5VBGxNM/TonYf2pIMGDo3ddE/aj13WkFtGN+tFYoaULYwTuogMd6T7
	 goWnyUo/43P4BSu+8+DQopDK3/glREXjXR4JX8dDnKfYKNOQYIfR9lZGussIkb1709
	 DiAfLQ9qdkt42GtLE2HgSS/hBsnoeGLSuhsDyyufSEHCrQodgiGlNQpFbnwcAglbmL
	 x7zm6Fp8CL6bEoY9P0zh7xcZTlKmLMSfEXUT4dgYucDErcm1tufy6XXLrxJCUlltBb
	 sANpTRAteX+DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F9B8C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173757395362.5434.15219410537961265974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddc001bbcb320a1219f76e929414fd8a4f7755a2c2ac10014960d76670312718
Date: Wed, 22 Jan 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737573953
