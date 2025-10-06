Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B73B79EA
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759752594; cv=none; b=BDOYLXcnYL7yx6Yh0HrWymLbPzrJ/GS4cCjg/HYClfWq0ZCc4QiNZdl57mPCvBR+MhpqM3Pa0dHGv255fz3M4FR8AD8ehN9c8nKGc02jRQEdSCq9ouYzlRzJ6bfSAgy/6RTmCd6r2Mjt8lVS18FlPmB1Qty3hfOyrHIxbRz80i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759752594; c=relaxed/simple;
	bh=NaBgLMuC4Ss69OGxiT3N9dELKOcDG01M75M9qW3hbqE=;
	h=To:Subject:From:Message-Id:Date; b=j34GCXrlXloYdS1FLRedTS3bl1kZDeoxkz8iLikMsAYedTKc3XqGUFPyu3zB0/c9BcoMk8Qq/LjFbtScRQi56N+49vgyzcQNRCSMF02ff+skNwCrTtRYSq0SkB4hD2bEtecAVwOowU4Qo9jv9ICuTJH6hlXNVcHcdX5AJd0RHAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=anxIW9Ca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="anxIW9Ca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13D3C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759752593;
	bh=NaBgLMuC4Ss69OGxiT3N9dELKOcDG01M75M9qW3hbqE=;
	h=To:Subject:From:Date:From;
	b=anxIW9CapFE0bvYZlTtal2r5xS3futvtFxgNSwHGp7jqANcBRmfEWjjc+0ZJG4zeG
	 HcXJO3JO/CqGLJVWdGi12BYQdtU7toh8KB45Lh3EgLv+LKw6jegEthwTcy18IG10hx
	 efAesQTkCfORzJEObCIuSFqGNDMoMjejSbjr6dWdolFYy8Kko2781XYpET1vfewxnr
	 8VYlKi1MBkLXnjoj1PLy0xE7NPjT8ISwsWCWeQOgrSB7IxTR910uCKwFqqPXGhmiba
	 PPhNP19ReL9pQUuCQIEmhoZNZTgHED+1LItWxE7/t/qcL4nzUq36ozWEi5USsc4roZ
	 noJm7oML9KIKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F227CCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175975259357.4405.5583779720679693754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92f77582e6e2d8070b9f906b5ad448410e30d6de29585df63270a6c6e11ffe8f
Date: Mon, 06 Oct 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759752593
