Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE9B1D6DDC
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 04:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740112134; cv=none; b=GC91+Y26EERYu0D5xuwAjkRjpiVBYF4v4azqC+mFSvBlXL4FAjUM/X+Mf5pIiUmDaoROMZhrOWtKbBtggqiT/I/Ib0Ep9r2WqFQ6UaENNRZoZyT/+QMi9jLREhzLEwFJmpPzBgSoK/K52rViosHKyRD7JzkODoc4gru4AN0IMeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740112134; c=relaxed/simple;
	bh=Xy4tyt+PR8WtlbPKUdz+T2XCaR1m2NsKFQ4SzKfGDp8=;
	h=To:Subject:From:Message-Id:Date; b=ef65u5CsL9YeSMuvCW6w7VGXkzr2zP3lIV45x971DrvNv0ZqEnm+Fut1ldRSYrIsXK5rimUcmsou04DAGcv7Ejh7vz0X9IJnMD8AmH8pQ2XG8llXzmB7onuYYCcylo4UaPXwZXqT7tpqgEKZH11CUu0yH1ILz8H9dYYn9tSAU/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPpCLiBE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPpCLiBE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0951C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 04:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740112133;
	bh=Xy4tyt+PR8WtlbPKUdz+T2XCaR1m2NsKFQ4SzKfGDp8=;
	h=To:Subject:From:Date:From;
	b=tPpCLiBE1qjqa+M7sgpRvBouCHpNbbU8wSzNSyFKyE8OQh7AgwsGWpbk8acFkqPgT
	 VAITrL2nUBJ4HClGvXYOGy8THCAcC2kGW3p7Els1SWsLqtM3HaYsUdraXvXCEICG3U
	 HziolWCEXg8LqdLUunJxCSgFIGZXcBcSQMNS30HJBEIyv342Mxtaox7da62jjZ3k1E
	 IJyuV70X91vXpKdZvMle1cKl+XxwhIS1X9QNSElLqASqASltgbiUbsYFFWZbXuiVMc
	 2q5JA4vTzQ2t0YTt2SQgMahgRHTSIrvJJqbemb1ha6NFoUp6tUNbB6MYHY261kOkuP
	 Li8RjpOhIrLOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A19C021AA
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 04:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174011213362.26802.16938430067616310650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c526f998839e7d513d6659e7aa7bf42868689d12470d9ffd46ebb99e2389ae13
Date: Fri, 21 Feb 2025 04:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740112133
