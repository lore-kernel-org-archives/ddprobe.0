Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB305A79B
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785907234; cv=none; b=gLnpvU/+h5PRAJDhongKcXDBHVCuI6AIJTRKebI7vsiMU8Tdc3lFt97Ra9aiAKMkreADtoGsWc9SdEFIbsPZm7BHWmNkw6wmTcl1ihR6DNGgmVLsqh9EmWzo9d7dYTZo5BnDO3iT6LiTBTWPkK5nblHiT48IS/VbTMW2TEavZk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785907234; c=relaxed/simple;
	bh=KkM7ebm95bW9lRUwIb2wjmGDwoCNllPbSBIW0eQ/Nqs=;
	h=To:Subject:From:Message-Id:Date; b=mky4cPoKYim3IRIg9s1Iu2QUn1bcWI26bSLV6cE6oRY4UL5j++NLF4cQaJTunXGXAvtfaZ5VW3dzYHQrodJm5DeHqbSJ1fYEda83lgemXmLJe6+sGXkQdhX22FVwN+2JTuoAGppzHk184L8Y0BXgLielujB3vE8ZSNqmDPCu3T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HSw8U78e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HSw8U78e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B7DC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785907233;
	bh=KkM7ebm95bW9lRUwIb2wjmGDwoCNllPbSBIW0eQ/Nqs=;
	h=To:Subject:From:Date:From;
	b=HSw8U78eaCYi6clMISp5CMF6McWSwmVZneubX3D2rGMCiQNKFCGwlV/AIsYwdD9y4
	 wZLXlFi2bjlOKnZq8fD0WrzjqhkcHfxtIqKpP3ApbSNeXMj1gb9HqF33w4vKJSz0Px
	 MUIDWvvQHesJJVGdcab/keZj62vkizmqEWz2NIWYYlAsUcqm99WknuRvNU8DTvdAj/
	 d6DRNqBwyKacihDnn1+DpS4xxoGRJw5VJ/nSiszN1ydsrZHTCgXEUqv+SmLptMqHAL
	 ViNAADBZfXGuLSpC5Nu6CYDaAG56bSl/SchwrIlPBTQNqavbuEG1zcnKDXycD7IzNd
	 dYPf10UUfnJ/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF580C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178590723369.21654.5995745237049698542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deb6e445642c72bccc06f8582c278823d0c94112bd70c38f3345f8ba51c5110b
Date: Wed, 05 Aug 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785907233
