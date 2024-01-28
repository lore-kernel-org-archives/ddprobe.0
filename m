Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E746E1FA6
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706412497; cv=none; b=Y3paFP+GSCIec4sp0Wq2LVFoMpa6owDtHvFoWbwbtBtsCM/UhRIzwqkdX5PVHvaaNR15l2QiadRNBPg/o2sPrUtSRqjOVg9IO0QCJ7KKVgmTRdAGDY+N3TYx4bN4LuMozNlOzKhdvKPrAXTyS+XOWj0L1Dz2JeuSV1zCTDKlQTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706412497; c=relaxed/simple;
	bh=jkR3eaO64FbP7WDjTw258RtHMvXr8jALb9A6jAVrg4o=;
	h=To:Subject:From:Message-Id:Date; b=U/JqPGjim5okD8Rhw1usINva9wOeKdbdCehIEu0pS0EriY3wNfrQN5o55JqbBBoB9piCgnZrs5/ZrkYsCvNOkE7eplb8Q/WGwJ7Dlq304COA/xUnWHM5cQ8yBENHDtwzGYWhSG4hePBQ8lNeIYu73/cmf14UyebrKRIdktg6+vM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WygpgN+Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WygpgN+Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77F8AC433F1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706412496;
	bh=jkR3eaO64FbP7WDjTw258RtHMvXr8jALb9A6jAVrg4o=;
	h=To:Subject:From:Date:From;
	b=WygpgN+Q0kOMk4mN4yPbfnMdPc0sGHpdAf8U57EcrkZY8R1qmpTsOM3Wo1P24qM3o
	 IZQo6KLPGfOyDpDYePJT17FrgFwZeoeELiYG8iwB+khlFUdf3+/fVSRAWvwdn0pUO9
	 owGMRf5+LboWcm+RD4hEdufEYdcVSjUnMoblLOtMrttVgO+UPLV0gSTvIqU5RA0lUa
	 1Z9N7W+DIZmEtTI9pIAEJKbuRlZ4srOlY8VCSQ9QtRO3xId3cocQkPzseYZnO4vhrS
	 iuNlgwxsHurDXrwwmaDIckhgbV9/4WNvd8XDcx5G79sZvghN7+laockNdKujNkrwZ3
	 vAT8LC4BFUTGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ECF9C46CD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170641249636.8851.2901528136557204912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a932ba85ed9e57278befe3262d0120c4127895e006faaf777748a65dc991481
Date: Sun, 28 Jan 2024 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706412496
