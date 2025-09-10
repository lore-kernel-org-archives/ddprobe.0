Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC7214C5B0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757546395; cv=none; b=Bbp3oQpZmUutDrzceJoemYYs2rhYDtuy3PP6dM+lHIBJb+zY+H2GhGVIMil5lqZrWEdv1U7xYIa4o2Lr4DiWn8uAiXkCApYGP2hZPepfLqQNhdAqE9VjZdqm9JqZAv9Fq1FSQ6x3PTEkr7PZ+Lmq2q8Ftw4dX0oWSAhMg6HlQGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757546395; c=relaxed/simple;
	bh=Me2ydQsPCSN1N1knKLVcZxRnnR040nnRz1l9m/Gf5ME=;
	h=To:Subject:From:Message-Id:Date; b=hZkK7HW2QHveLsVKQLHnRaNW0m1eoTmqVCOj94kQu8XokK0wu1nR1/0gX0xZZTa/CQDTh1T2PH2U4ehixZFKQCSjMs547HmWPJLoosQR6s4AUKfY8i/9Oky6w6N8NTeWA5KxRY5aKv58/N65jFiVTKuJNPqvaz5Q3Ge3hxdC0kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9s2zm65; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9s2zm65"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03A5C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757546393;
	bh=Me2ydQsPCSN1N1knKLVcZxRnnR040nnRz1l9m/Gf5ME=;
	h=To:Subject:From:Date:From;
	b=h9s2zm65HBBaI/+/ePhcTxUUl7DVV71RIriHflZ8Or14KyGLJjrvw5hw+awTlp7g/
	 CQIRAn/HQY9CSQSF68uBE/xhc9coWFCZaE1UDcrHZEWus7655vHDFcVivEXsL6zyeU
	 sZMLO2HdC+B4goi1MeBG2DyWtvi8bqyaZvvaGHlC4Gbjus0QBw7VT7v4H0sS/rnPpM
	 AOrmXV7zJHOZna9Cdg3nwImRoWnmbOyy7LRZJbXoNGwfJCIz8IVwK73kNgzUPcU1xq
	 lXTy/M31s1JUMndoQ+zmOKddHkWPq1B12kLfwwFbKhRZr0VXnQmDQCFwInOV++jN+b
	 zOycylyJUM7Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91592CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175754639358.17703.6909454290687278363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e02de04130328a395ff9241d77121f31ebf0b8cc41ef7d0600cdab317c5b44f2
Date: Wed, 10 Sep 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757546393
