Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B204A23
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 00:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764375174; cv=none; b=EwWV9ZRpGzfEp3P5mddRr5lN+scpygKq1u/cBawbfexooBMvU7PZVsqv6/MJpvHXkzkak2Y87QUPAOVoFyZ/L1Mi9Bw6N5G6enVrGPFYbvsOEoMq2WDiIPN+ThqeW6ailYUnvnktMOZhsWOpzNMCPEenoRjr29TpodrpxQkVRaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764375174; c=relaxed/simple;
	bh=yyGCDbbc2BuFmKeZakjQNuAGpT5bpkdWFZ+y+cQ3xC0=;
	h=To:Subject:From:Message-Id:Date; b=EEb7wuqSLoyjShlDRnfQEsTr3gSIdcZZv5+HIOir9XuvJhXh5tAbTVrm8rwUqiznCBat8yeAXUl+iPWuVwX8C2lVS0I2N+Qx3E004N5c/HexJMIY9WIs5B+5lEth3dMIQaeE5gHz00SvrJqqz6nCn2SrFp91Ut7qy8a688rZT1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVAoOFKz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVAoOFKz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6115C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 00:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764375173;
	bh=yyGCDbbc2BuFmKeZakjQNuAGpT5bpkdWFZ+y+cQ3xC0=;
	h=To:Subject:From:Date:From;
	b=DVAoOFKzUitnIZckKz7BLV8eFdu4jVhniITlhCNde1c4R/rZAK+o4zWjaqjuRQjPt
	 yzjIHvMNTtxUyRLW+vk+jRHf5WK0DcHpokXr8d/H9bF8u8WXzEvxkU4s4lNRoN+oWv
	 Zvldm9gyfGhrV96lT3lTOI1Qn/dPHtDEknM+d+28oogOMNRRFrfnRaqN3RT9xBeZ8C
	 wMBJ19hsHTX99sZ9FwDgcahpPu2CZxP1GAaOf1bvleN4eS+pz3Jot5zN2K411vwgCf
	 3go7e9VcK9vpVikldw4oIPbNoS9RhfMxnZmpTnXxFiXuAjzN6+KQZe9HfoTnCozXcF
	 io1lDTdueeS4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97526D116E2
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 00:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176437517358.30650.10711224841134676423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb0c3e07a5314698e6cdc69c29cfad7a5591a8b868a2b3410eb6095694e7b356
Date: Sat, 29 Nov 2025 00:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764375173
