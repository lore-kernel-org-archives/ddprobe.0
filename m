Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A9014D28A
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 21:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720475783; cv=none; b=Nn3k/eA0/X19cG1YbNdqqaHLvseSBMvIhjAkx+aIUUlnHpzE0v2B9ELTtWMoBLzuYAki6JWHMDsyDQmX3cu9WeWNYoEoLAuZDSckKqQs8Xtg27V3vVjfMikpb+yWzxSK+I8BdmDnXep6WgNEYubCVPaHRZm8ZAVA3zysziXiUQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720475783; c=relaxed/simple;
	bh=7bzg8kyxgLbCj0wa8vpdp2qbLNVALBq5+XnzRIUdKTk=;
	h=To:Subject:From:Message-Id:Date; b=oHGT4mkwn5cr2MatOXGe6507TdsAfV+kAwZ+kXiuwiQ8xGs0M8TqkmLyNG5ZoDquOVhBuxa/MkNuADIGGpyOBqnegG9iObvaFcJLGhcmEozLSNyp4SBOV/bL+uwjuuR2oOa0u1m55VDPXO3KTtJaC7921wO+B4EwdAOVK6zmAvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4kltz1X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4kltz1X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3291C4AF0B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 21:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720475782;
	bh=7bzg8kyxgLbCj0wa8vpdp2qbLNVALBq5+XnzRIUdKTk=;
	h=To:Subject:From:Date:From;
	b=X4kltz1XyZbK1XSmiQfRoeLb7dY+EyIWh9mo6eaxaXeydaeG9iLTF5rTJ9BjIEzc0
	 ImPkyqAUYTLORpyyXHbFL7xl1lFYcI0rxvRxlw7QH3ScLkXas+an8BPDZ7DiHo+ZiU
	 FEpBOqal4ABMEDz5tsTl4ciML9MOksGGFQULFs3lCTbsp/z7nzxokKk7D19cF96O2f
	 H/rNZWFY5mDWEmzmxbiPEVtfKQ9PikVVa9KYd7naJk7u0JgYVb+RCeRqhU0Kxudflj
	 5xGq5O0HCLsY8J36in4t5Cszp8dd48lOPvF6JOf02faXB9KoBbyVQ7tj1/e1NkI2yU
	 Dot4vrs4scKaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E93C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 21:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172047578279.16588.9842312571868598665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d4fc09e3f92987d5d2cb72ef156ebee871a1c8973e7e67b66e533f5bc20c5fb
Date: Mon, 08 Jul 2024 21:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720475782
