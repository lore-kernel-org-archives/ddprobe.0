Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202722F546A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750270794; cv=none; b=BKOU3DQdFbIy99p8TNSoPGfofxuwFdBrmp4fxceeIiLfirQSOcgwfZflfYXudbHIEUNhmS2E+cqMKkQm7sOBlVIJlqqOzO9tjmKvJItbld+Gzn5DK8bfgrcBbi1gKTUIklu+qKrgf4ziZc1rs+Xjl2pvuK0AH7MliquriBZ5FHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750270794; c=relaxed/simple;
	bh=XolJSNHKKg0TOLNmag1mVHlCZftIrpD+N78zpXPhEWk=;
	h=To:Subject:From:Message-Id:Date; b=O05W22SxqFJwFa2tgswvB1FjnRjUutTbQ2HL4x3EDJSFpuUMV6Dpus+OU7/Aid2/yRGv9ngOofpwNCkR1ahUSOxv79hZ6x/C5KybcT6oSfDUP2CEAHR/omJzjQYYlH0TiVjQigKqxvlpDv+gQpRpQ+AJnSReeEIVgaAQ7tS2R6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dnbOTuFE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dnbOTuFE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09D3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750270793;
	bh=XolJSNHKKg0TOLNmag1mVHlCZftIrpD+N78zpXPhEWk=;
	h=To:Subject:From:Date:From;
	b=dnbOTuFEi3eyYAlwh41mTbkApdcfvXCgnMbLiVHTET/H2r7YjZkMTKT5fR07plLbR
	 1IVoakP6gXGlKrbzAEdbK0hKl78z9iSJ6/oJSHdBiCWqoLuwLi8lFxt6gUSXcUL1FK
	 iv536JfnWCsB4b/0l4pOMAGwx0/SCFHVA6Xyeb2RCL9N6asa0XjcnNN5eOg3g6BLRV
	 5xwLH1UP6mu+K68NxWvqT6B/YoXS/ZJ3URmlR7XSBsg4NvDNEoIfHUrilGyWHYM5SY
	 YCuE8IoSmW/+rKrL7YVrIncM/RyrwOCvO31Ezfa+EVgy7cGBPQUtRyGri8Gs61Otiu
	 GiaQtK+kCGUlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEE9C7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175027079358.21712.8608004543373197249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e780b17e1a4e387cc6e7f411daa933d79073ebf6b87f965c839e7f2a6ebaa337
Date: Wed, 18 Jun 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750270793
