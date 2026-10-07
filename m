Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4783064B5
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791337234; cv=none; b=b1cslXXTL+qnwwyistohiYZG5Y3085ndfdk05psUvEgI687YJUwgKy0p2FUYvRa35zJcwYvISkHl0tatBVIawRU4kw+ZJVePm11Ji5iXW5dlhsi1eGy73s0V3pZ9pnwV7HMthnB+1UBiyfmBPU7c2frmKL3HziAuII52AaC6Ujg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791337234; c=relaxed/simple;
	bh=dWWbwNFYqFjThV21Oz+XlkDyo39t/Al0iSFiCxrMcno=;
	h=To:Subject:From:Message-Id:Date; b=UYVzeV8izgvj2Pf0EGGXGhj81GA1N+yShYEmsKF9hIrlu21hR/SDjOWnBskEnDUjhw/E0L5RuoFwXNL57spuZcGqTkeBn8saTYTbo6zO0a7UelgAxX6olJE67z+mjE/Jvcx1vy43VuvOJaFz5ZuIjTcv/vWrruI5LoVFKs1BAk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJZK6gj8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJZK6gj8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EB7C4AF60
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791337233;
	bh=dWWbwNFYqFjThV21Oz+XlkDyo39t/Al0iSFiCxrMcno=;
	h=To:Subject:From:Date:From;
	b=hJZK6gj87zc2nhqHilGLxJlEmr3Z5lNmh94Dxx5Wsy3ntwvhzaJ9GuABrNXvPNgs9
	 dczCDsANd7jfJeRh75tzXoljxzOni9ie2f+ZeaY59k8Ty4XGU3L0d10Zi4W/yLj09l
	 i8jV2fRx/wecfWXQ2XBrQI/zncBJCwtVn5D2wmYzuAmXrwFxECDxzQ/BywuxEgW+UF
	 AhpKYicQgOgP+IHgYY5lMNEFatJy8yJYE0yiRwcipa25OM+/43BVWKAQ4UIVROYfzD
	 eAIOXcbpr+8c3KLXU5UzYbe8vy/Hm4pybUmpAns6UjHHSyT1udLIMubVyJaWvvwZ0m
	 XFzQmExEESg+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0877CA5FFC
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179133723370.29190.2903277143603638975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dbb25faa137a5491ee967251573ef8f60eca8f2f1bf0f83dddace855e7d831f
Date: Wed, 07 Oct 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791337233
