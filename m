Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159A01F131A
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762260594; cv=none; b=s4BNn63bcIqaVZrLclF3g3O8KMUiNvEUQzPjDuxzufHktVgYj9K+U9KAogZ02sZtRYD99c2VDZEcr+Zeo7Lgy5gMmWDF3THCMa9W89aaWvuJGjujzAuSbbSZORcGFd3OpL55serJ3rtxcPAvSX6rm3PZvXKyZsZsuh54cjXPFhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762260594; c=relaxed/simple;
	bh=aejfWxKWpf9LBsCCZZWWccV7oyv0YfglWUNDFh9hgzs=;
	h=To:Subject:From:Message-Id:Date; b=jppuPIsEv801xkCJRHHqE7sQEFO3pj/RxAmdXxdvKmtBVxapkSzEY8Kyg4s9EkZ+wGS0Jpg5ZFpADe/lZly0Q3/pcPx2Vv7rPCibRa5FFChWGu539xUTyTy1NMYRhgklh2OJbLY2JtdtQV8HFQ+qQioLgWmwzjXsLskyBryuvYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fsrEBzw2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fsrEBzw2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E9DC116B1
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762260593;
	bh=aejfWxKWpf9LBsCCZZWWccV7oyv0YfglWUNDFh9hgzs=;
	h=To:Subject:From:Date:From;
	b=fsrEBzw2pidz52SHbN4Bcji45mtmLZjRm3jLdD9DKPe2ovNJ/7rq3EVfJtEl0Xn/1
	 zlXmVI/NR1RKXXNaL+iXlu1Dh0/kUO+rvsZwK2LzZULQ/Ru0xB7Ia4fQOOThL1M8Xp
	 HqYyA3nMHhKWHhHvIm8cMcccUhYrFkPvzdu33gNYxMyLIs68SezcYlHPcQrI2LKFcY
	 Cp3tqB1BVtkND7bzTjKjOtiOJEJBDuqbnyqDJDjNO6yfD9hCqgxLil7uxLDAbXJFNr
	 6W4QJCoGLyZljU9WBmugv1LcY8i0VwZ3u2vM14TocH8KJ3DtOyREG9bjChaO6t/Tvb
	 CeB2NOnKKCk9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E81CCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176226059357.26435.10226439088154101484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d80c32fe7730c5b252a3065c40b0d86bee8ad4c1cd58fd52bfc3dfbfe4c0aec
Date: Tue, 04 Nov 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762260593
