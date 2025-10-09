Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C03CD2FB614
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760025593; cv=none; b=mi0EBXljZi1UfnjJCx32IuDYX5wT5p6LR5TQH8eyU4XsZdyWO5D7saxopHXAkq9LXBRVebyvSHORvwy+P2jwxddvyS+ZCuLOwTsxXt3aEiAKOs5UT55T1wwRh4T2udByB4BC0r3LxHylOqVAIliMip35LGM0zVAaz7/TDqnQ73c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760025593; c=relaxed/simple;
	bh=83XHESt5NoTjPueyzjRk3uqo2vqaNStKDohGFOkcrtc=;
	h=To:Subject:From:Message-Id:Date; b=qbH7CSFioC4UhRRuj1iJ1ZmVfp7YDjsFyPzHjai1nPNKxdJc8kq62X8FMWxBaMj17NynwpC7W+uSiqqHZAPvU2f+XB+xsYdP7x34YqzYNlvAVMg3T9lRne9G2ZaDTi1G8NVqr1B4mvcUutHXrp1qEovalKbBmMvsAoSpV49vaDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GnI8FGys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GnI8FGys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A520FC4CEFE
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760025593;
	bh=83XHESt5NoTjPueyzjRk3uqo2vqaNStKDohGFOkcrtc=;
	h=To:Subject:From:Date:From;
	b=GnI8FGyssye7x0qR510c9m+mu1wMym++ZjAsf5X3bPb3i8gLGl3sCGdLCWAKY3Ov3
	 1gyDMwXE56QeCDW1SyO9v35LhzV5ZoEm6f8vEO9ftz0DbUrm/S9Bhr0xSDXr3m/o8U
	 AIXH4K1tI+08gARyxV3hzljfZk93FdXfY6oij9Gatl4SYrQHwvPYEA/ziDYdrnvkUv
	 H4Hv+c1DcgqXjP26bOzwUPev7eviyhe6Maz7Q+pGDQN2U9s4Bd5880vVMEuJIHpT0b
	 xbven45PccTs3SHiJYno9e19kbgXIUvHV2H6pSlt31XTGSfI1oRhKnLWTW/8Eia5vA
	 VhlJWLQOs5WNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9080ECCD187
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176002559358.31695.10812026125215641908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7f1f9e7122ecd3ccad84927fe4ae85a0eb3e7e8818e3a8cbab37f0feb24a219
Date: Thu, 09 Oct 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760025593
