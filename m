Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF22D23B0
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712457496; cv=none; b=JCfhYpdloTZ9T3agJsNOCktlK2Qd7M8rqDCIyCD+JTkkzcmnwkq5irdyLCDHVtncKIc+Icsg5sVclFzQl2RSd7xlE5lt9u698wewnWsRJ6132m/cBtwPb7CBcLMoFucFDMQxboeS0utuKYT14Ki62hiyFWZM7JbJvkIna+UWDDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712457496; c=relaxed/simple;
	bh=zCFJVytWvaBKmEGkG7iZSidG5DOxoyj6XM+8xeHI7ZM=;
	h=To:Subject:From:Message-Id:Date; b=pXoByFmpPtP91c94p9x9mBrX3HWQehmoDLCGGlMrDra7KFGgevoVNVpWGfQ1qoB51SHGB4NXrVWm/uJGDiXOH8e/KvDF6t1oE3a97OjH4A3Zc5j1JAQQZ4Vws9yw3LQT1Xzj1HfJMoPZWfCZI/ZGpDFjhRr8VBOiWT5kCp9AxkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQP6vMp1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQP6vMp1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 755FBC433F1
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712457496;
	bh=zCFJVytWvaBKmEGkG7iZSidG5DOxoyj6XM+8xeHI7ZM=;
	h=To:Subject:From:Date:From;
	b=YQP6vMp149TZ6q39rTw55sT3Ojzz0UwuSPfviV5f2yNw9yzPHGj3TQW77gzfpjaUr
	 zV3up/BeIEvjY3tRM1Pg58pFBgUZot1X26hDwOeXmca1sPT3z0WeegA6sGSMr5LwW3
	 5RzdN77t0T4J0phQv09nGvDKIu2z1y7EedunO6FmlNrXaaLbEKXarntH4bQbkhM6M2
	 10G1WZbNGs1BPjFQod8DveAT+ppckM25kAMRTDuKBn2MZ2f47zMZMoucYEXv3MWdlM
	 9rRTFeRj5k0asVnXpKExIoyQpIzgzc8QAMkKoIYlIRHCoO4FCpDGbCeeWjDtsWW9DZ
	 UetJyyKfMiAJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62575C67861
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171245749637.20243.16068174141967087755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72b59e1ce3288fb21fe6bf4ccf271ea321afea376777981a55d24213625895bb
Date: Sun, 07 Apr 2024 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712457496
