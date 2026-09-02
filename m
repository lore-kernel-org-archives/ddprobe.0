Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B56B640
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788316234; cv=none; b=Guc2wHLR5hSiX9frbj4miIOWB8bFQu+i7d8c+/Do+K0lwuaUF+pyjS0JA5XYK1g1VNpgpPC6PMAYRRDIixPtdGQAcriTJO3o9KRZG+xq+yowP+r0soVvWUp6N8DCvNN+rJlxjxqhzhMfJ2i9kyhOXaHvDsHiA4GMcpVg8MnVlcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788316234; c=relaxed/simple;
	bh=iTqIIWoX1pjJXGDU9C5xbS0aamTSPUqP2lEsK19aQQk=;
	h=To:Subject:From:Message-Id:Date; b=t4l6Y5gJuM+XeqAy146OG6JVAtnJ8sL04JgUTO2hIb272Yk5kL2DZabH2Z7TE1PhmEc7GsmSMDUNR0tjn8uBcFl2cnKF/BjqYZHh6N9eKGtHmvvmMXRu5DGPTgz1M5vPaQLuzkAEeJrf+nCEq6HiE1HAKlhDGTvvZB/TQuMwpYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S+Tf+T/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S+Tf+T/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD896C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788316233;
	bh=iTqIIWoX1pjJXGDU9C5xbS0aamTSPUqP2lEsK19aQQk=;
	h=To:Subject:From:Date:From;
	b=S+Tf+T/kIzEXbD52EgMen42McL+N/BwRYb9ArZnUf7QN07bNEg0ul0hpcf8GESP+W
	 1ZkLf7iVSqRhcHhxshMSLvgUrSgdqrgl2EmNGyWseLKtdjtjVsunPTyFdpHBO+UIp7
	 47uNFtEwnKNUZJjcFUqzH31gtktsBWEql8Hw+Oa5FHkWcKRD68o4JkykAGIkcb15aK
	 ckrsuhmvkbQAk0IJqJYsFM7iXjJ9TyFr5LSkFolwI8N5ZvGmYlv9ztLpz65VeG7TG5
	 ixUyAyRri8Yek4nSFzBOrIeeBYac6tFq1PV5quPYnlYLq8jsb8tfgSH6HvYH6jJUav
	 gOgcnbzCle2HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6ADC624D0
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178831623368.32402.10227560384949350060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6b07c73938fc686d48f5e840c4c7dc798350b092626bc6d520d6379355c565e
Date: Wed, 02 Sep 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788316233
