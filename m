Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E92833EC
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752892795; cv=none; b=dl3guvc11Qk3dcJoPjE9taxZt6S9v4Tz2y+onQ7qiikWBR8hc3Qt/5cJcdMsFtLB2dLI2heofcFSDHvhwedw8NMdP/FKgmVK+DmKhiuyfuIV0J8H+JUTyzjA3/1Zz+D6uJxHr+CQEm/lY5ie46bTVfsw3TY42z2GK03LQ8G8vaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752892795; c=relaxed/simple;
	bh=/SfELY/c8HlMSI/fYj8+aI7NjMiSOiEuJpcdvqGCsCo=;
	h=To:Subject:From:Message-Id:Date; b=Ya6Wi9f4QCDuoujhTwoCslOYfNtJUphatebigtq2jKPv+lxDs1stMBK8Lx4R8mXtHYh42KD98dY8nk0Luwo+5kyOaU9EjRx3ZZ4VREsKY8CiTj3aIybg9FrArVGQExtWtg2eMhZk4UbLDhi40HCN8KI7O4mx95L0EE0nMhiFYHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rlK6N1A3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rlK6N1A3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1611C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752892793;
	bh=/SfELY/c8HlMSI/fYj8+aI7NjMiSOiEuJpcdvqGCsCo=;
	h=To:Subject:From:Date:From;
	b=rlK6N1A3bLHtC93nvLLByrZcoFPwGX7Isx5fD2Jm6S5yCz763/AUoBAUpPPSCrb5F
	 4M6/BccByd799StUbukrclo8b6sacEAN2QOIYX+QZAeN3qb1I6DrZ/KfaOIgc+bo05
	 O5XVwOEuXru6Win4URV8LiSv+y40/xqlBowSr44mWw2QqofKgYLG8YyyVwc4yQTpIm
	 C+ihXSv4nRH7+xoZD90x8obZC79ZGUyageenVHqCEsXYmcfGrEw1wbp9PxiOD2qyOG
	 SKme5Cery+4mPPHebbuOfu77bGkK8L7sHiPJmytRYBj3oas9SKSwnUZn21nHFDPfwN
	 9Fwq/VufN/MzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB30C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175289279357.30133.746107986835621661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 279d837eee71c332c88dda4a510c06169930f031a10590f021e73e24dafa65cf
Date: Sat, 19 Jul 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752892793
