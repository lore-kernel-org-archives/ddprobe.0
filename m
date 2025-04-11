Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63872487BF
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744402794; cv=none; b=VwPzeUeQKu+tLrwmPXmGd1iZsslQniVi/Nwftdd99cJWEt9NjH+d7gldfA5ZFWilz5XVT6Fbxxi6xJEDA1NFY3k0sjgWsugENs91qq6GG8YweDYGpDS/5sBlAzJljCscZ+6jMK6WiKANI+WAsoSp0DQ01FYFUKaetnhGaCp6vE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744402794; c=relaxed/simple;
	bh=T74RNrzyFblyJK4ZczB3srwfeL4HK0AjkkJUtqYyHJM=;
	h=To:Subject:From:Message-Id:Date; b=kYapBDWER8mAwXW6yZAJQNVOpu0WklcEzEk6baBn3ac7jO/7RAwwo3PTG40c5C7y1c7b9kxLJkcOobYzQiBFkz5p1YC4J1ctUXG01iHE1WwCYANdI8EpO9Mvc55Y7pIFCp6prnbFpV/Pzi005FFt2bHYJWcZ3qyLN1eCdGNwhVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9Yq52Va; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9Yq52Va"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF9FAC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744402793;
	bh=T74RNrzyFblyJK4ZczB3srwfeL4HK0AjkkJUtqYyHJM=;
	h=To:Subject:From:Date:From;
	b=r9Yq52VajtYSj3dQUh6nnqX9wbG3dS/iUtU2Y1PKIZaEx0ZB97U8Gi6vx4VKZnGQ/
	 4fpHOfw3ZazMSEs4NPC2YQMKgZEWXHfIZjdACLGZHRmv2N4UUqY47jJSHssVEkb7pG
	 1xPul1t9NLTzNMWPLYai7DL1wyzhVlobixGmgCI/seXxIeOobd6ny3py7KjbHqHefL
	 pQHqARRJ9I1gMiUI41IaoMnB58PEP9xLkXQOrEA746/Y2CeRzvyrioTZ8gYDs9GSBA
	 iVQXV0pGVnrmXdKUgmsgjyZR+UDX4D6Qk1/T68DiShB2tEKoAYC2VaQpXkr/IEh3yr
	 lcH/n6aLwiIhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4086C369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174440279361.27124.17267049185096358036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d646fc48efbd4d269471af5cd87b040f4d9950109df495776731edaf6b34f7f
Date: Fri, 11 Apr 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744402793
