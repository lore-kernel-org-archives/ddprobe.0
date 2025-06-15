Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6BE27D784
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750015794; cv=none; b=h2eNzZVkuj5dy8C+qXKn0VXcSk8T0/NzAR2MqPSflYJWKKLD74Px/VFYhF6Zfzy8w2Hu3tSiIRSVLZNvDjLqzJ++rFeOnhSgy4XcwECh8gbqYzZbyai6lZ7IA5dXos5J+SPvydPyy90tXphHh9QxA699qdM2mdTiT2/hZWRcFBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750015794; c=relaxed/simple;
	bh=0nZMyOAW8Q2CGHRQqcwGUjAmGJXweTlULKXpQS258co=;
	h=To:Subject:From:Message-Id:Date; b=HUszv6eknT327RZEppvjOJenruPJNdZ3nb7O0MPV6KUliyXnJXE2UNJzHDLg3dlXC8nuNl7EmZcMdyPw0+gEfoTzOf/1ONRQjkPLSFTiaStNkAmvWMZT60v4Tf9kwdcBvTPzSvReg2xr/ODCWEo/FPPnLN0XjXLvmntZULAwmaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dseCMCV0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dseCMCV0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1D1C4CEEE
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750015793;
	bh=0nZMyOAW8Q2CGHRQqcwGUjAmGJXweTlULKXpQS258co=;
	h=To:Subject:From:Date:From;
	b=dseCMCV0A91QyOzfJ727uDFjWJPoq4drdsN9kgjDnfzgT85vXzS2yxiQQ4FozHLLz
	 yycW7vmjCK4mNAM+hge+bZaWnTKLSgNqicz2JkpjP9PyheiIu6wXLSIc6LQ/IuFMJn
	 L5X9oeqI6PUfjej96H5DKgfR1SvmBQ/fRDKkxFnJULNnA5br5uCMuZwSQGmJS20x52
	 tmgBENpg1EQI2a9Eo6ipr4QOjoLtODxIlOy3/Lmq7ELKDm4wSwxpIVo70OJ2eM5GdU
	 2x2qGZhR1aahX1fS3ivolvqZtKESyWRbtbsAXzKH1OmkCORFd9TMcCbZGwMPm1WnEf
	 qch/KLBDiqrnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959BAC71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175001579357.10733.9491753001382548964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67be218e892dd8700231f9422c704c3fe234af40f61af8c68991df8c38e6f202
Date: Sun, 15 Jun 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750015793
