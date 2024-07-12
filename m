Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE5610F7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 10:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720779503; cv=none; b=BSgOdZXhixPjp8b6c5JOIMjt1YMB8pzThPTy28/qce4rIsYM93feYP+Ng0NvLL78NeZ+dGUZrPFve5scHM7nK+gvy6wofwRsYv+j365BtUFHAdjqH2B9zINE7OcEbx8xULzIYYDGyl4+MzDVLrkwzAPWsm3ycJ8Jq+LuoMJNVNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720779503; c=relaxed/simple;
	bh=ttpP0F6UbfUC0TrHXm+wYb/FI0EaPf2QVsGigMk9teE=;
	h=To:Subject:From:Message-Id:Date; b=dWKwW8r9ySLJe2Kl/FDNmYqVMBFui2VN1RluM/P/CQBG9Gkn7kfBHN3/eRl81SyG/yQfBVXQ92Ss7ghu+zfuUuD+uwDEg8vq0dZ1QNunG5zFnNPZrF7fJLsZRIyO3K0WNNsaRbzs+DIbM8DoWaIGUVH0hOrM4aTaq9bhbTMREyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DKq73Bo/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DKq73Bo/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7B1C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 10:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720779502;
	bh=ttpP0F6UbfUC0TrHXm+wYb/FI0EaPf2QVsGigMk9teE=;
	h=To:Subject:From:Date:From;
	b=DKq73Bo/zTsFs5pThjXaxT/1HZjZQTUeVgv91azMK+nLGss5rwDwNnxhs0/NK7Je4
	 +as44hOD1IM2JvwccBhafPt/JTcNfZ+c/pruZ7yK3dQUqyvK/FjgFt1wpTyPOb+LNW
	 JXAY3f30KwoIGPFJHYGtGCcnZ/vgx/Cxgqg7TeO5xP1ccVNNJmid5sQdjumqm/0ptM
	 9I+xKNiumfV7Td2acspEg77F9wjm/C8z0bGFvwWmoWogVXLiUNAnufr/yGhgAQR4Ww
	 cRDyWpuUZI2323DPEY0/s54DhK5SyPCEU9ZNJHzy6u+1oUyTefKjY7edLRuSi7wHu3
	 qzRQvRGJ4nv3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC7DFC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 10:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172077950276.30289.18085834577212678688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb1e35725a9d252ab01f2d8e44dc5d0c4df505382992ca46ff091bcea39b1b23
Date: Fri, 12 Jul 2024 10:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720779502
