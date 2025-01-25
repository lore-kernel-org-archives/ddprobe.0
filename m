Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463094A1D
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737816954; cv=none; b=rH05mx+hTBOHvua9OXwISvHZSEBlGiwdW6JqYv901/xPUTQra8xwrRAWajU9JPxLbBeQK+j/Cc/vxlgVAZQo0yWs+vQ4cgvJbPvwtqTeb/gsFJuZ6CNzNrwZOdnzQXUYt6S4tF7QAjyUDwm2kCp2Fy14NGXwQJ+xhk+N86Gadro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737816954; c=relaxed/simple;
	bh=WQ+m1k0prqZmTYOO/JDBXGVcoD4rZvSm8zGpRL9TQXY=;
	h=To:Subject:From:Message-Id:Date; b=WqpKAUVzKtbG4AANefO6L4cdipuaKuhAc5Uob3CM5yN7mxJK/XGzXMZRZYP/ouq6a56dYWXsv0euOCoubZNoVIRY7dcanctERGhRVOvwW4DoDxR2nnfPRI6m5LBdHEno7hbBsDUzpwsjMJRqMx6i+gU9tHA0ZEx/1e6MAIxLSrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sy9bTrLP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sy9bTrLP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D5BC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737816953;
	bh=WQ+m1k0prqZmTYOO/JDBXGVcoD4rZvSm8zGpRL9TQXY=;
	h=To:Subject:From:Date:From;
	b=sy9bTrLPQ9zvCqkqYzZ56On8oXKknkEyNdUHHqyNpdzMKkg2iQfLb/nezDRvWZkjo
	 0GK2BE8qAIvYk3sX0b7HRLzpRh7gugQqk5iwAwdq85ehfJ6DDXNYTqdZdJQHfqUaTJ
	 r2so6fXxOIMPQQygc5F4wrIafMdVl+K98Q8frw/QGwvCsupGK4L0txwHP1sLJ3kt8j
	 vLHoZy4FptARzivwEcACu/r4x/J1CzkHj2wIvJ6MH/r77unw7PlwaH3IZW5W787KjH
	 0l6coQ5tJCgRB3hefR/J2FLJsvRViqm6ukXAOmAOMEBeDpFf702QoYWi74/gNJ/Omo
	 uiXFlH4U1bxog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F604C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173781695358.30962.12899179013847640890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a9d4145a223ad7de081872430160623040a298ddc2b8444062eb1543b78dda8
Date: Sat, 25 Jan 2025 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737816953
