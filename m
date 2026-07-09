Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD75430CCA
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 16:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783613314; cv=none; b=JyInZQiEzAvb/camz+Q09Y+YGCdtUsWGKBnqflIZNisi/DDOw8bUGhxWfxXfuxci6yU857crlbsHfdGtSAmNJ/b5Agl2ZblZbbOH5geB3M5ReLEmIT4B1PdmXTmpE2o0npkSP9G5+njEWUUOFXFbbLiI8fyBAoDS8KldNNbtxSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783613314; c=relaxed/simple;
	bh=D3F/k2rNGZgafy7ZfbbsYFn6W0BM5Ht31ODhsIufLP8=;
	h=To:Subject:From:Message-Id:Date; b=LtkIIWUmxB7EQpzqP5HYbjWuxidO0o4xGres4jUFztoG01FIdcuILIi4Z+LUu4WgWDooC4BvuYyxF6MY3CmtPdVg8zZLRZv6Pm7N9w615iiWEHNa4Kpk8D9yxj3wJULm1zpCcCjtufU/NNOEYdTRwPii8bBVXOkgHMgWhfGFtUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K60xvTFp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K60xvTFp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C83F8C2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 16:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783613313;
	bh=D3F/k2rNGZgafy7ZfbbsYFn6W0BM5Ht31ODhsIufLP8=;
	h=To:Subject:From:Date:From;
	b=K60xvTFpxvmVsNaKrwemJsImbeDCg5giWElBI5ekri4+umYXLyxPimL2E4P9TBF67
	 Kivw/7fbK30VnZJsBA6gDvoWyWfzkrPaSKDDlXXCSMUuumD3pT+Gn+EqbobB3qv6II
	 T7EcE9xbPo1WZ2l5WNhsHIf0Rkfp2vQjADtWuDkN+OXUkG3f+TCqXrSj9/JCHC99d7
	 iBAHnL0gdsAnMNtccjPDXIM1XWOm8PURydrBRbEmdZuAMA8++vZM31h4WVNcRTeoBK
	 5hKO6ZAU979b2InKIR7e+fiT4LJyoTC7VaRSwc9+psK8PNfDzYFsHTBttSEawdALlQ
	 sWuxcjMPuyCtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86C9C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 16:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178361331368.30877.7051957408296255961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1afd90f1af5fbeed9362b55d2aca534a4beae8918edf830f5ee5d2ed4e9e8277
Date: Thu, 09 Jul 2026 16:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783613313
