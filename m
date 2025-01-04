Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5E7136A
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736004954; cv=none; b=eSSaJI9kfOQ4C+lo7mW1WnXfx53teT9YFjuyzm4GC+SUBBl6aUjYlFIdE0fDYeOsJHAFcX7q7A0Qbh9EjIVayQ6DCEf3JugiRhInfVuWvYHnsODLJshiJr4EArS9nEXMjs5EQoc7wytx1xbzjs0l62Kmwt2aV8DKonfcF3fzdBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736004954; c=relaxed/simple;
	bh=j8xhTl4V5AfFLgDKnv26ZZUrfvH/eVa9jCfEQBtco/w=;
	h=To:Subject:From:Message-Id:Date; b=cihQXDwFtkgQgTEFKAGCCqeorhycsSaocwRQuz5wcz8IaKB22zNseufUzsvR8FHtqEBo1IblSFTFCsZKYjdsbVudi8fQJsJr15HV68hLBlvZzETw8nS36IPii/uBd7SwrRYq6/S5OXBUTM2P9/l7IO9k8hwcpE7fXJASaOxnbWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MqCNBMs0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MqCNBMs0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6003C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736004953;
	bh=j8xhTl4V5AfFLgDKnv26ZZUrfvH/eVa9jCfEQBtco/w=;
	h=To:Subject:From:Date:From;
	b=MqCNBMs0J/vp2mYZzOMs/KsCKoeZObp1FVATUm/2kk0yRksv0CiLPy5W/mgf1ykGh
	 fAm5C4CkMmys/J+W/bm2fnEk/S1hxAhyqDhzDVRB4mF01yjTTbWgrIEOdPhhmRkdcp
	 tPtaIivVMuvKTK16zYNZ6Ya5PcxFQHBZcvyi3hAxFDn9gVvqls7oTBJcuz7YJlqzyO
	 NbWQKWiqQ0JosGZp0l366j2RJiFVf4Fna4aRoXZ5u0P1E8/niNaYI6NgygTpdUdHgK
	 lc0pdA91Hh/v2mT0HybIUm1RKPiEgAGArNhRmKV04xP2xkCmasJ02FvmcsgVtBqvg7
	 661lR75dzVkew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A62EE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173600495360.7026.18254913170309766942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ad005418b2ca285cb57ae777098278d0db62d813c4b76e240579eeca490df69
Date: Sat, 04 Jan 2025 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736004953
