Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468442AEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786801234; cv=none; b=aEvVGPZrcBqqLWkypz5qt0j/D5Sh/fVApxpWj9mYCXf0B4ytegnYgaZexjhXxYvdn8v53sH4f4r4GgYxudjkMj1Z+gLY3g7r85Rstja18DcCnx3oRLQEZ0RRoJdnno1c88NzB17ECWbCft4lnUiDfB+MPMQ/Wfa7VloNhtcZVMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786801234; c=relaxed/simple;
	bh=oLAVRj8z9MsmmsBErDbT7rOkRIZPvI38OAsIreXHJQ4=;
	h=To:Subject:From:Message-Id:Date; b=elU4eJlLGa5y6cK+TO/sXBZ4rd8lOnP/1nXtV10VV1HW3wZx4GV4TLxLW0A3D/K1cW6okyHuN7sIa5+C35QwMw0S2vXAbF10wVRdugpzGaQ6JqIaGwYkHnfWC5E7w3eEFBeoxMCqs/nGXRHGaMOYVTF8o5LIQCxhTPAqQL0TMnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/rNaJMK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/rNaJMK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE2CC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786801233;
	bh=oLAVRj8z9MsmmsBErDbT7rOkRIZPvI38OAsIreXHJQ4=;
	h=To:Subject:From:Date:From;
	b=X/rNaJMK2ONeE3l4Ws2viWBQrfWIae2i0y2KAEGJDx2Jc4V1qhH4lGMsk8Lc6JLtw
	 FBoMvzhtW544LDRIb3CZfezOjFiuOqjxUpN+EKnqlK6/f8S1NFM1M15DFPuFBCMRcw
	 etrgZF0JnkfjFFWPRswRzp/MgRENRb42PGcrzka7vDxfDQ1Idl5KVSGXITiJyETW/s
	 fb1r/YAYBYLB8YLTbpAVwMQEylKfMLuKPoV6LVHsv2dHq8LzV11p7mfh3EL6vuA8XX
	 m2AHxQ62m4gldE28jnRZwRgD2ynTqKJlPfExdctMDdcfqNjCTzUUwX7PTMmrWIlnsY
	 BDsVX6YzYykog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0EAC5DF6A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178680123369.612.6416381432919224700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d235f38bd38bbb1874f385362b8a73e695fc9f8869e6558cdbdfd4c40e55d326
Date: Sat, 15 Aug 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786801233
