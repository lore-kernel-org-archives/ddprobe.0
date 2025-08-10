Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E8B2E36F9
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754788194; cv=none; b=Z94JAV4BDgn2ej3osBECpMUMpYStDAUpGyScRO+nKN+ZSrvCk5YcEFe13vlbcKpbuYiEcWj1Brqv/SzXeylge8m40nw08kruF6j6TuqEjAmGj1GKhuF0YyapgG2+gWTZFmUB15AAwR8vlcnnCD4dw6qhbtkccL6fKzGUU5juECc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754788194; c=relaxed/simple;
	bh=gOpTAOWRNIkT4fI7miNBwrpP8W/UIpLl/PQ2mYRUqbE=;
	h=To:Subject:From:Message-Id:Date; b=plmwtGE5VdYD154c/t3qDJIF+fHGfG89qeg5ivsujfIMckfYwMdaf/LbKN7r2sWJJIYLqqTbwUF3D00iQMXfhOn7hqjE6OEuqls8uxpg1t7yDz8PoW5CEdyewzdqLCa66qbSPvXpFgpE7FvMXxGf+PPqQdyAcUy64t2PdzbGbVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oaDBDw+G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oaDBDw+G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A082DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754788193;
	bh=gOpTAOWRNIkT4fI7miNBwrpP8W/UIpLl/PQ2mYRUqbE=;
	h=To:Subject:From:Date:From;
	b=oaDBDw+Gx65fG/XiH6RqrZlfbFEcEmpWJNaiEhBVd+4FMXIXX8DaQCqaCZQ2UO8Ec
	 lQ8+pMUhme2vwRo4qh5LNei1e+B+Iy+UDU3N7EDV/Hqqlh0zfE8SR2UlK+5U/84QqE
	 xI5EPaECvKbmVrKjDAHyQmMh3Dp9vCjFYjFF5JSw+KuZ8atSZE/9IWmWZjkTOzjNxo
	 wcYoD7+VyWdZqZYuBTcZmh+DuKB/d1q778kGo4BbMPrGGELF7w/zCVtuaaLFqjCQWV
	 BdtHsIrmE6D5YmLiH9c5UnjJ34HZOAd+nGsV3iI3SRgJvaahSPc8y9Yqmrh5AtSfpT
	 ExmLAi7kg6ncA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92570C87FCB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175478819358.12254.9508894817265245520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28944b7317e6040052f6bed13548a1c7b0cc3d10c04334209fafd4a868936e83
Date: Sun, 10 Aug 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754788193
