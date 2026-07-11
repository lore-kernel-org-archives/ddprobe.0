Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5AF37998C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 16:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783786114; cv=none; b=lGpQXkzWFlloySYUxHGw8B2P4/9a11l0syPVL2MgzFSr8WHujRY+6tRDd2wa00g0I+7gJm9PI4y9ysvAMaiqGLMYjHPbOpNAvCxSKl1DRLiQzXsaC3XVd52RKYWC805Cg+EeKI+6AHUU3/G8JAr/gYsgPrieErz8X/myWo92KWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783786114; c=relaxed/simple;
	bh=T0YFyy87Q3GCF2K/SWLfzwlE+DAQSx0Kd46dpij/4ls=;
	h=To:Subject:From:Message-Id:Date; b=CVT2TRU3Cngf7+rprjTAXWhWijI3aQu49DNu3HQPSzeUJPbmYmsVHXoksPi3BxP5piDihcy9SK+mR2vcJ6vCOHkXVdrmpEkwKktOCyqCck0SGjkySM6tcFdvf5Ir7Wv07dy06qwCpjUQb5TKs8yfmdhOGfhRod+9ObgHvSQEB1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/NQgTSx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/NQgTSx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD5FC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 16:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783786113;
	bh=T0YFyy87Q3GCF2K/SWLfzwlE+DAQSx0Kd46dpij/4ls=;
	h=To:Subject:From:Date:From;
	b=X/NQgTSx1g7AGhcAT309ZXGerY0iKRsVs03cgH2BkQtxs2OASBt+Wfjq4q32mDFki
	 M0GMJII4+Nvunep8ctypItsLBcR1JmcLg+BnmCazNwetoRf0/U/CYH1/9aLWuvdoN+
	 BYpJ57DYl2ZC4skcJmM2unNwoKoeqgTOC8THXeQ0evhoyPh1PCT+2gotOVfiOyobnR
	 OnjHHSkqwlLQFECAtlVUHJmkyOyBuncIqu2jK1eDFnrMk9eF1BrZ5V3rhnAh9MrvRX
	 WtwkoEzplA1TwV73q6tfu8S9rXxXh8LPsE0hCEJJJgxBXsrzjxXF7ZdY/LxQF6k8V7
	 4Sfzh98cOSNGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A87C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 16:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178378611368.16104.6277879111706576352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb84077ebc5ec51be3e14a62050dc2979aec6bd598c7d8ce600d54b3d98ba13b
Date: Sat, 11 Jul 2026 16:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783786113
