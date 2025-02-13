Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C8841C6A
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 10:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739442534; cv=none; b=GU0FEBPzhdybxboowngGdsZHSWWH4tILuESaqNMKUCfrt+resgzT/7L1EGevDn5Hhu2sPAYVDbsupIJj/75Q8iwPp+jjqCiEm/YVwpPIN0ThL4ocmPeLhhV96u5RwzL1hbUOe90mllYWMy6ira+ysCXqnQe6LopqEldHwhTriZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739442534; c=relaxed/simple;
	bh=lO08jsKC+XX6+fo/X6RrP0y9J+wEhl31fodcZHNhRhM=;
	h=To:Subject:From:Message-Id:Date; b=N1xelZngLOcofBXnJezOw4RLZCNNQauuKiKTn+ihUQFyDRFuLS0TdeY9wPz+kfEiIbpGYfB3LZiZIzEAZIHGXf9Fr9J1ISjGwm3DWG03a0lcNQIkcbzOTpLtVHC9/2XuAJBReNWYes3vuXxKtL/m7hWXf8W1j/8rbLPUxTy9xpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGuYM9rI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGuYM9rI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA95C4CEE6
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 10:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739442533;
	bh=lO08jsKC+XX6+fo/X6RrP0y9J+wEhl31fodcZHNhRhM=;
	h=To:Subject:From:Date:From;
	b=PGuYM9rIxwdb0pViUDP+Tx9bkNTB/Av5Xt3564bJC2J4oDh6S+3oOKG5vyfD0HhNK
	 TOaVMJ/0stToqkI8fQJi28rE78e5mhJzkMXDAzd5fp8PLYtF7I9eyvNtLiYOzs1nQ0
	 X4MAQJWMG8HIadX0UX+YmbgRIeVdMtyzIY9zQzUTWBCrvrfElcUDoE+JN1IAtCUYoY
	 mz9GNkOiq9Fm7uEVv47HHQwnXLZrt6JCJnhnRI42BnMHLo7V72fHUM0HVnNlc/U7v6
	 UdnIohGu4aUdkF1DdYC+s8t9yDHKycQ5RM81E/bkERCNEM2BJuOvSf3vYv59CfAJnK
	 R7zi8nIjlIueQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99526C0219D
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 10:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173944253361.9360.16824736062421647560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a9061aac6e3077232ef450fde924615a3b996b9994892a22dc37db29ef5d303
Date: Thu, 13 Feb 2025 10:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739442533
