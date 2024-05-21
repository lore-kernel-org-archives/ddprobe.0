Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D9DEBA53
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 13:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716298403; cv=none; b=L+vjIAC2C+D2na4EXuwSTognq9jnaZ2ITaGMRkD4Qok4rLBFXAjfYUvdv2XYPjvSs6l/xjto45IbX/kgs2zod3drgY74KhKGdV/lzCBxlZHe6F9aIdc7gJWfewiTsGNHrg0gjcdNcjo59jzbCvFs+NzuXZ9T7JDxfbacLAjZUH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716298403; c=relaxed/simple;
	bh=D4CR2/XrBNJQfjmJKVek907LEE/CcJqzx2PY9l1GwzE=;
	h=To:Subject:From:Message-Id:Date; b=M2txJWzhHmkm0XpTKSruaqZyfBEr3gaBWJezhgCVxBoMzaSrmOqZza8DTbiZk/DGr8XZY1C5ItpetLBHUxxyPB/36bWg9WuQfm/Aa3JykXl2QK392NBTTw8WSlDwhOrv/6avajHq7Fu/DmZ2zdJMCTY0zX5+L6MRnAMb444UrTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FX2IXNSj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FX2IXNSj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1F33C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 13:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716298402;
	bh=D4CR2/XrBNJQfjmJKVek907LEE/CcJqzx2PY9l1GwzE=;
	h=To:Subject:From:Date:From;
	b=FX2IXNSj3vkLy1qwt+I6UPfDGjCCt/hUTIywwRv2FHpLPrqNUjcZnwKyqmDrlKqo/
	 B1vcohPRPJWMEMpyQdECDMFE2UVqviKWLOiEiEhZEeDNNv/ppoJFyFExc5qTPy32CA
	 uxgCjXxDrKb6bBbN7GUXDgRfX1kk3XuyGM1IOLIi2EKjglGcjEAZlPOxnuTZIz2yPy
	 5JCzy5m9DU6T7staSW5fNaXolqtvwgxGAV96QXY2FK77KV8H40TYpxwH4KigbC2Q6W
	 ACz6GKMTeSpIC+4ky0QHy+LvJxIdkx9G1OLIpgD41TBpZbsp25xcokP1K4Rpr5ID1A
	 P1z4xagzMZhqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC405C25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 13:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171629840280.15263.15139613929256348636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40e842a51a476856ba407db7c152fb2b418635357d00bd7d32091b0bce882b5d
Date: Tue, 21 May 2024 13:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716298402
