Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224511E32DB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754827794; cv=none; b=Lus4xSPJrgYM29EqYqacJU0LoucXUb/ZH19Op2kNR08yiffNzrr/9oowYEL6CldjCKXwoJBbrWoRXw8954vD1Lqm3So+O2bHbN/lMaXR/GUMDRYiX4/bQ3uB7Xx1H/nuoELiCY+cRMqjG+f3r36JannELc2NOg124feIJ7KClPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754827794; c=relaxed/simple;
	bh=LBM3eHzn2esaaEeVyW/cZ3A+njvZEwAJ5/GS0k2Z/Yo=;
	h=To:Subject:From:Message-Id:Date; b=UPEgdLCUwJbJ07mRspN8XnvtLrrd5KhuTcF1XkFiHHsyIFjRnmTFXWVueghe1OktN5d140/mKOoWLnaOQsz2K7yGzYl7h05HnYQ1AiaSTUHpWJyFkbShP1BrUgMg83zd4c1+dEHhUi2dHC0RY7zIltQTh4DcoEdqesXn60o3Tn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N2mehoeR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2mehoeR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D86C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754827793;
	bh=LBM3eHzn2esaaEeVyW/cZ3A+njvZEwAJ5/GS0k2Z/Yo=;
	h=To:Subject:From:Date:From;
	b=N2mehoeR+x3D8eU3KrGDhv5uL0pNGuf87HPjFf9YItI8GbkrCH3QlrnkhRdsAPsFM
	 rouGnRxs4Chkw3WeFAttc9I9xeroyM7hKdMBDqBMwwicDkN/YdLH1fjCozFI0nm3y0
	 uL2266KExSNKisQBswzVKwVh8zmljnRLcxHlKRWYadhjVevbWfC1QH2P5cqgyeIS1P
	 MR9eHbxDQEczk3R8GPG/GBSXYKI0ke9QxxyF67WuC8dOrqfcSqSVYcz2BWJWw3KGJ8
	 EyYlq84dtVSGwnNlPOMpyFd3b3sek3DslAdS5/WaU3sX1MawNucz3Ebm7AOswjYQ2G
	 pFEvEpR9LUkfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908B4C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175482779357.10556.6859310529688190099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaa8b34a38273c634ba42e8152760a30863f6635bb92032fe239fb45f445d047
Date: Sun, 10 Aug 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754827793
