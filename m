Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3D55221577
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749717593; cv=none; b=nj4CIs5622Xy79vb/6Uld/Us1LyWtShM4wICtfeGJb5Rrm7o9RYy+ES5NovHbENQNBmU0Pa6lWstP2XXcWPyjdJHDp6UfhYslg9aleNuXxxYFsx3Qvfp2MNcYO33+OhsXeqfF8zU3G2NIB+LubijhD6XzymjjjO1vYZv1LxmmUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749717593; c=relaxed/simple;
	bh=I5CmVlE1ZLqRZYy/c+sWMnyCFrrOWNeCDettC4uqad8=;
	h=To:Subject:From:Message-Id:Date; b=ot12Y4Jbxml1RTKjFOT7cOmf8vMYGIz27FVkb6m4d7Oxllbe0pgMMMyrkITv23f20+0kjMtn+BG29YpFN4QG6FQnE0kjT1+NwlyPCAI5MfzLOZ0Nz5yRtOA1g41a3tQkyQdneyy8Oup/qzF5zfE1DJ+ClFalPb2kAVS5yrm46xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lsTMyEEl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lsTMyEEl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD88EC4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749717593;
	bh=I5CmVlE1ZLqRZYy/c+sWMnyCFrrOWNeCDettC4uqad8=;
	h=To:Subject:From:Date:From;
	b=lsTMyEElmpJKBI4++9NBnwwH3fMYs7CkK3LDTEWI2k02tdIAvn8b6HydqFYAzT4qf
	 oxyJHcVPQjtphhZBV7gtA6lIIRShiVXSAG0MXMqY0/Cwk28SNHpxWfiWQ6qpAvlHWZ
	 v3ioAYVY2NlzswbE17pq4Dw2DReV/LnZ3v2CVEe1QL78BqH+8vYb9GYDgBJICnzLs7
	 aAglTPze7qsb8nrcZSwf87ia9gh4fmfMtvzCQFsnEgH+M7OZSkUevHOASesbJAciBY
	 eNKfsNXTkTNSj0U9PPsd/d1sU8y1yLhMV/UCyuIZ9FTHph6CkZ155FWNlLy3hPx/3a
	 u8UYItlk8QwxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93606C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174971759359.24634.675595044394207104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f717b049bbbb59af9f56bce1bb48e6212f78b80d1abe40e0d23905def228b1b
Date: Thu, 12 Jun 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749717593
