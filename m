Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346E81C6B5
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724267754; cv=none; b=pmzirGfisuKsRwIxLTxp3KelbiTninhpQX8x5M4qdwbINs70KRlbbp+KWxTN8GYbfTHg7ROjGSYfszqfD+3Zmmr4b2FT9ty+PrxLgP9LXqoIOIm5H9CCRWpsDUHKgdvD77U6+83+UUuclR4tn4Gub4p//0cCxy/lDCWf/sfWT7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724267754; c=relaxed/simple;
	bh=rCScVqoPp/+gFfc+5Vl+ErgOlT2p6w/pc8Mv2KMF/xE=;
	h=To:Subject:From:Message-Id:Date; b=CfkICyusxthaKywxGqLBc4/fcyWWMnaNqzJOa3957hEonJqtQlQN74D1MSYOlHXOaytJombhBFd+tcko7iv3YJJkzWFqeSNsxDAjvs07VUMndlRKGTSgH1ygvrAzSIYATDwjqATA4W273p+2Mw5biDTisZEq8/ZgJmRspub4r9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hhEDFqkA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hhEDFqkA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92ADC32781
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724267753;
	bh=rCScVqoPp/+gFfc+5Vl+ErgOlT2p6w/pc8Mv2KMF/xE=;
	h=To:Subject:From:Date:From;
	b=hhEDFqkACQkQS0r+x8D2jPrRHyPKDpPTdSPSqeVJATEeNLrjCRZRVChBUdjEIG7DF
	 zxHAiHvF3bQbX0H2E3DGg6NXM718bSxtaKPfremDysM0fAjR/2Ga70Q8r2tMriuLYM
	 16MxMsXc4wQiV2ZRTMiI5G38lgJhIVEw2DhBkpck1z75wISdtwm6NbN91zun/vQKvA
	 QHAZNFH6oGUyqqkRoPkG115i+TunrZZ5fx+ZwhCmnKVTOTGv7o5VYRyq0zQ//dbmxi
	 m/9LoNiJz6MC8cJcG/NNrCJTDd41VXFzB7oNunPZXX67fkr9HB4uW2E88FjT/d76jl
	 ux3036I/BWR2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9381EC52D6F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172426775359.8720.18161738863153611154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e10875263f945d7151f500801426a8b83ddde8f1bc9286d4dd8185e48cf8dd6b
Date: Wed, 21 Aug 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724267753
