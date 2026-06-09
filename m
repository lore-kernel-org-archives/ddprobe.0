Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48AA233291F
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 20:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781036134; cv=none; b=L2+xnmEF61ss/hVd6gPKXDcQ3iiYqtd89wv8kzVN+/FBD2UPGo0kxk3BG6+1L86f5rlkpT6o78VlAWmiBE8YM+ZSQh/kK3OXaZVNH4Le98ZVLd1YOlj1j5rVD47kyC4qbT7h6AhY1PkmNR6YxMaiFjzXr9NHPJAUG7PIJy0CbQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781036134; c=relaxed/simple;
	bh=RxAKnSTDcBNHeBU7LfqP7bPb/T3A9lVH3xA3gJB3vqU=;
	h=To:Subject:From:Message-Id:Date; b=LYpv5SoXsS24pkT5tAOmYXZJfOSgtLwFu2Zk9e37eTnzIXWyDgV3kPGSELd68dqNTloObeRueXW70MDUClFvisyFxFzjhiCU4z4ojk102EUWFD5E6qqTflj1BxL+6kMal9s/pWPYfR6hmGYQE39s8zye8FbomrYCsLameJdgkto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HbLH34Xt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HbLH34Xt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B04C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 20:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781036133;
	bh=RxAKnSTDcBNHeBU7LfqP7bPb/T3A9lVH3xA3gJB3vqU=;
	h=To:Subject:From:Date:From;
	b=HbLH34XtWSYOi9B3jrRMS4LrONEUcRdvo7y5KK0dSbvOCvrmWdcbSB1KdBN6mR5zz
	 TXqy/9jjor1sx5Oa0Vix8Q8N5YhvBFKspXb1QzJLq8BsDtABr9vGPtO6eJpj8R/lsy
	 2asOKCWZU6V3wFp3+vb2gHLdLp6RVWGKpuLn7iD14Y2zce8k2aSqtAVMFsSlQGPaa3
	 z9skAExSaWVodZJH/6U/HLsQ4Twymqy9RXvqggzBBFgyuDYBZKYyAvUmQ5VgkcWdmn
	 huv2Km6mHB8p3wSmhkile+E9lC1YX9B3A3XWaWgy66+0NGvBNrESma0mkM82rlptTE
	 5uIj3ympHatQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F5ACD8CA8
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 20:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178103613370.28065.7099706981168871676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7255ae034f79c35f3d09b4d32e5ee86deb57b92115ea9821096424212fa121a6
Date: Tue, 09 Jun 2026 20:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781036133
