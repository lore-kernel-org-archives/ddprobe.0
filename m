Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1672B81749
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753622394; cv=none; b=FIBUUyFLQwu23R8aOiSoX2qviF2o6L8Gp7B173YQdiTU/x5VFj/HvzGFEW4bo6qmYDxCv6arM3WhXYWYD0/gUWLbFMaLVanYDojhNo4cyZcYse8WYdD8/f0ZHBiOkZ8kUtcA7t28M/OS/yRUjPPDQAQlKs4CBi+iWNb1HMCU57w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753622394; c=relaxed/simple;
	bh=oChKM1hKfzI46jOD/FnK6PHaybQjYAoED58mM2bTh2E=;
	h=To:Subject:From:Message-Id:Date; b=fBFpcIYCGCGQOZXrVJ732S3/jpUaTNnhrCCtnt3K2/azjuBurIvlb+fPETqnb6t1Mkt99txsTfa6lOQGqGVptjqCL2J1HlDLVCzjBAb50tFoQNZG3aoiPWUp4HufkoeXW76m3SEpAGazM0Vfktld9XE9UubGtXg8NttbuR/vo6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kEHY0OUT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kEHY0OUT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08BCC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753622393;
	bh=oChKM1hKfzI46jOD/FnK6PHaybQjYAoED58mM2bTh2E=;
	h=To:Subject:From:Date:From;
	b=kEHY0OUTKIl2DOr5/DYZCiCsMGQiLOYJcEbdUFCKsIiHozP11WIksDmzJA1BDl0XI
	 jgvIzB6MrB7ICjlBLkrYpHpBaeZGM1RO9xlFthxD2JiET+nKbIONDFVFk/pm0S5hnm
	 09fWNGFDhE3lceIMVl/ImXrnYWCUMQfeBvYJpDnOeFx/TbrVBdR0lyqD5naGaW6LQK
	 agxzaakAJfDreyEj4Eq9F7rSPj7GGp97Wk/7WYVjw7GVl74rVbnez3R6Axonmn5GQp
	 TURiK4nZrasv14awadTo9yRHrQC/S90DLK1eLKU4KgAJuiLYiT3ub+BF9hGnkb/ZTJ
	 +h3Lr4rX92Grw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915B8C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175362239357.25842.15044850695840413980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b419f191782933cdbb71f1ed9e33621ca3693537a81b3ac1241b7bcda4ce364c
Date: Sun, 27 Jul 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753622393
