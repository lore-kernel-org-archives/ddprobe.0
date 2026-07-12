Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD752E414
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 14:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783865914; cv=none; b=LDYEWhZCCEfRak8VJi5Kx5mVkXQLVy7ryNoUwz7k694pHZc5wjk8hJR8il3mQwy9ujxAYt+GHeGuGDFxzGIMsFgrUkmcJFps70RFCKyLOjnO/FvFhM+2KFdm1rRpxbb8yKYtrI2nITjrJ+rVw3cXPQBT6u8ZejlcsDy97qLl0Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783865914; c=relaxed/simple;
	bh=i4/NSPIn5xUcLdzRwkpqiaKOGx2Wkns9cqno1JAEF/8=;
	h=To:Subject:From:Message-Id:Date; b=BKakz1xZtbgaLu+TMoi+SRVijDcLDLrhX2AtWcfcEsmMmexl7NQtu2dHNTv7QFdqo8LvhrwfYFhpvYlJoEmyqWVjaBWHsO1zXiOjZ1d8PdYWwR10Dfw/koV8jiMU03O0OaFd2vQNsBj/BSWcwWmgiKPQf+ysZdNhqCB4j77p02A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnXQWtYy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnXQWtYy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADAAC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 14:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783865913;
	bh=i4/NSPIn5xUcLdzRwkpqiaKOGx2Wkns9cqno1JAEF/8=;
	h=To:Subject:From:Date:From;
	b=jnXQWtYyNLbu3iLz946RReTpdafsOrXDiTPSCCnyJvfBK9kmmzB35A/vzs9KKnY0W
	 UXGTw0cyk8dPKTNzbyiB/l3sCOvW62L5vY4a3QHrqsiRQaaXT8VTZeuXJgBYoCOfaL
	 jpzLg0i8QpgVk40UvpQFcyq3wRAvqmh8Wm4PJm+RIZwdypl4yqJEZlTjv8/89p9LMN
	 wdgh7SNuyqPSNus3pnEBW7hKdKOCOARo6q5I7o666UhlEg1rYzLSBu0d83ZotTAXe/
	 MEC/36q7OUoSvieCtUkZZn+h0N3oZXSJayY73vF1VgveR9jbMWpGhREtgvn+VQVscO
	 G2xoHPpedes/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8288C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 14:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178386591368.3587.7731334182256819188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0c9c8880c04939d83073b0af9c04828e51ea198469f08fbeb1e43851162c528
Date: Sun, 12 Jul 2026 14:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783865913
