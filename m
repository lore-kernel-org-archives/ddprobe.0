Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44908146587
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 09:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719306203; cv=none; b=a2FFPQv1afK5UI16WtmclY3tb4BjKC+Q2L1iTB0rOVLAS0WTH4vUql4MAm1fwPFvIK2Hb878RgRh96upWgYA3+8jDzvHKAfZLoPTSUAFDbSlMiz7lanlmKSKVq/0p+wNYTpH6Nnc7We59T7Y70sDdAHQIItRNF5rzP3kLvEIEvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719306203; c=relaxed/simple;
	bh=urFF0HxLQs1uZUoBXEDLIWuEj30x+iZkZmninEjQoSU=;
	h=To:Subject:From:Message-Id:Date; b=HO9AQ4pPfXx/h+HfBgMnivl6Me0odytnZYW42xXaQsa42iRLxZusHHK2S7u4qQO0s2xz0CAZnSZwXHfJ4RymFvoUn8lesfwMBN90ncL+Tf7bNRGvoZ7nE3BU4hUnlXXAlS3057WlfWSUBD6B56Xrn1ijaOxlVxDkvcFKrZLTArU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eej+Q0jR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eej+Q0jR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D356AC32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 09:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719306202;
	bh=urFF0HxLQs1uZUoBXEDLIWuEj30x+iZkZmninEjQoSU=;
	h=To:Subject:From:Date:From;
	b=Eej+Q0jRxHWzN2T4Ni7SKqy67RGD+dIWCf2ItiSZXqqRL5o4he31julsiL4XAQLoF
	 PWhQ0Nxhx0zDFzlKdFEzLEb434LKLXOAwOUW1tT6yHL5OXQCrNcItKpdKKlwLgjFET
	 PtfHiRuznilpxZ7iMNpEqZ7SSiS926wwkcDLNzB8gamzKSl/edj6z0hp51PZ6WWttD
	 i1jQL3pU9ua1tEkc4sFIt/sfNg3R/FGqFgotUxEI24SaX27oJHpQGzeMPYJdbsGPKw
	 K1o1P6kUN5DJcANntdFnGCL2Oeug3KZiInq2Wrn6QCQMRfr03ZHGOHzRgPtPV5lTKZ
	 4Ew2TgkCbJ24A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB116C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 09:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171930620275.24953.10907409487749789564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24a7fe28812d68e98aaacff985c2a26cedb7323a945e9f1e74aab31d8742fff1
Date: Tue, 25 Jun 2024 09:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719306202
