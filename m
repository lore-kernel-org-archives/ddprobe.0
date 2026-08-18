Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A0F47CA80
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 16:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787069434; cv=none; b=kXErf+Y7mEtArJmj+fuCC6Hty6MPtcJWDo3CGvS8pjMcxEXtDD3opc8jGD88jVobOhThxmkLVodDuE0ghkvAN7jt/7K2Wr4ndiPb8h+i1YFgnh6t4ot6MVQ2XXXYUryqBanb+dqnRj12Td0e3spyH3gQ1DAhPHS/PwsHqBKbOds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787069434; c=relaxed/simple;
	bh=Zx3eQPkXYFSo96aUfFZhI0WmbziN6sTftCv/OZgBP24=;
	h=To:Subject:From:Message-Id:Date; b=jQBax4pyxNWdRAhYIze2w2ENvmFMMzRl1b7fYjNIMtb5O24c+4fBuP9xbfORvQqaUxxPf3qBLxlLFWCltlVUay/mKbP/9oYhydWpYPj8bpIErJp3UqjJVHJrVvhQOZcYxgHfV5XGr0VPrpGwJj/HHEHORyzR9/kz28eTmO0yQjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTCSHDsm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTCSHDsm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3068C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787069433;
	bh=Zx3eQPkXYFSo96aUfFZhI0WmbziN6sTftCv/OZgBP24=;
	h=To:Subject:From:Date:From;
	b=BTCSHDsmCghOiWzn3WsF+5KzZifA7RuCyvXhAvmEHfIB1OvT+JWzN7kdVd8I7uDBe
	 hDQYch0j/fNk3gxQGLysijMVLRm9t8LxSZeugsgB3xgp68j5wxBg/CxCw/R9ZX90kd
	 E2JZjVfBjyERFt4KGfnqkXgtA063MEwgG7NF2vg3et7ssgFzH13r/ATPfgzxCNyDrR
	 T7/ZKEpJ4FBrTmmOY0HYAzL7amoLgOB12UeUeDO0TA59ucbV2Pm+FM6RNi6E0jzuFB
	 9xDv47Qtse9+lYKbGCLHs+RnR32MhQARxxInKR/gdH62uBWSJiWGrdlnQW6m5r1+lm
	 h4DmqMAnJ72nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA02EC5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178706943368.4551.17406281326980367884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5479b8ac2e7513ef7fbbf49c1633b3c7e679beb272e03a9843c1a2eb9ca3aec9
Date: Tue, 18 Aug 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787069433
