Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EBA71FF1AD
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756768794; cv=none; b=m/A4uYeh3FNxARGgfjboRIo6KLtPV4Wyujf2E60W7IdlGuVYE5y2uEnDHqEKcEPUUT+JwKt7wF4+060dk6qapWwL8NglNnz0IlbhhfStX5ElBIXXDkPLqZpjK+gvwUbOiCwSW0Xbek1H8I8/WLJ5cnIPi79pAGCiPXR963QN0Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756768794; c=relaxed/simple;
	bh=v/m0HNd6LzUitfqaIX8ZKSphyHWt4iFHSoDz8J+4w4k=;
	h=To:Subject:From:Message-Id:Date; b=kB2hZzuNp4qx+PbXWCt8DetbNJZoTwzyc7Fe4sUT+5ciEqeQu1YQVPmz2WayGnH0htIxI6Rnhj+R2qfcADNMEynp9S9y2eXcbyawVVxFOhDgpSMw6G8mmxaaOZ4h2Ugso9SxIu5igsvZiMlI4Foc6YfTwbip3vSwRW3B/BAptcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=An2C+Hzr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="An2C+Hzr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F6AC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756768793;
	bh=v/m0HNd6LzUitfqaIX8ZKSphyHWt4iFHSoDz8J+4w4k=;
	h=To:Subject:From:Date:From;
	b=An2C+Hzr+XO1ycAvcQ66vtaSRk1KNGpwEaiPdFJoqxrBKX16J8rDr9n0Z4lIwdo/2
	 vwW0M0BD9tYV2Mn7Yuaq0mT12adZ73bAITH5Br0Q0sVjoIgY/Ch3jv+LplkmkmUji/
	 NUGa5q589hncctD0fJwMZrcLzrM3KRB9rMdVv0yUeb6mmvcrkcjXAvL8qwO9hlf+o/
	 NkdQP7rTlMRK49iPCNNPWQXHPOTodjFsKKHKcUIv9lpXcV0y++G053FqQ1I9mjdwC1
	 tPixQO8bi1J6QVdcUCd5NZQe5vKPCgG+CUfKO5+1kBYNMbJRMVHuPfWZRuHQ2aVmb8
	 sZf4Q3Hwc9f9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E911CA1002
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175676879357.15237.17501580268265959311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b636596654c81ea6acdfcc8fd997b06582ebb4334732993c9f069db0edbc5e78
Date: Mon, 01 Sep 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756768793
