Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482A6747F
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 02:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741834134; cv=none; b=p8RewWWl2FG4xMzUytZ9Y/Gwhw5sonLz3ZMFkqbFj4sSG53cFdbXPNlNsprhY/IWl8BbzCaKEaBhkjfbsM4y+oluvKhJ+TPMrZ9iGcewx4Vhq0Mx9fzKSVQ38tLK2SwM7GjktsvIS75pfETyw8Zep1Zs1nLxRjvF/PxScv7PV50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741834134; c=relaxed/simple;
	bh=N479THzEU5PA88Kc3xInZQ6PiljwnTqifr9TbmjjBcA=;
	h=To:Subject:From:Message-Id:Date; b=Ovx5UoYCIPvBib4jJYNrqvon8gpPTQKmTg/MqiJxTNPcsN16zfn6AlfkNbKRSfMWWXg/6A5zs8gHv+NsNVp+3qbyETKlCHVNaVdMcU5DSrVindef0yW0/BKLyuv3RGnx3OPBeRVXbeXV87wM/t2OetJ9MtowwPKL9kvXkbQuxcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qdogJ3nk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qdogJ3nk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B46E9C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 02:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741834133;
	bh=N479THzEU5PA88Kc3xInZQ6PiljwnTqifr9TbmjjBcA=;
	h=To:Subject:From:Date:From;
	b=qdogJ3nk0yq2mFZDEHYFgEswscugori++w7N2oeHj6ySU9fZmGxJx9gYitwrBrMc1
	 6Wp19OtRLZMBRGEoa7moxHDEnT9pkytkyc/ODXANCnJJ2tYWCiU5TmjtbbKBeE0OPl
	 qyIO2kq3sRT/fhhHNE/+20yIwXfJg3GxHa07gEFIh7czUHV2bx5xjND6xOAa/10zrZ
	 eVSAct4Iq1d8yDMY7XZ8B3M1t3SkRUt0ojrub6Z8LbnBgwt0yHmextCIh71iNLMO0k
	 K00Ydkj8LXK7WVWZKjHG+BTsWcffMmz7ixtb502in3dtHgBthMYg5tIkOJ8LdBOouP
	 EfukKjyBj7ENQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98666C28B2F
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 02:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174183413361.14584.5366286053478867099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8c623a7d81ad723ba06c2204b150771ddd0aa52ab84d7c3d84787c486b7ed08
Date: Thu, 13 Mar 2025 02:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741834133
