Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3108D1FC7C3
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728999954; cv=none; b=fN/NTLwk1nFEQl/B1YnrjVC6ORv70JL9u/gX/fTXfcsxrg9nEjlxOjdIERYST8i0pQDjYK6gHWbCtoMQ/S3LDVDvTiYsWmVnPbk/hDVUXVK6f8NPLDlmRFb+BrZk/H8FlvHcVnQNzlPBbkapLYjvQYYQU84GdJWqkfid3/q5ezk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728999954; c=relaxed/simple;
	bh=tiSY31VNtKoiMgfAS1wlqvaAYNC9rkDXCcpHPiYZEGU=;
	h=To:Subject:From:Message-Id:Date; b=ikix/lHTbdksjYN6xe4SCEcDEgV2QzLHdcwkW7d+wmsVarvtK0BwDkgiUHpSoui8khby0pd3/l+8WSYwnkjOLrqdm8DldZ+CUkwXL0tdNFggSF2IzqoKD8NG6V6VwRY8PvPNT/h3HOnB3UdjAu/awdJzIYUi1z46maWfqIDtp98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TCvEchs7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TCvEchs7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A975CC4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728999953;
	bh=tiSY31VNtKoiMgfAS1wlqvaAYNC9rkDXCcpHPiYZEGU=;
	h=To:Subject:From:Date:From;
	b=TCvEchs7MVL/0txThOe1JdZ+arZOQB753IWHGHed+aTrrSCBJ7bovzgc0v1cWXejX
	 oxATV15h7LZ9KIq3BjrcgeGQmGd5m4lekkHXsU/k0CnoaCCbB3nzCsSPqty7z2wV2l
	 7skBQoJ7kP7hVjn63pdQqR3x+Q3nlgGLEJI1XE3+O07EvFJbPckwgIhUnkp6UQn3CZ
	 jORJ3AXWhjuTvpHgqHt2UgC5U49qDdUVm7sbc9dVdVTYuEo5bRKS4ZV4Xd3kW7+a3s
	 FpmU+8/0dnoPLxbKoUnl530Hmyv3bs+Cv1PQ9xTH6l7L1kX93QBCDSh9k5Cn6Mvtuu
	 FKmkwOmsMLpwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97366D216A3
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172899995361.6465.5528141018423105740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50bc421da667cfd9ccbde36b1a700f1fdfa8c8129dfb1bb8a19fabf85125f401
Date: Tue, 15 Oct 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728999953
