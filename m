Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E13922615
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745667594; cv=none; b=YbQqQmBt0Xg9AURI0TIlwE2njVZrryZuoG6xgu2BPmpOyCV0moTSp39aRe2oiZYeI8rnKbHYBaztdqBLx5WmC/VbkRL1RiI57UV5QGNqcAKEi3lXM/rV0PEcQo1EzaXJpTK+uQhU2mm5Csep/byfLYooKhCwnuUU6CMXNtkFZq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745667594; c=relaxed/simple;
	bh=iI+H+9WRiyvX5bIfmdGEJfUJDKxTw50AnM/US0/JhWc=;
	h=To:Subject:From:Message-Id:Date; b=EXHW4mc4Fai/ygj4v6JBMXYl1W4gev2SnPRdNz8XPUu6hHLxjo4rKBmPFhphQ9TT0J75f3wJE+JSYeJbPwTY9dBEiqmdSZrF4uhgiiC8OEVipZBOUv3rAEG9Z1GGssKNoOSYwfx5K5dTDsWsoNXr9dbg1kaCLBfpmIp9MuhVAnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dYtf3kvb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dYtf3kvb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DF6C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745667593;
	bh=iI+H+9WRiyvX5bIfmdGEJfUJDKxTw50AnM/US0/JhWc=;
	h=To:Subject:From:Date:From;
	b=dYtf3kvbIobEJ6G5a/QfPDYtdidGD7QJLj5PnWtaIHa6OM0KPOcsl9Wei2DDccG0t
	 Yp+JSLMmYqnKpulkFm+PD35r+LtWvLw1wkmiyr8Nxo8hyWVL4irlyN7v5E8I/y0WCh
	 N9yDaV3Ial983tCbBVLiDOwW7ZsWY7+aFaNVjPq/SeIhRiC1QDs9fybfdfarcMbRq2
	 pUbA3N+5xrS3CI/aXRa/GndrwR6E0n32k99l3SkmtSG3rKEZB6/nb1XNZEysWzu5FV
	 aHVZKRsYbIO6UuakpL2Q3l02om+6oBpXs7h5+X5IixQZmUaDuCGu9uA/gLOM71/HO0
	 qcWFCQd7ZARKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93638C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174566759357.7686.14023345784219375139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15d29a0f70dee4e4913fd4eb441bad4f5695f11979b5fc5cccfed308ef74573f
Date: Sat, 26 Apr 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745667593
