Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D32318159
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755168594; cv=none; b=mSwW8a6wgcolNmrQmGrjxFYgJGFjbit9esgGV0Pm4nTNXBDwXHDv+IFeZe7T00jHw4w7Rq8nW09yRbVcGafVWViFklzrjD86QMelggVwG3ibHGkBEchDHsJIEI/5EvHABPsY3Sb8Usid65WOSKlf6rMd6aMKJaOY9jY+UUv9TyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755168594; c=relaxed/simple;
	bh=lPYs+t7eH9L4/DxOlCd44rulsLaLMS7ZpWG8D3Lvc2c=;
	h=To:Subject:From:Message-Id:Date; b=TkeqtbIFeSJoUgVt16GUKoQ0wBSaesmeWlAye7dyP3iZcyi2RRzegZt5AEJLIxsCRl0Cl3aXpVxrE8BVK3o13lbs7oYbpgOU/mqrLISsWdze46oOyyYdsgmNl90I7BxBVPBzX5MU4n/eIlf16WMA2wiQXVOQyWvdiqCB9ut2Pa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RK422XZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RK422XZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FF6C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755168593;
	bh=lPYs+t7eH9L4/DxOlCd44rulsLaLMS7ZpWG8D3Lvc2c=;
	h=To:Subject:From:Date:From;
	b=RK422XZJImpe3M8ezStaxIWXs8BrCQXeconKdyZmi+SVe9IQ2ZZYyQGyJ+UmVPSdC
	 ORH2E2J3gkmDq1k8Ri0rdtTqWIpE+rkXsqfuPKUX963tfxbXVuHR1/3i1yX9AZG5rH
	 YF0AYfih/EUtBEVqUY34Nq4stcnduUNVAzhjbCGWuYK6LenpMZvKjDDnfnH7CReojT
	 6+KZxAZJVHuXkrN7Ah65+Do2dU/aqGera2BaDh1sIc+15yDq42oZC7g4Skot2iiGsd
	 E4I2ipvT+jz1SiTvt6pzoaGkRNTxOIOmV669vACHX2XPPsez13KGgr01riDbD/HbF8
	 NkdhfUfCHYMBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFF4CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175516859357.10147.14015197654405756119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14146f0fbe84ee437346830585ca9854dd911f5f37dbe2345945017c68081c1b
Date: Thu, 14 Aug 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755168593
