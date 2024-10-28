Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F635155C97
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730134554; cv=none; b=NLW57yeNQexnvZWNXsbEEcf7i9yERD+FolbE1KsRv/HpF+lxiBLFW+dVJEDGjyfeHBPqvdXgcl7gJ5f/g5FgzgImLy28hu3Zzq11sGTyVZvVljRvlEb4IuJBgp35vwN6TWGgGvJUf/H8bizJddQDa8HUyP3csJh5Iycx5ugtzCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730134554; c=relaxed/simple;
	bh=VapHHdT9EeR3qkDEBZMCcCQ58V9/TgX4a7UCVL9izqk=;
	h=To:Subject:From:Message-Id:Date; b=X2BFZOG6Lc5mfxvx9arH2HJicaYsGQL8/HYktulx/74Z9OYg6JyoyG7mIU3NkDwlRKlZj6uSP55M8jNX99ZeukiayBr3J/bAewvijdUUOPOrcg+KtBv89h46y/6WSl8VCHHgze/7UMJsJCPDQYQyOcBJcNjMy4uchFZ4UG9x2Gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVeCqshW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVeCqshW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4A61C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730134553;
	bh=VapHHdT9EeR3qkDEBZMCcCQ58V9/TgX4a7UCVL9izqk=;
	h=To:Subject:From:Date:From;
	b=BVeCqshWP2ZFoouCGVFRyVomU4+Ywf7mJTcQpOq7zJfvwtsAnnpd3aIxKFn7EKIeS
	 j9DTV7fqj2ikHPvVGt6WHXyOSGA4YxY9e7CeDcCaMgP5eyEK1uEqAY+dC/FjKHICH4
	 So98NM9X+z7eVdl1QKx00NqVe9MaIDylbsU7jJvnyakxE3Ong1/7ei42h3RK2WjKY7
	 N/fSvf4JcNUV/Fvi/YzLDIszmxbM+nXDpBDT7vj6ks0CLHygWmEgZ9ouAT8oI8VZXg
	 uXNB1PBuDvfqDaeFN7cRP9DLiMW1LTjTXDOKPN0gX1Olj3QEcTgtpoKvKgSpcwoUjZ
	 fBNiQzV6wXT0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4AC7D339A0
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173013455366.29285.925939270371382285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92d4803bb2a0042fb8c7d5ebdcc54be113dfcf457be25ae0bfc2c8a2a0f29b8b
Date: Mon, 28 Oct 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730134553
