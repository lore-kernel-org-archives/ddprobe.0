Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA3A356900
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756303194; cv=none; b=tw8Zn3BnzLpSalyq4f1UkmG8Bs2XrBNujl16ib/c68Wjg922nLdQGD+Wma/oH8Zt/CQUyvZNrvCbFaB6a+wHQIz3BSV+MfY30b4lbquTur9MTYK7beV5IWKypNymZ0RanLXbhf9yGGt58KijfE1b6/+HQo8A/LyK8kDQLdMgnxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756303194; c=relaxed/simple;
	bh=lDiJV/pc08uYInR3z4dieC2N+eIVwbfl0rmHgS1YAe0=;
	h=To:Subject:From:Message-Id:Date; b=fSL4/VbgDW6xfiN9XAlCTlzOq6yOU/RrJcUuZowKSg22ZPcvDdRxL4CSq8p/NM8buMYBwV8XT6NuJ1J4n5HebxrtO09BgVBb4Cbm7MQkfKh46JlB6KuuzdVrxPWKR9XQl1uF1PuerbrRTSJRMBCB67ALbr78QoyHVjxqhE4kB3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOD2Doso; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOD2Doso"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE8BC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756303193;
	bh=lDiJV/pc08uYInR3z4dieC2N+eIVwbfl0rmHgS1YAe0=;
	h=To:Subject:From:Date:From;
	b=pOD2Doso/ofkNrFOe0j43ZIjdP1fXGkX/1pKPuZ7beirxXNxx3NSMdDLng2ClZNor
	 EanCqjS/N+Yg36AWb9IEGEDoprJ8aTfPUkikkuRyGlZWYwpcCDxHaBgTtLmDG1BO/T
	 Zfpdc/zJn9JZ1CrkQ77R+DnDaTTMByvUMsKFC97jCtyhHg/PaY0XudHYODg+HNwd+w
	 pCEQdsXwEkNEdsEz7SNHo72B07kKaBrygdH4kDKR30T/IkssoY03HFT2jnZc7hGiGU
	 ovCa+myuvu90aMxeHg4TbjZxCLbEkW+blLLCI7b3oHHiQgsFxP4XQF5HlT5+t+FWPd
	 E1Ctwq5Ay/lLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE61CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175630319358.9322.13619269543812871509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df4e8ffdbd81c5217aa831d5395ba75fec3cdf1e60c72fd1efcaa21806774609
Date: Wed, 27 Aug 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756303193
