Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D88A27466
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749658794; cv=none; b=fvWALsWie96V7yALI120kMfTEFJ4yidaH8hC+yQ9vdy0ro6HvxSEcUBh3v1Pc0grRpVmcJvAJA3ig/75Cf0NiX4py7jzIMPpo3qIr4MNqi+UuJc4H2cXtD/OpwLM7Ca78rf60gdpUP0BXYB+hOamEqUZKnhzzZ1jxe+D902HDCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749658794; c=relaxed/simple;
	bh=SwwgNyTufn9TgHkuLvdyu1SitvUHvq7ny7/T0CNpFEs=;
	h=To:Subject:From:Message-Id:Date; b=Ib5wbtGzmMucaqRCe25vZ/VOrF3D1P9ErKTKalAabH6pSfeTqvxneywwiYVjjDYNm3Fo3IVYHKEW95/jwneb5XuBdrarOO1KfoWnB4+s7ZTUPSYRbo2h4IWQ5M1UQ1Q+9MwDBqsu3xB3EqHKaz2/KO44zmqsFT3HQhm/FXfA3eI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iiMtKpi1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iiMtKpi1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12A5C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749658793;
	bh=SwwgNyTufn9TgHkuLvdyu1SitvUHvq7ny7/T0CNpFEs=;
	h=To:Subject:From:Date:From;
	b=iiMtKpi1ZUy2LQH4zTO5ZflKrmPT+VxNhBmviBLOECKfXhn2ty+oPh7du4nWRa2/1
	 sSeUA1P7eSJVm9K5oA91l1mUsjf1rmIHeQRAuWtp9bQElUXA8zBF+M+lvs/gdo4w48
	 ElO68c7MuM3MCB02Qcq9bHNR7SxLUsN8TbyBgMj9DvblBwWF0ChERQ4Wh2IZk+crlY
	 LrtIBfDoG+l5h0iGDr93XjNDfg0tUy0NZyCIJYcGGRnb9kTM2Ht2rTTi8EOlhbpRoO
	 nAGndEmxEcrFQ3Ye5RpXtkt7nLv1a6av1Ya2ZNJaE+zQHuyyjcB/shB4CrgG/whRC3
	 aN0dAYBLtEG9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97729C71137
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174965879361.31482.15249155917450600432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3794b25e540946a05371ff106171ae5110cb10305c48927fc9c0d41868dbd74f
Date: Wed, 11 Jun 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749658793
