Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292C470830
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749401395; cv=none; b=TUCo4zSF6MdyQjkEZvBIsiONkHzWZ+yiMdvyo3nI4Vd/G2KgV1+QBNHnACjaBFc6Tm2BF8Svd/LhHJWLEwQK5I8DxAvjQ1Pp64k6h2iliXFv3QSDTiY2R/LpGSLJHHJuMzhT5Na8YvHpAl4ZkwSryNXLUCRmLp8trHu4bSfRWCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749401395; c=relaxed/simple;
	bh=7KOsslRD4gkObRCoxk9wMV5gO7sqnkv5gqb17a7GPDc=;
	h=To:Subject:From:Message-Id:Date; b=mlKS+kf/zVLEKA8Bq411y0rd2FiIR6IAcITUv+k/C2zr8oW00TGN4pE488JuKYIEZy3ASyeER94D1yyhaX5nQNu7s0fh2CViE6awK9ezwEEDu776i8KZPlhrnkzcrKKe5o6/Ux6HIXovMqB/xMsVLITkpfVKhvGMRC6MKdMQmAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbsWDVZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbsWDVZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B08C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749401393;
	bh=7KOsslRD4gkObRCoxk9wMV5gO7sqnkv5gqb17a7GPDc=;
	h=To:Subject:From:Date:From;
	b=DbsWDVZv4aFw1W63iSUFzLuHAOJlJdaHnwSGMEUIR6saLagcaMcFGERnNCFohmrhG
	 8i4SeD1DaDrtaPZ+l4MSjdKxO4ccrAlsme1258/vSIJe17Q6O1tjt6Hga8ARYCIWvG
	 alM6WkuqOLzgojEPwvBvKbXewX/q2uojlKzy76f2dyt1FEglxulr6k2pwGTdMJz/xl
	 m6sH4zlBw9CwFv+L0qoleiFg5qcs+snpl3h4gBP1bVfUpnKnK14eUQpIy3tSSxW3EC
	 6nO71kxdMd21OwUIiHrW8Ea+MJYs3fIESSJVplTfJf1k/c60rPl+r6XqvMq8I6uP/m
	 4mb3FjcteivvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA5DC5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174940139358.2588.687833151512206129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a252fccc69966a8056a1ebe1346b41cf041f129a592f3a68f93883ae8edc28e
Date: Sun, 08 Jun 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749401393
