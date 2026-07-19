Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5143922B594
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 15:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784475514; cv=none; b=u7zWf0V2sX4P5Sc7LQgdzjkSTLhhyajvSvg77svi5l85mXdFAvXe4m1rXtHZoM0uZ8z213ZHVvgfzL1LvrSjb9242qRNOtY147HTi62B2tJoxIE/Z5/muX9DCyVNU21h14cwvBnuj6NqsFFEVYxwGR+dVE9k51+jS0lKOZQEjyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784475514; c=relaxed/simple;
	bh=SaSMt+izwONIvk32CXSSmx1unB78Lj+p8sIL5A9rdVA=;
	h=To:Subject:From:Message-Id:Date; b=c9q8R5N5l9i6AQzGFdntWAvqOkTmcRXpXgM8KFcLUApCGMWf7mRyC1hwWjQzO28pIxaCr4Cz3V1opljwLCQuajy+8Zp1BIr/B69fYb2Nu+OdjZ4u1ku34UG7P9/tI8x+FQt2bONPlZGrwKjeoYIWGtf514xMYl11h18Ht61l9kU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKLeY+lV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKLeY+lV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAD3C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 15:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784475513;
	bh=SaSMt+izwONIvk32CXSSmx1unB78Lj+p8sIL5A9rdVA=;
	h=To:Subject:From:Date:From;
	b=MKLeY+lVXH1HYI8v7DmABPmXoYp//HsK5FlqM2QH8WIYmUFmYeHSTJTTvBhE98ngP
	 bCsoQawighZs37Sz3wT3gSGbIkIFl5ywZ2bHrHq6gNIp3hWBzJTh65Pz0UoG25ceVj
	 3cS0tvvII3f30TBOgqc959TFeaI9h6bqbCFruYeAr2nhLg+ADe0JuPLVxTvsctgFAc
	 2F0xSIM25gu9FqWTw01G+11stpA1xM2/8L4/G5T4hizRhul6NaRu9HhYHXW1r91mrF
	 oPAW7nUoi/dL2X4agFN4++TARCUwEyYmNKK7+Psc9Q9LRGazZZpwLvnGdWpt00fLB2
	 8zO7TuJeNVt/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB29EC4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 15:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178447551368.2781.14118028809667197509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd33021e61ec296bd995a7ecb54642d14eb8688a390a9bdda0d429081dadfb5c
Date: Sun, 19 Jul 2026 15:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784475513
