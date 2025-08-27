Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CAE2C3248
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756315194; cv=none; b=qFin5C2rRCD74t2bjJkeh0y/HoQC8yLQphHo2E8ePRx9sXSDKLLyER6vxmeoD5M2U8NKaebdLJZxCdvDBxrbkqxOwolmoasoyBrhiim8e43ghSuHMiFsbu0Ybzmeo0knCE2paj7SGpKr0lUo783fi456e/cunoRNj+gxM/GdhhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756315194; c=relaxed/simple;
	bh=X0OOAysC8cS1bFnAuSPnt2yBdmSBRjNk2oE/yav2V+o=;
	h=To:Subject:From:Message-Id:Date; b=N+gnTP6HCHp0Ce2x4HSNSwLG0eFU5qg3fYLbhl0V4LMn2JjBAYOMHmE1YXptyB0a+bUNwCNqwiSpIUkO4dGHrcLSiP3Yi73S/ROYMieATMQP2V9rMruz5sjyUpFmoufSmdaMI5XiSkQOaMhpHDmb12dWm0E/gBLtZ1M1DHtNyKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iK2GEcpc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iK2GEcpc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 998F2C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756315193;
	bh=X0OOAysC8cS1bFnAuSPnt2yBdmSBRjNk2oE/yav2V+o=;
	h=To:Subject:From:Date:From;
	b=iK2GEcpcZEjvnvAZLY7qSgFM5vTtBTHB4YVIF3ANLmza3ePmaPKIdabA/qaQC6Pgd
	 WKXwGL0NkXJ/2LuSMVedmfRSLxz6GKnypaBUMWym0kJSbauZfiWG+CTlcdgf2ksDql
	 lIXopJ3WpwiB/+w2Q22zPybdnzg40w4g7gdR1Yb6CRaNDsx/Ra6sq0RpNaruXseo6u
	 jDGPuBw1doPBMK8ODvELAEBjBpQenbys1nOziEQdn2gFGErkxe85EnzQN3VqH6TbO8
	 kjv7/Ve47a0lUmq5ztxAIt4Qpha2zMi1YGWxfg8cuncBsc6oDpo8G6znSDUSsxOL8D
	 Sb2qvSyE5XHkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E52FCA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175631519357.24193.6120099294764534680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d342cc1806ba75eb5d2bd15834c388f90e7b3ff1c7b5046376c0eeb504c1a6e
Date: Wed, 27 Aug 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756315193
