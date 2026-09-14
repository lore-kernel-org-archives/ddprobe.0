Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32EB43F825B
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 08:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789373434; cv=none; b=F/5qDqKeFlc5ktILwLMuSWi3M3msfUiRaln0O7bgUrcwzI5kUVEglgDXonqkqrYiiNUm/5sBSXttDvka0gs4rhw9hZLUE6JdTS59/h+2Qtaz6p/cioHD7gp8yJ1c3/GFWGeu/cLlWog/JH4TF+J2n9u/UUMT45ZVCYIToEMUdTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789373434; c=relaxed/simple;
	bh=R1UkzrfeXuOK9ktEVYPOLkcm6RdlOKBJ39Lm8qUNAfo=;
	h=To:Subject:From:Message-Id:Date; b=VtboUITeaYSfRw7GjP9132i4aTg7/1aIxryKuq4xmK8TbNI33DGXBt2wsye++kT/ugLK8ZQmcUaYE0+8p1ONigrQbsaD+x/IbR7qQ2lSdPuVyzZT1lAyDhAynzuRa/+ftHAWeQP7sIcOs1Y+8qXaz+4KVGlgsS+vZYFalNlzJ8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODZvZJPQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODZvZJPQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBED6C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789373433;
	bh=R1UkzrfeXuOK9ktEVYPOLkcm6RdlOKBJ39Lm8qUNAfo=;
	h=To:Subject:From:Date:From;
	b=ODZvZJPQKiW95V4D29eMUZA2MckitIZdgqOPwUVgtlid7XGwbGaHDW1iZ0UH2hiCw
	 8pAMCxfvZjBSHssnZ84NlXGp6te+Tl+vvd3E8izDZLMnzSDXnM/LXQdskotffhZksi
	 KAUHjDQmn6nxuwYKPvbAfXrEvlArSDUju4aAxN0T5rgfhGcs2PJ7F34KQQ7Ivb49WX
	 lCZdnFEMOyhtxmLeT0pGlgTW6l4zgHB1Bhux6S3b/pIPmrI45mXnIDz22+7GoCILPY
	 9IRyYOMVSXbMy9mv2tAAZfG81cAYj9VB40OSfewSEfkCoMflU0zm1Ld91Qj1sv3I5e
	 N1G9ijwdP3ODw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B91D6C88E6C
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178937343374.5283.4280890692535098150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df62e0465b2745ff2d6debda96dfe148ef0973371e6ead2d00fd15b880deb86c
Date: Mon, 14 Sep 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789373433
