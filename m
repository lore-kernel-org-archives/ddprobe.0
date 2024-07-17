Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DAC738FB9
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 09:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721207123; cv=none; b=qkiq35Vy3bUysjht5cochQDH110BsBkQzFTof6z4qDQweBaP5Cu2T23j5+2IsCqA9X8Lz9Z1ruQTKb0MuclcVZrPKBAPdOxH3fNL5XyrcbtfU2iqVtA4zz8gWD6EIhFoH6WVXvOupT2HzUUlcT23hmzwGA9cE3frTp0rKK9SH7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721207123; c=relaxed/simple;
	bh=H0MUKNPmJb40OLMt0vBkUCJ59XGFYjiQ75ezbUbq/ao=;
	h=To:Subject:From:Message-Id:Date; b=pEryJn74HF2d8vWio1MMqbAOE5z5dXn7GGayqUG3yDZM86Xv8Jd5TmyYgItiJac6PmbDi3X0LqXJ8RtlTYLPmJ5s3Cz4tfLIF2j/iZ4qQ+S1j5TpuggCvwoKB8HxDi8UA1WS1hHZaeF3UVtMGvdNmpC+umrXLVWolvcKCgWvL10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3ZbDDgL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3ZbDDgL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2691C4AF09
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 09:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721207123;
	bh=H0MUKNPmJb40OLMt0vBkUCJ59XGFYjiQ75ezbUbq/ao=;
	h=To:Subject:From:Date:From;
	b=o3ZbDDgLSD3NGoG8d5JoXTExc9i6B+8eEdvzo8rbni6dQlrtlSGOKhx0i1N827ZLn
	 6pTWztqOd0F8Ah0uW/EzofpcLXnym0ADLjOsgxZ6QRu8bQAFiPMaC9/6F27W89szBe
	 Vrn+uLo11eohKEWBDY1Xzm1HJcv+UOi3VC0T5L4jemyc6MmyBB8QMyK98K+vFN0DOn
	 tl5eYCMQ+AQUWQ/TtwGX22mHfLtn95+u53RNH6y6q9RcYGb/+yjYuWQadQwpXZZ2Rl
	 OHfVXHYm/HySLIoP5FYWlHpSFZqzKUm0MM3GvDXgOiCDhYo9pZ5gsEsePsZcDqzFWA
	 9GbgSU2p31Nrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD6C2C3DA4B
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 09:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172120712284.26104.8611176049087455290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae779e9c1f32154d66e86ba38e829a0992a089adcdbf8545ede97d3bd3a3bd87
Date: Wed, 17 Jul 2024 09:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721207122
