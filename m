Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E6242AAF
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753044594; cv=none; b=X/AGmlR2kzY+IOQn8/NWNHj+3MfmUiIb6dpQK0e0vEtNvVeUYRAZIlmB/PqPhd6LnjXdMuwRha+E4FZPerfJyoRovx3cTwfPdb202Lw9aX6EKLKKuSPdRRkRxfER9tniwPpXgkVYCpMJt0cAZGvhd0rC2xV1SkTwMM/y1sEFaqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753044594; c=relaxed/simple;
	bh=e9Qb2Kz2l12OJ/l6MhdC9bWHas5y/P3VIEZoezmBX/8=;
	h=To:Subject:From:Message-Id:Date; b=HvUufnwMQWWYL5qmz0MOVKIpU03+wYHZwG+i2tTtTzW1ntvj8dR0zVC9OUSSxzK5+JreNGcAy9Oqg3FknpIWtPaPK0v2/kjhRS/qKdsYygmp/bYOTB7A18qI6we0/tx24vGtm9vdSJKGODHJwowfMGEMBCUVnkS1e8U5SSRDEfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TIrJ9OLM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TIrJ9OLM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F39C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753044593;
	bh=e9Qb2Kz2l12OJ/l6MhdC9bWHas5y/P3VIEZoezmBX/8=;
	h=To:Subject:From:Date:From;
	b=TIrJ9OLMeXAKv4qFi5s1hom4Gr+YmrZqAFWwxaWIIi1WSUhYGMykSJkpVh4BZk19e
	 OTT247KouEaT1jDnYDf7Jzu5eOhO6ihuzPGrOtxE0EYSUyrpJe/1+U2n2Ya09pLQVW
	 YjZ89ZPnPOFxNIePBkBohLWNckJZBDeKcSTG/wgg5fbsrrduxH0nhZ2NvlTryDLFXW
	 b0kjKiTiK8PIYioaaKQ7L2Ixdp8FW6WZz/A+PqKEm8YTvYIhOQJ+XuOHPUB76XL/4r
	 st12+IPA3qQ2TDVKgK8iRJz64Cjhuq4OBq25bJ2KzUSm+z1C3pBk88JFA1jBrvBR4/
	 oYjMHtlH5Posw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95204C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175304459357.29482.16945148045051639155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd68f53dcbd6bec06d2de499d386e1c9b582362c19ed2c96dbd3c236d7b3057f
Date: Sun, 20 Jul 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753044593
