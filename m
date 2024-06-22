Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD9A2B2CC
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 07:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719040943; cv=none; b=hQj94N3OLt3NKSRgClaVbzyVbfuLA5dVnThOvPc0L3kCZ1sMl+oWEvIcPnRMcN8ncY7m1tdfhaQdNQHQakE3BhOnHeYimcL/vwFrB4zxuhNBVsnQBBYhQzlbAUbeY3dp8hOIDZbgke0GKB2EdmtzaDDEPMgKFPIjd6UjwfRjR3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719040943; c=relaxed/simple;
	bh=rpT3Ntn5DXf88nN4W8fmzdom3T4KgOugWpmKQZ8o9S0=;
	h=To:Subject:From:Message-Id:Date; b=bzZrgYjn+OkXwE/8gBIOJ6mgc62IYRJd/fSrXSepvMfzPiL6tsCxWl/MqCpu+WMXFxdRXaukKQfyOmaU+qrVKC1Qa2bKhX9J02fx6ot3g6ycT6JEGhCFnBw79fNP549SrafUeVorG+DGv2AxA1jF/pSxXR/jYB5Yy2SqYUx4BOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUxJJYWg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUxJJYWg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD500C32781
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 07:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719040942;
	bh=rpT3Ntn5DXf88nN4W8fmzdom3T4KgOugWpmKQZ8o9S0=;
	h=To:Subject:From:Date:From;
	b=jUxJJYWgFXrh9kDizFH9FZbWivQsO99nsdwz2Ti0iL+g20gCOQVxI3wlt91T4paEK
	 LcrZlcVc0aE51RhxDgkUppclYXOzdlJCkugNVJFIv+SyMTzqksywsRUAwek1Gl2Znt
	 6LEh2BidGdZEP1KWM0Ghmiv9rYt2ov2PC9PN2oT34OZU2bZ2qj1JnzcFfTFCbnY2fU
	 UxUSCWUXtL4DslOa3O84nGsWTsieXh8d14bks/rh8/lGp1kd/fqE2d286xlTS9Rc/N
	 3sZo0v/zSb1gfcZKnFH6mDpBmeA6p0RH+AKvUlKVCVc917kDGYrpqIS97uBSsKXWk4
	 sIICtfiZwkBXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5578C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 07:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171904094277.25391.8140640313181739808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8045b1c5657e39716a2c815949bf7bc441b2cd5b52a6b26a47dcdd939fe85ec
Date: Sat, 22 Jun 2024 07:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719040942
