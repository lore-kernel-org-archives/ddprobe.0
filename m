Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A22A1F17EB
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748389794; cv=none; b=E5QTu+20Q3HDXm8SZ9p27R0q9l3rewshle4cRFzpziXh6ubbe1Q/pxMzPK/FxZ5qgIwk5hMXuDMq1CNo2spw7X//IHtfZZw/SJnmIgQdt/PJW+IlPiNMR8/2zv4lLA5sku9fcWk12TBFSNpmLztF8E4aGYRNpxjqaLO1CbLMKKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748389794; c=relaxed/simple;
	bh=cYGaaN0trY+5lVw3WZmV4RjAgbMW7OBNx514lQif0XM=;
	h=To:Subject:From:Message-Id:Date; b=nrnRoEEezamlYkkm4qsbXthCxnILxiajolnDVsIdYwKe9+ZhFCgXMeLUtWzWQkCwvzcvZ8tNiEm8xtsuX1UrxNoXbue/4aAv7Wl7CHEaGrAL/ux1cqB6l5CAEIz+2RNQOxmugPrvFJZgzoJBa7d0GB2MRyyOiGvhxRdv13YzqOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EsXpYH4E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EsXpYH4E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33C5C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748389793;
	bh=cYGaaN0trY+5lVw3WZmV4RjAgbMW7OBNx514lQif0XM=;
	h=To:Subject:From:Date:From;
	b=EsXpYH4E9BLwFn+B772M0DL3q/PAkfZ+Y8TggYjIuAlPlJTqZ0oJEYBRdma9br6aV
	 BCy4V7vnDjPU6L2mdyabTNhbSa1zovMfXycUGwgnhUaKwl50JQOgSeF/1pDReHrcJS
	 L4PRX21xQD13LD4rtzMPHtijDH7y8oyUbVetu/DJFUiJnzT1UUOTFHxTFZI9pnkZQn
	 davx8EFZ4HDWq9sBV4RPOaGB4DRbWsvAsrsTTasKPcTBeFXMCjv4WMevDqMeOPivai
	 hbuzKDjGdE1mL1k35enMp5fbt/CSL9SIC/8vQ8oFY3Rr9MQNrvW/0YFts4CDNw+/aX
	 gPv19nnF3uCdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3FFC54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174838979357.23098.16973541645615734165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e21e5ce7c88c8ae592d4a0f7af2a5ad884f50dac830892bc17898ac658e9ee86
Date: Tue, 27 May 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748389793
