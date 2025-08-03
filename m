Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B5E139E
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754251194; cv=none; b=T02E+4Lqmg7whVR8kWRcUVSPUS/+fS9XFEeJtyk4Bl7L6PUg2lRCXa+VBXJ38gvHUGORmBa1kn19KDaTbYsmzzQXpLZQfFL0hkR+Zb8t9fNSEhsT1WqBeYhltJpqLR/UFgBliJhA3ZFBNt+dmnKMKXymE7meof8s3mgAROiMxwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754251194; c=relaxed/simple;
	bh=nTCT3wKIwqQCASCbewUt35eu6JjzVwu6F5nOfs6dwQU=;
	h=To:Subject:From:Message-Id:Date; b=n++1FpRdAqDlcgxc1qkp4Avqnx+QvxK+A1X8obP2UolJ3rATMi5lQFCqVpzgOlXZtOv1U51i9oHdDBfm/EgCIlTvv9imttzCg1m6Lkzx4JEu9o6s7bMptl/SCiYiS2aSMfSCXL/yZ8ZZ3czagUgF6fCbmTXd9sRnXfxo/hhn2e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cjtYzpUz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cjtYzpUz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20CFC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754251193;
	bh=nTCT3wKIwqQCASCbewUt35eu6JjzVwu6F5nOfs6dwQU=;
	h=To:Subject:From:Date:From;
	b=cjtYzpUzF8Vm2sE5CqXlVL/YLGuUwQp9CIzV5vOCtRR9BwBPT61oRIVNc2vqFi7zk
	 bSPFG2ntqVSqSH+9dbOMe8/Zr+LD+64dj28ybaaS2HGgP0BiOY9VhnkEMeugXy7D6z
	 9xz5aifaIs825AjkZ1NFrDoeIPEAEKwZbD5n1VrqNYD/2Ncy588FNTD2O5euL4EwoH
	 PKs6jzNBR2kJcDzicsZKoM5d1/aWNCJEkgrKIE6FFixWkSTyetw4tsGtkd9PeZICkz
	 q+1cv2T41oQvo+j+8aDCBsVXF0eKh99ZIPEpqsQhxRb4FN9i+5nJHCOYholNTddAH4
	 ff90PLGQNCQ9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91110C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175425119357.7284.2275172088930279203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83f2e67d47a0c1538a07278256120d51d7e8adc235ec77eb32d77a36dc033ac2
Date: Sun, 03 Aug 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754251193
