Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24084233133
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751917794; cv=none; b=KFWsK0rq+eov3/QIWEdN7KT6JsKUfIGQsJqgcKWkL6iyTz1rQWqrB79GS7trW/tbJU5544tPO+gawtOhVr934JbUEKB5gwvmXzupTGGRQ+Qc7GyF3VF36bMSJqYxtMgA+j81iAAHqDdHCS97WB6Nv3zMiY4/TxEzjCNrDIGJsi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751917794; c=relaxed/simple;
	bh=0QjGmJAoiXhyag+/yrwJZId0iwR3E/r0UQ38fIwH27Q=;
	h=To:Subject:From:Message-Id:Date; b=O9Q+VJwxynQF5qInpQFRi41p8BWzz+QWgxMZqEBf9po6VJXWA5AV1aUp/mf5Oz5H2zs8CS/Suv4t6Rw3c3i2b5j3hF3D/lq84fPcVRGtk1Rtpkn4L5oHlHwqgMNiJAe/9uEil9rARCQUxc8bUMNHRsBEldfdGks8xRBocQXnT2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rSav4Lqr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rSav4Lqr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D47C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751917793;
	bh=0QjGmJAoiXhyag+/yrwJZId0iwR3E/r0UQ38fIwH27Q=;
	h=To:Subject:From:Date:From;
	b=rSav4LqrqxFq4mjli/485kSG2qZHFCxOhgJSPSnJygJpVmtNSfQjQ/SMvABqrGhBG
	 CFPkZGWMRCmvd3q8mQ3sSvKdBzJZvFbrCZYHmtAT2ZhcrPDEoBEZgIjVa+ClJQkZJh
	 CqhNTEMC6dY13jkekQTVLXq9P2prFJsYgRU6IN96ONkv8rrvtEiajxf9tnKKgH7n7a
	 mC1Idq+p8517BKYTdXRnMNPyO0rEBbM7c8720JvnQJhxMKsv8vubKwJbnYrVe8eFee
	 u6DbWe5Fa8cOnsEq4bsmo3Qj56k2hyJp+w2ttPUmJJkMlgjWlxBLAi8X74E6ollKP2
	 XXj3T5OV7mFQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934E6C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175191779358.3398.14065754082985458759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a160cf39cf3d5f5aa60265763a141eafbceaaed3dcfd7bb1ae813249b7d395c
Date: Mon, 07 Jul 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751917793
