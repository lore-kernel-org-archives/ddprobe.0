Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B3546B5
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774483494; cv=none; b=QbfeyZg6b28TGepNTQL2+eHbPvnHSFF2VgzGW6KTjUIa+v0X92iTgGNwZVvkapedis/gjiAaawv4y+nCUCZRQgz83Le1O6eBFMvuPZxJOkVoGOYpWsXN2HIqDP0aYXrMv9SDIs0hSRvtg2FTrnOS2GemUKNnXrGYAnulDbu2WhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774483494; c=relaxed/simple;
	bh=oFfrez8GGhbc17mOOhUNfikhifUYVs8qB5zZE0wgguQ=;
	h=To:Subject:From:Message-Id:Date; b=HxAUE3LijMN+Y0w8w1AeBYzQwq2Xbzr/vlWfaqPngey26X0th55tNXjiRU2OhPLk8wo5gdvNAaPYFpZ7SPIj7AMp09+E+zj9aqZ28G0KBvX8tr0RELckYlLthgys7RoZ7/Ln/jOUo3tVA2+RvAqOHGpYdLdkhOjcFX5LosjC1mI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F87naJwN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F87naJwN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7358C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774483493;
	bh=oFfrez8GGhbc17mOOhUNfikhifUYVs8qB5zZE0wgguQ=;
	h=To:Subject:From:Date:From;
	b=F87naJwN9bcmH4FNVeJG3P4ixYXblo98vnNtcYz91TSomMPrP++TkDhky6xhMiJ+D
	 PqAr1nsvFxQKHT+4Yll/5L4OigNGtUkHKy9pwisPm60yX3oBhNRYyM9xR+i8H67Uny
	 FcOAbpjcMqCUNDOAFP8LE7OaOgWcvkD+EUMWUGa6jrrPQF693+b4XbT4n4oTHVDy2+
	 cBTzmysIqUryxxt6rBjIg4DC6Bw7ly6YJseW1nMmFE3BLy8UhQG9g8QxUVi3tdQrdv
	 n5mdNhsuy6vvYHZWpZuwZ1aHPivnAgTOqxnNt+Rq28PjW9Z3Ph5HLmNBxdw2M70IUV
	 CwpP1Ar/B4t3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9195E109E52F
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177448349358.25242.2023866572763035288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94bf5c34d1be3af75850ba992d2750c8dd5797957c20debd683e90074abf392f
Date: Thu, 26 Mar 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774483493
