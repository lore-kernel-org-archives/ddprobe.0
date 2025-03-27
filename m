Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334E279E1
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743086994; cv=none; b=m3H8dizmeso9TdxPql2ZIqNPlaNfTId38W4UDomKql68NvtxDtK+RCOIHsWk96ap39QyZdEYGmmYdKM/nQ07zaiMuvNyJm6LsE6hUP3BUiq/wJOU6qE3asQQ+jmiHWu81m2REFd6jmZkm3d+2Uoqmh+cm8xwB+zEdYqpH5W/2Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743086994; c=relaxed/simple;
	bh=oyP+B4jfD425atU+SpikzXHYjOQEseDw2U1f/yzu1/U=;
	h=To:Subject:From:Message-Id:Date; b=ig36bKX3/QzGLFev3TvlxZhKLeYmi8ByntciFFxtKlOTzYI4r8BlXhztiX7uoP1xB6iRSlO7/3yecbdhABPul7w4pllNyzPgY++alwkGY5dCFnEbAuDEWTq7LKotHDYLOADDtBHoj+DOqr0glMQfH4snd5QTuHk4nNoVp1RI7nE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVEbtixf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVEbtixf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8FACC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743086993;
	bh=oyP+B4jfD425atU+SpikzXHYjOQEseDw2U1f/yzu1/U=;
	h=To:Subject:From:Date:From;
	b=aVEbtixffQELehshQkIS1eyCvNDQI1/uKoBf7cOiuZDzfOJEYW0QyRUa/HVxgpbZA
	 FVkhZ+q79WGjONNcBDTH9DnyV1PgOVc39OoJm+muvESoq4da7Yhng2gAPGcISZW5dv
	 dsJyPbsWMVOnjkYeWiFCrGsuFXlE2URQSjDgTZszM5e6t6NZoJGtp5hHlJxeCxDVKy
	 VyCUTc/boUUF86tClOESQdCUXerIP0gwKs3qcQz7zx6MEtglOm4N1Kt3Rx36snCsu2
	 SqAfAfrl31ISNl0OXR0X98QvQn84LGyVwgQAl+xqNiMu0zFJPZFmJbFYTvE19jqlZW
	 bZZ6tDjlZb7Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3298C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174308699364.26211.12690986770304536840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75445847c946e1bdf2a94f34e5df11efd2885bff96e13a958ad22005c77a341e
Date: Thu, 27 Mar 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743086993
