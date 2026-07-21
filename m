Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558E746EC76
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 23:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784678314; cv=none; b=WgkBiWh94iYOwcPRJA4n3fAq3ma1OBZ/sY7PDLjw8RPNk4Aje4rPLBwCL2GhVBteHLj1xapUQDxjHt1d5F+lhDVXe8Anm4/ii3A3AixGaIo4lKgvfh28YuqPkn5blU0dbeFN5dxh95YwfiB7E2mnUAhFbZ4s0gJnWYylMxZ/mLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784678314; c=relaxed/simple;
	bh=OS772uoga4LubeB4B/r8SyWVsVB2mqNp094Jl+rmEzY=;
	h=To:Subject:From:Message-Id:Date; b=Kjzdq2gMv5oaFeLfMArA4veEsEiWyNHbwd4uBmWDe9wFJ+u8OcjwfNjrRNUOdSzBJWbgVX5richBQiCaHKVKf0jf6CawSm82wAJqFz2GHFHPnPDMPCmyNjvYt44MoxglobkokhHNxZhk292buhFqV3Gg/eZUdotrTKAQbeUXTSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=miHZni0E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="miHZni0E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0558C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 23:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784678313;
	bh=OS772uoga4LubeB4B/r8SyWVsVB2mqNp094Jl+rmEzY=;
	h=To:Subject:From:Date:From;
	b=miHZni0ENSMqeVYfBAKvsgB8yQSMKx0sHu7eXVz5VfuEtK/ueNsVP5rrBvBgaMVWS
	 Og1NF8BpdJiEsbfyHM37SfKSvxy6Tt4V+FiikiXvOxhr8261aIiEpludCCCOXaoEO8
	 fzd1gjySypqvzS2smduMvY4mgrPQcrTOQye7sG/AqHLC/lJBxB87yO9RgWHj/nU1P9
	 BioAScE81gWnddJ2UpQECWWIdyKDA+hmPd1RSqn0+K3vyPB6wRsurdLqSipz6Hsypn
	 foCZ096EgGygp2BTFPS1tdivu6oOdoctBfx4c3vaTmfYH+LLEwSPreTXq7cD5u/e1g
	 SVEGQiaLO+QlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F5DC4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 23:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178467831374.25295.726282880858677938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf9ccff93fdf996505b2a50f7b352d324a88131d5bdbe7099ec4a93f4c6f237e
Date: Tue, 21 Jul 2026 23:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784678313
