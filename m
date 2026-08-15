Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510AD33FE0A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786836634; cv=none; b=U6xvt1apVILV3v3JY7sIU+aKIoXYnq56kFYfaz1A7cVANvBIm+OabHtSEFFMfxYzrLLxV8MIM2XJwov4QDqBQDULnj9UQzaBfx2tKtRXjY6BhRqRQ3lIPTqpzhrcDNFCYJE/9X4IOw3kF/W8ncSjL/r4zsikpZ3aIc+W0VEs9FQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786836634; c=relaxed/simple;
	bh=rryRAQeupA7GlE2cgCp93VhFPLAyDEMT5XdVLb7A+Cc=;
	h=To:Subject:From:Message-Id:Date; b=sWVqMcXjSaQYAunAGiquYVY85itKfhYaF3tG5zGuIxaip/PUcdfkMjAdreZ8fh5bvkopMPivVt26HycXfd8ABzOAcNWnvTc1m3Pe3EUF+W7jaY/2//66bSUmFCy2dlsl2OjfdDtnuXum0eCmoqk8YiIvLeTvpAprt3ji4bnC+lU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4f4FcGd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4f4FcGd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45E3C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786836633;
	bh=rryRAQeupA7GlE2cgCp93VhFPLAyDEMT5XdVLb7A+Cc=;
	h=To:Subject:From:Date:From;
	b=T4f4FcGdUv7rRSiMHit6e+txKuYxGl7nyXd/sU24Y07bT9oON9Gov4tGv13lPPU6j
	 gz5rzzZyuCMF2rYc8OH9rf2lNIbgv8ibiFxmqBFBpBEdo5xpJc5zZdRQua3qrGkycK
	 uBHnSzKlNoqge2gDcbrSIeaj/+i1+GXaQXiyv+tww4VbRIadPMFO8LvyeO+p9V7Pqt
	 xvAh1ctFtAfTLSNjhTt9S0KfJezgVE8nvj/QhD+Mm6q2IK07EebYfvK8lvYvO4fs+3
	 sVWsLd8VIioXhcdvVqoLgRW774Teyoh4e/uO1TeuDWhedesSpt3QIQ3nMDEXR4Wbd/
	 eiT6+IB6ATl2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0B8C5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178683663369.29671.18166867582035822166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d99ecc1a3b32e359d8af0f6f0e55def3f4f281c261c3e3e1abd9169481bb32bd
Date: Sat, 15 Aug 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786836633
