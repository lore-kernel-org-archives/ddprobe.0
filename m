Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6678F205E27
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 04:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713586223; cv=none; b=OI1lsA9iG4obGi67gKPNAZvnpt3mvyUX/I+FnbxKeof3UUpjGJjpWQ4p6l6CcIpOAx8qbSOKzUnh9xKOCuqmAswCZW6fcy2jaV3C6dxvMddeXGIaM8TnZ5lsqWP63u9lVKNN6LiVFrFybKUQWtwEXzhgiV1BNyXLryeJxKpjzvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713586223; c=relaxed/simple;
	bh=NedPcKblbfoRvU3wBNzSb4w6Zy+R97sKNwaGeE+Xq6Y=;
	h=To:Subject:From:Message-Id:Date; b=dcmwWnZzYUUkC+oqPjsn1qjAGlog03sgCxnipmrH9qAQ5NdXJRqOijRLT6a2mINMuBeGUr81ixYCh78QeF5Vuc0dOgv7vpwE8tS/5FwzAoCRHIvth1wti9+MEZ1WDNeafnWCe2wxze/YJ1mZhrN1F5MC7jCkyXTxQsu+ugsK17g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8Df0spz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8Df0spz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E67D8C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 04:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713586222;
	bh=NedPcKblbfoRvU3wBNzSb4w6Zy+R97sKNwaGeE+Xq6Y=;
	h=To:Subject:From:Date:From;
	b=E8Df0spzGUsJPtJCOYwVKyqffmf0ntl80NsKmLEppT10auzMsVFA/8Jl4Eu0j1cQB
	 Dm3xpUIh9W7WXSw6N1yn1O+8EHVL7AywzH3miJc4XotViTYPXerkQGEGLH0kVP7UQj
	 3PHiQc/bVUsvbxvGZHGNT8nHkYbO848eWK2XE9cF5rcSiMAApbB8EnaI3keF5BGEee
	 uVWCXIS1uRf+PB4wIyHEoHbBSkhT4C0HOOS+NmdY9L1cmRZARdAPApChliX6cIliu7
	 PcWHLAZonIToF5FCzMN3NyHyyI9el27vbEYrp2BJPL33kczk7VZdAE9EIJfcTRLG2X
	 8NeWi1y08o01w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1B76C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 04:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171358622277.16282.12198376487472699978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9273fd22cac06716ae71338861fcc6aa8bbeb1047bb0ed2aea60b6950f88156a
Date: Sat, 20 Apr 2024 04:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713586222
