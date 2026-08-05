Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFF81D5CFE
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785892234; cv=none; b=mHFqu6vCSkP2IcSMGbN340L4iDlpdyInZIhobOL69IzgkhYbloLbI0Z5Ctoh27Mv/c1tGipTx4/umidoed1/xUXMtpCzqBie/Kv5W9BfyG8/Pk0iz4fbfIKzn1frRhyCx+lcPYI3NbdB0eAoBw2pi0+OAnhSLE7Am1Cm0RWfAMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785892234; c=relaxed/simple;
	bh=Ruw3xEOhMlG/p6+p8osabmu0gwx/OBoHF2Ro74din0o=;
	h=To:Subject:From:Message-Id:Date; b=ClchxVnpxoWKhyWGmhEqbPqqSW8afjbul+4K3Y9flFhRx4e0ktjmz5eqqwyU7+jipZoo+TQCCmPBilDznBOGMM5KxYKJyPeloI/iSzqF+UXTYLmiNo05heggKWWkjKiOfs/WAY7UfOUlybstZSZNxxRbPpyM8Nhoje8RuBU8wHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8ht0xie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8ht0xie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2ABAC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785892233;
	bh=Ruw3xEOhMlG/p6+p8osabmu0gwx/OBoHF2Ro74din0o=;
	h=To:Subject:From:Date:From;
	b=I8ht0xiei6KePTvIrb4C36O3m2snbK2jhjvk9+lmbtOFSf3BqFD9u4NNcS3NVwtPO
	 cI8lyS5UW8lyFYTjUkLWRANvex3yGSLsC9RHiLSzHy46NvY789tyHdjlGCbmkZZDCv
	 CFGnieQr0xJHwZ6Hz2PEA3Ozb3gtirMjPrKuNMag05nF+4ASYnH/OfAe75lg65AiP/
	 KLRzPg5JwYzHNbq8prhKVkE4vVRRhye7yAOdebergnotwPFQhkIOBAOUBY+fipSgoC
	 k6JqSGtY8XBJKcITWa3Clmjm1Aa6VuOkxPIYdKFjzB1Sjjx25ASniLaBqtL/eLEvFZ
	 Pw+HZuzMvRuRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C67C55ABA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178589223371.12519.15122470657373891011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ccbe1e54b00c761324f00cdd96089becda95c067ebd1fc3594c232b8f926a66
Date: Wed, 05 Aug 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785892233
