Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350E24CCDEC
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788203434; cv=none; b=ig1e6EN4KrTabNGfzauFEgJaXWgNSjdpg1I+52S3JPeNNNGpQn4BdDi1Abtf2aMlN5It57PHk1aC55lqrBQmqPz7DTxPEZSeVlX31swmTjBK13afxRLRKgWW+3A02Yai6pfrXc7CTZKAmXrPMaFyZRm3AAlv6QU/BWMSyQ6dFrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788203434; c=relaxed/simple;
	bh=0nk8OMPCAEDD8uwAKnvEunnIxVSAhRJ54JR8dWBavtg=;
	h=To:Subject:From:Message-Id:Date; b=XTXH5j1wJYtFriiGKNZYdfbuz6GWV68rfU4tbzesJQnybXGoYNjjVAvzeStRl6TOQb+GZsMO2bbOiXOXUewY0L2lNXCn8aYR6F+xjipf+osgI4c8MIgOdr0Ncx4yM6/1emM+N0IjM8878Bf377MudX9mEN/cLZaFnu4DLLdZMBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3KuB3Hu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3KuB3Hu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC18C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788203433;
	bh=0nk8OMPCAEDD8uwAKnvEunnIxVSAhRJ54JR8dWBavtg=;
	h=To:Subject:From:Date:From;
	b=C3KuB3HulC1rrXwsyFiGVWDcyb0v1GvupASkVXtTN0V8dhBFATEDldtlVC5b871Dp
	 Zm3Jn+CEwPSICgh6dnIck2cR2Q2Tidpx6TJLhfCbRv6TszLyfC4Emqjwl+7ZQCo1BX
	 iPygBznD71xJK13VwP7jrrDd9rbXuGE4adtl+6V/ngoyFemH+6/+410OZATvBe9Bht
	 kuCALE6gul8pEQ+T6BFtAk69wdgS3m55czwhrVCmV7tTGap8WvV8mILZIbj3EpmqQ6
	 C/SpBR/zKgEDNvgexWPRqOGhPPEcaeMXq5Z8yz18/NV5cnlhG2DqtDgjI1RJj35Rao
	 JhbchWeU2TzNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9916C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178820343368.13210.10074532252890061902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b6bfd05899b79a84be1a08d28964f9a618e97023f3f7d79eccebbc8adb4d5c
Date: Mon, 31 Aug 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788203433
