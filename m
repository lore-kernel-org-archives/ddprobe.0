Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360BE370D69
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788931234; cv=none; b=nUqY98lWgQQ/yHJ81g5slzsTndwSBK97vp/uJ8IMFFs4tNqISqj1NZcMhDETAL1fdS3PzZUEmq1J8sNR0eagFszwvzbbth/d5Lj0J6KVm4t0Qbu0Ib8s/gTq/MXSIjnSSLZl/Fcfjn+z9ha0jRScTY8+xss7HY70q3dyzOQ4IlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788931234; c=relaxed/simple;
	bh=aYGG9d8T3Utz4WeIxEb2bK8PYShwOJat2VCPw+sQKu8=;
	h=To:Subject:From:Message-Id:Date; b=upIuH9LKE+gqmEKA8UnlaTAAmIFtBTIhNZWAcCN1BcAtmwSsPAC+zGwrsNb2Abg7b6WqsAvnszWpHjwAajSgWn+5RjdIn+/bgDsAcqxNratMXL08S1TrmgaQAEjCq78uJPTKjIFKqM4g0GitW34RKiTN1pINPHrAoS+iKRGrExk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qv1Sl3Wc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qv1Sl3Wc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE2BC2BCFA
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788931233;
	bh=aYGG9d8T3Utz4WeIxEb2bK8PYShwOJat2VCPw+sQKu8=;
	h=To:Subject:From:Date:From;
	b=Qv1Sl3Wc4Ayd3SPE5FwmGH48qRMKg2dcllXPhaq0E5WDLjj2nc8LbMDGExV2zdYLB
	 gwwbsCd8EMs/pkoEDBz15YEx7sLOwU4LIWuWOIHjBFGKkf5ISH/Va8YWJ96+2r00zF
	 SM648LCDPEdgQ/CKsZDwN6/DApq9zp7CCxvpXYmZdY0NG8+8Hzi060Cpa7YPgS9ebU
	 JYehrrt9skqDvTxY/7aCcVsUdedu6pW9qwmq1J8+RhLBxQVpaO2t/uUhqbYfxUHAJy
	 9cUA7reSrG0xF3Vosfxv3a3/nfqCX+4RSMRffqOUOLnOSJW3Ci2UAtoUGC9I3Rae/z
	 ivX5P7DoLZNOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB2AC79F8C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178893123369.25881.13391045705987800250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d4ff0d2799a9593228594c1773167d09209552678db8c7674c3b6debd1076e0
Date: Wed, 09 Sep 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788931233
