Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 871A1239E81
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 11:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763550714; cv=none; b=E30vgDx3qaDRxIwPsN2tL7Q3miBig9OFHPvLNHuD5YP7qKrSN07N8sBc5iZUETuzUtpcIFL9/8fydRLC5b5Q5lMTCFZG0olg61sq7QPPafjrvvIYR/lS9wc8hgrjwjDt/1O/2ZxeIs9/ehqswKV/2frMfKK+8NwRHhRtf0XfD1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763550714; c=relaxed/simple;
	bh=oAzQu0olCCnBhEgtA84jSwufFliLHS2Bbl3+RsKYaAg=;
	h=To:Subject:From:Message-Id:Date; b=lwPHdWZ+NvLdUq5P6VP4MLfx5xmWUO6W2vdkKpEOjk5/DQZ7yTmWyByzmrjk1xyGm2oE2Sko5TN2z8Sy6lCVNNa88JnreqkM4RVAy54qHDN0Th5rdlyWcnHE5cnzLIeUZAwVdW98ZfMBtrsLOmEnyA8t2joaZcPQL7YAL3v8APU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bb9ehbYs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bb9ehbYs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C66DBC2BCB1
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 11:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763550713;
	bh=oAzQu0olCCnBhEgtA84jSwufFliLHS2Bbl3+RsKYaAg=;
	h=To:Subject:From:Date:From;
	b=bb9ehbYsL1QEBE/2wUpxAyK1ob5VloOqjrpxSuahWuGJxBScjRqQLIKcniqQzu0XA
	 MoEPrYTbiYcWYl+uOjBqFtrv54Gv8db50T4EbJb4H0BbbIypDAO7JMoIkQYPg5Adab
	 +6UcPuJx4LHp6MzIvBJd5SG9Ztimb0m+JtVwHAxguRn19HGuOiwEYr9pylCkSUjcK0
	 FYtmIMxi2RcxZI3rgBIeVvk1TLWzMnrXRhluWOZLiw188Yl/tzqMQg8HjbYIqITieo
	 /pbZIhCKmYoGSo3u0zb/O+5eOWllk77SBt57IdxjDKev7uIl7gLLEIbII0dOByapWC
	 rJLIaK93G07+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90145CF319D
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 11:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176355071358.22288.9473609518024281103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5810a627c7609f67b90aabaf3d83c8144a45a844ec5f404b2d9b4f91626e0021
Date: Wed, 19 Nov 2025 11:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763550713
