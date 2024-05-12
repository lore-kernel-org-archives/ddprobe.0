Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73912175AA
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 08:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715503943; cv=none; b=LOIY0UrEpUWUAS98W/hLJ/q8g81x/kuXUXt+4ojh2r/Qp6+dxDVgRoy9A7ls32HzWJCvoyBiWANicY6opdOR42EgVx5bWOt30lEhy0DrPsiN21WFxCF/NstYe91hnpdBO+Bki1zWHQAleq8duCYV0kKd9PZjuPX+ZUzkmKKA/28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715503943; c=relaxed/simple;
	bh=lz6JK+fqTfGGMR+N5In1e4LRW0YaYPxH+KY0npUOh3U=;
	h=To:Subject:From:Message-Id:Date; b=AsemIGRwgYDjlyUn9GJJsgJxVc+cUjt6JjtWyIK/oG5Yxw7eJEUA0AQ3S80INBh/GPdwIjzVt+a7Q1aqXzu8rsIk2anckPNxjInzuI3muzkhINc68DEDO1M1WswS84RaxVJso43axBeuEC3iCdA31h2wUr9J3EoRfgHBINVq4pU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oULW3y5L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oULW3y5L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFF0BC116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 08:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715503943;
	bh=lz6JK+fqTfGGMR+N5In1e4LRW0YaYPxH+KY0npUOh3U=;
	h=To:Subject:From:Date:From;
	b=oULW3y5L2HerVva+4hEereIqgcAkMrby/lS4eWGfi2Isy9YdtuZy2jknPfP3f54+A
	 Zb47z50F6ecwsibwARBXcggIQcy3kOmKyLWUqD9H9R/bmDZQQk0lW6m1rJxD8c6Bkt
	 4ECCY4cgmo/nB0y9X5F84w+LjPutTKi3MM8YfBeAXyoGQFKEfliSKyzlRoPgi4xVKA
	 jmnoS+sRoVt76J8nuxaAh9OMnRgkG0uV2ooV8aroqKjaR6cZr2gRy1sim0SaQt86JB
	 hn1PrVDV10Vonw/5PNWmmPk7M2Ibd3C81yuWEGnvHKcVHev6mFXSlg/y5C9JPRuhPY
	 rNYvxKHDXrm/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D262BC10F1A
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 08:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171550394283.918.9448395743813044030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f17e1b0a4f83c9c55b580a75ff4b8ae3a7195b30ecb47e16f6cb4715b68a3b5f
Date: Sun, 12 May 2024 08:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715503942
