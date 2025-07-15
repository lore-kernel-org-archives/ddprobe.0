Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EEFF4502A
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752544794; cv=none; b=X5vcrHCqwBsQjOGJG+jdZJjxRujYJo0WmQ5PYvF+6hjKtKYZFv7z/+AMC2Nmb0SlLOH545Ba/emmkE8GYgrtzgtJr0JXGo7M6lgRVbJkf3rtbzweo3ooDynBkSbXjZWpDBto5mlS50rbKFmnBuIgTfHza9pGSqOIx/LITFJxHqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752544794; c=relaxed/simple;
	bh=iTSTf7iWQ2ghqoLZ3e3TD2I++fuKPMHpzEYcosgl7Tw=;
	h=To:Subject:From:Message-Id:Date; b=g6Y4q6eC8lWdm/E3vjTd44hj0nZvDid15tr2Yy3a3SadLkwap/OpUV2bRLwIHCgxMerJDXz34XCRuffSv2Y35u93hC0B7YkcLYRmCHnmm3PHj477PktN7BQNncqPCQvaX7MduPjGIdvTRZs+yk267etByjsT8iUY5hTtE+gyt/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GFAD5JLh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GFAD5JLh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D75C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752544793;
	bh=iTSTf7iWQ2ghqoLZ3e3TD2I++fuKPMHpzEYcosgl7Tw=;
	h=To:Subject:From:Date:From;
	b=GFAD5JLhHFtkdGXwavL6rNLVAtSYMmd8Ph5WMxowrhv8vFKpXJRTjv0thUeUA9zNN
	 36PB4exWfykksoYKskUIX7v+2T8C5Wjj56FLLTESKiIFxBZremELh5iZFDLrbVIBY1
	 Pqq5o3ur80zBUFRNkxgAkrB+bluBgz/JVUGeplEn2lz+SwWCLRFGWrPoYwsnASCcZu
	 gZNXlAP6kjLYpBDXt1p+wBhrX9km0OXsmGFrUgKZswpCsXqab9w6heLjSpVIJfAnI9
	 TJe4dlQy7xywj2538lOAXfTesxHdyJXTQuqUbhWDDnb8pLuG3syM36h2ZcVOmXxFKQ
	 AAJwE1eAA7sMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD20C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175254479358.24850.13013258724492781238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fba5e9de94d45f7c61c8dd5e2120885cc98f687df5225503269fb5ed5afb3a6a
Date: Tue, 15 Jul 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752544793
