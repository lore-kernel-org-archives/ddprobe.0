Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A21C243369
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739091354; cv=none; b=WuTj/S/qiRlgSQ8YHaAkhncDZgo63PTlIOpqV4bRZqNslf32zlAxcSPbZNV60BuDX0i/joDnnFItyYywz7dcX/85hdH2j0pomoj1bQ+71TMEuGOlCm4J6ncZoEsRZjPE78xMZAZVEK/WBSHRIVvOEaF1fAlNjGa6oc6eOssM/Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739091354; c=relaxed/simple;
	bh=d2LFETWKYMZhPtCwIeEJc6POWFnhCv0cKB9ZQ3eia70=;
	h=To:Subject:From:Message-Id:Date; b=jDvEgCHOwxGsK6b4vmAbEUZMxFByk2u7eEEHlxG6ZhhtR4o87oKld+cmM8P+QgY5d233ajX4DuexbQ2IIfCWnovuWyZRPqQymCVTGC1vVIcqsJ/v6VR94D12Nb0kSuu2Q8PmNikq1hfn1nNpfPvpECqYMh1GtxmerxGCEhpjZcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DG7spfhq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DG7spfhq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D73C4CEE2
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739091353;
	bh=d2LFETWKYMZhPtCwIeEJc6POWFnhCv0cKB9ZQ3eia70=;
	h=To:Subject:From:Date:From;
	b=DG7spfhqMjFtO8fgmLYcc1xWVY11MiXED07puN6Stb2K8B490EKp3dyLlW7VLcWDO
	 JnwbulZjkmeDc/jQfHdAGTFMu3hrkVqGVtBWWE1uBk+qXq0H8Q1OxcEn074gFOL0K9
	 JOLFR3E9M+l7rmkOUqstf7ReE4GypdAcgzGFSvX5VwLKkMFkdJKiZ8qfsNKHpWbou/
	 jYrd3tA8p76N0NwMd6Zn5Q2viCMNbwBE/gGT3EnPSgPa3gBiYdivEeqxfkfISxBteW
	 Mig9tM9lp1IPRf+mPft9LpDWfh5RlnkRQF9wSWslbkj+RxFyrflq7I5hfKwOXtPY6x
	 IqvZMuP35vncw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E15AC02199
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173909135360.4379.17582662351374639876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a32006fb33c7e10768e559829cad2f86bdf5eab03d3a16172c6aaa72f7e1606a
Date: Sun, 09 Feb 2025 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739091353
