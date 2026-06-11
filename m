Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A56649250B
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 17:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781200594; cv=none; b=eD556dpZ6kFn0eZn4Fpgx2IYwv/AAC9CMp2HD3VS1BsmMwQmEeFKjhbmURoce02/NWVIJRvO3nKcAMQcZaUHkQqHcRcqTx/1Xi9OVoMPhMpJpRVldwG8AAQlbFgvrD+G2Swmuspcdiwog/JfjAuJgUiFXWxOXZvLNiRHhnyQR10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781200594; c=relaxed/simple;
	bh=DVUtso7HPgiCHj+oc8WN17qFPLMdbz0iQ2UUI1UHAj0=;
	h=To:Subject:From:Message-Id:Date; b=I6BoBxsI40CeqeWpSIw0PjZN2K4m8NAi/rcGJ+63Vac6qek3z8k5d7z6anzk79Uyceh9bMVlA2RxOcxVACglk/MTJfH0wRW9ld5B6A3lInCHlz6P6ubJrDx2ExKjXmiXX1/r+kJGS3imZtm8SML6Yaxc7HbJNIJCWn4inZjdeNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbKRa7ke; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BbKRa7ke"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 17761C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 17:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781200594;
	bh=DVUtso7HPgiCHj+oc8WN17qFPLMdbz0iQ2UUI1UHAj0=;
	h=To:Subject:From:Date:From;
	b=BbKRa7kezQ1orN4GNjp16oaRGhpIYT8idsv7BkCt2wGzgCJwvTWN/AaDNHq6ONCGa
	 +eMw2QOgIFX2gB3TW40YOHUpQzUqWhIy08TigVtjJJ0g3Kk94a2UJochX8iRYedZX3
	 T0G08vgo0cbZVbT9e1BufAfiKUf7kZwpmArI5fNoDO8nTkFVf5JtamvVDOU0ltST48
	 dK9sRkrkEEzdNg8aEv05M1cTOFTDK/9J/K+kxGviqpSUUlmwxuzv7NyTVgt06z0gE5
	 LMtgFB5ON4vXaHnzfWKSBXoTi0mx6htFh7S5Fi2MBDu9wCC2rrIMpBh1GGWBL+roNG
	 9nTS/0yraxlpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBB8CCD8C9D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 17:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178120059385.10919.9177641097269979525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d6fdf536bb38d163631ac131b98510b062275899a060c3d89ac4fd4d4797d77
Date: Thu, 11 Jun 2026 17:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781200593
