Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2957414F9FB
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760066394; cv=none; b=fORS+JP2dRJBENjNWB1lFUsmZstaGP7cOntv596BFF5GIlScAA2pH3EavOV3/wdxY6sRJhbrOPxfhA3id+c5xf4EDqThyOWQWtylQcHCZXzp7f+mxIIEjUzzVKrj7ltTfvssXRevBfqkM91C+6utNrzXJwN37Il0WdROCX/sC4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760066394; c=relaxed/simple;
	bh=9G7LUkZ2pHmkXopP/hQExfgzN80mFUuRd6Uc89bvmZ8=;
	h=To:Subject:From:Message-Id:Date; b=MIC5ILEdE4YoryDVyl2S9Mh9iS+BbyKeq+412I5xamO2TxS3uWntQGxz9gRc0jm9MUdyV9Q0rnCVsd9nNzQcByCITjgEfv6m93odFD+PLalS/Ymp2Ac2tRsHgd4sMlcZf1S4r5QZ+wRsrFHCESGcjvaJLsxCch9aMnPkziX6u6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f/LRU8Dj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f/LRU8Dj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB164C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760066393;
	bh=9G7LUkZ2pHmkXopP/hQExfgzN80mFUuRd6Uc89bvmZ8=;
	h=To:Subject:From:Date:From;
	b=f/LRU8DjI9ZW1lxbehA+/FcteosMRsWrIeYFxzYYfCnnIZVQone9SfiqH3Yxcxwxo
	 Wbx/J17tabFf7JUy8WTUADAiWkMEXKw04tMQg1FvtnXx95WHXH1VPowagt64hZ6hBv
	 xJzPXX5sz6AmlT5PpjLYHYQ7WxMc6Lb1VtMezfievXdsrpotLNrv0NNWhhe24ProOk
	 4y6S2fL87B0uySayk8bYzpTGhZed8d2RN4rTqFWaxa0YegZEKmYzGY4shrfBZa9gPs
	 aMufRWTv3dDoqpz1DhVm25J3fIMhqQhZb5caq/9goYxxfwd618enxcE7WuS3yBCkZg
	 g5fwQFoyK9oWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A52CCD183
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176006639359.7139.4112885883764183504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd628011414bb46527ed937236a25cf529c0ba3c1e1f9c0ae67e14286ce0180b
Date: Fri, 10 Oct 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760066393
