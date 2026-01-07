Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328863C2D
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767744834; cv=none; b=GKAA7ZgOmGMduX1+FCAXJFsQWnAuPPQUq9f2rrrmq25lBk29PEJT4/V8UFTBueVA97WymVgAoKlnZOTKNNuJb0oG1KcxMqLeUqSHm5F57qZcKPgmZs4fO6zNtibzrQpfo5f3sM56ZU2wM84A7j7kg2CKn64y1B6zCaNpd5olMsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767744834; c=relaxed/simple;
	bh=Vq82otaWevrE5G1qpEutDAGS0fun5NTWpdA3UKwLck4=;
	h=To:Subject:From:Message-Id:Date; b=mK7758ASDaKTfr+Xj7PiB0CM/Pv52H7oAfr1dSLkxv7nsxjkfpojrlcIgHwicxOA6GSCaeJfARdinzE3AYMmqkxwwdt/yFxFin3U3jR0iSMc9j4qDymMxrM/qxeX/O3OjJSKwREB2XoXCt3TowykNDAgbcT15UmpiFtccdVFt00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIRghB9V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIRghB9V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA51C116C6
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767744833;
	bh=Vq82otaWevrE5G1qpEutDAGS0fun5NTWpdA3UKwLck4=;
	h=To:Subject:From:Date:From;
	b=NIRghB9V0hRqGXThjC5nGyB1jUoDTVv6WGO0UdeCvLSL/SA5IcCw7iwZ7h/S9GN5B
	 L4ksBy53Y6n3fA9p6s6LXZIgScoq0V7X1qR5070dotb1ajqih0Ogff55WhbBpQKCRn
	 amk+OzdZOkhGf1Mtf0w1xN0+N8Z5emJt0bzLKNaTfA9azbLm76E+YqUEQtTXPUvwpg
	 tM6+aPj0WBemE6r0JQYHPDA/4JWziO0lfTX/7mlgEOkMZFT9Q/WNVa9uFMKTggtJWd
	 ZWEKZBnJsT9gFLlXJdadb+/lkVbfAQjSACWIF+tSwLqQo1/u3qSo6ND+VVp2kVQwFy
	 S+Y+Fh4JYYN+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FCFC9833F
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176774483360.23070.10598662666716432519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05e1b020c73ecc0f165e1864f5257302c4cf02a6cdef3d7fa1d5bc032be20e68
Date: Wed, 07 Jan 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767744833
