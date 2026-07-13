Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36417EEC3
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 01:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783905514; cv=none; b=IzJcZvA3iJ+vEwoJPhSRDAgZF77BM6ldI+9W6BKAsPix2Sbm9vQb6YURMTO8ziMzhou6Dtic/T7seFH6K+m2Bxg8VrReFEXV2u5/Kh0X/BOfpgsfBIJbhkQulH5Iz9KIYZNKqvtLw0f+4uozQ+hJkj94VogZEeKBeu6QH4wmkMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783905514; c=relaxed/simple;
	bh=yVN5rCsWGC/3Q7PRp3ri6fl2SCmZpCSn/p0ah6VnyuU=;
	h=To:Subject:From:Message-Id:Date; b=inYRINLsHzTmirfrB3WAeOV91QN24Da49g2kiiqqRlO+ktATq6h4GMLLKlebVdAksthVt6mtnf3Skzr2fb6ngpARXALKOzT7qgHHZIZJL482d9jLNLHu1fxgMjjSoGlHrrpxUOOl296ZZTE8/DU0SMHJnrhI8QT/89VPKRDvMG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdf2v5Lt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdf2v5Lt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07F2C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 01:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783905513;
	bh=yVN5rCsWGC/3Q7PRp3ri6fl2SCmZpCSn/p0ah6VnyuU=;
	h=To:Subject:From:Date:From;
	b=jdf2v5Ltk7HuvRVKotnw36ezNUprljRL1JWDaM+tqpLPOa0XwLiqyGIsZPGPytFc3
	 CyDg3F5OTrya30asIAcd0RqHg+1LCHnMv4nRSJqoOdv54+W+M+BAiV3/v0+pY5V/3O
	 fG/1FjRC18cFanBGhAt2batBPRwYthAaVi6ZVm+ldhPntAW3kQGOSQY4bkCc6iyLdl
	 GQQ6WWT0mjc8GtSwLFRbpaIrZr6R4bOhVKer7y5+73M/Ee+8FZ5Bg9OvdJDHJ4QQNA
	 1Vs4IUwzScvx5bLivk8T6ijqDGumXwYqzTrKfsROfdjnvWZC9neMHL+F/IehQUTM+6
	 Cyw+67KR2lAzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9B0C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 01:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178390551368.28955.5814301701441741298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5634b8e25cdc67cbfedbbd575e417cb8987c4d0e8465cbd1599d8d939368a54a
Date: Mon, 13 Jul 2026 01:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783905513
