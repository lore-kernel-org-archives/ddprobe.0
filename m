Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 064CA33066D
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769784834; cv=none; b=mfoFPpPQUCH08WoI4PyFgjCNqaPnqVUBX4t6tKBGt/E5gTw8UaihoJPYMbG51rlkPYpKFlrnenPxUAQwa9tl7wFlya42Nk90AUEO2qECQePc90/hcrC6psuQKIf/pjMlabojPikucxyXRS64oZ+JSa/JFSTdsEubwPGFor1qL6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769784834; c=relaxed/simple;
	bh=REjJ54l3Qs50l/YVsWbd82xiUnyGXX8pWns7idNwzNc=;
	h=To:Subject:From:Message-Id:Date; b=GShKVA34YwB+6QIGif7pN2WysaADH14Fchr96ZKBQh1/3QoQl/GPxeoK4OUJcmXGdiBy4lz4swI1saZHQtSYurPD9scMd4CZeJJnEbFYD4zhUOiOBLwAbQ/g5TTnhaUJ7r+50/NhDXzuXW/DqcVsb+y0ziOwttBv1jujweXJf38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ItWeXp+G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ItWeXp+G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01AFC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769784833;
	bh=REjJ54l3Qs50l/YVsWbd82xiUnyGXX8pWns7idNwzNc=;
	h=To:Subject:From:Date:From;
	b=ItWeXp+Gx6M7vZCe6qBr9zHEXsKnm0hxoYntqzta6jmdCSCqFzTGouIooJzEd4cB5
	 J2zFyENppwL375+2O95kmRz9AGwLfG0GYl+e5UQ79tpmkkrWX1VlvCc6ISwZWrtasI
	 0qGloCDc5glED9NQIPa4Wyko8FUvmvdgg5/HJgfelk3tZ889Rkn2DDTiwEc67ZxwUq
	 +0qaOJrvHO5fm7J2aEKrT8vzJ8vRUBjGDwD/pzDXJ+yvu4fHNejVImGodAgEhwyNpk
	 yDPm1rnd/YpYzX5Fu2QkildlrDVu8xj5ZfW2TV2D4zxd6uMxeQtL6tSx1cuiN95+kl
	 jU3RBTM6dhBFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91036E6BF17
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176978483358.12107.15499379384168235145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f7e5bdce71081aba82907cfe5701c1caa463f6fb126a8980d60498d69ab4e20
Date: Fri, 30 Jan 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769784833
