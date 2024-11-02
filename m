Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B5220EB
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730516154; cv=none; b=OG353msQ/yvm8l4MrNh/Rj4rBEX5vRl9ZtDA+BJ+P9iDOxKGKpZdUQ9oU/EvAdKesk/QjMz2a7WlxR6ktr0vrbhan+DA2dxOMnMZZHlJ23jSNrfxsoWdxde91+CCpxNzrb7hCJl9moa2W3xfy3uhlPtlHinLieHM5PKaV8oBt3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730516154; c=relaxed/simple;
	bh=NkX49DBV6MD1Be17KIJ0m3ffz8FjAd+doPKqbrNGrPY=;
	h=To:Subject:From:Message-Id:Date; b=MCmhI+0l56gL3ecxUVNgRxSRQOZ+21VoMRvth/9WCweM2rpD9Tgq6qV3QNa6RBUNYDJzAuq4mwCIZtPZ9Tn2f2SD6M3/l8MOqkztWhuNkYdrrGoDURDawTx3xYeZ1Bx8wf1tPDu5Hgu95g/Yx53n+aPh8e3ZbV5/HcsjsTM14v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXWbzUTc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXWbzUTc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD484C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730516153;
	bh=NkX49DBV6MD1Be17KIJ0m3ffz8FjAd+doPKqbrNGrPY=;
	h=To:Subject:From:Date:From;
	b=OXWbzUTcNTImU2+pgXbMBXHZxdbl1I0jqEDUTl+OdBUkk+3rKrwR8aWxngzx62nEu
	 cGJHFwgPvsTss6ack83hoBpRfcp2RNC9ElPsFOoe8TAXYgxCG6RZguIw6JwMU1dofE
	 Q4eO9Ea05QnjTiP1nLt2y0IBFpzsv4TrBuiMcvkHebCNmEp2r3VVMsZj+/4nJ7qtrp
	 4Cih7fgUw7paQfalCR8kmWygaMqyuavdakYZ4Z1rI6Tqrair7iHOobGughOJHT5ynK
	 xTksVTRY1t3EoE7s087nYy3slqOn/gygIQ/UgI+AKZrYfOBXsKltr1orAnnpkgROTp
	 D1/Sp7sn64E1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9743FE6F09A
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173051615359.12442.11832972505930373985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcac787bd10db03dcb5fcf70e597718235e5b8f4e53e92e5b259a0e951d433cd
Date: Sat, 02 Nov 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730516153
