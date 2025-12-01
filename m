Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB06830EF9D
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 12:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764592973; cv=none; b=ns7JerDXvArYV/Ub6yRUbCD1UcKP4+hUdK90YZOxRf7v3CcOKa0H6vzpijCu0yErXEW3ZT6teFi3U5BMcHYlqmpX+Mr+d5JR1v5dfNasbexdKLYJv3e0cW3u31WYOdlm4zVsMjBRWR9MZvLb0HbJCg96b7oT5KHmRu8f74L1070=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764592973; c=relaxed/simple;
	bh=ZLTX8z1Fz3Jz1yHE9TVfJ0mGEmINT3DjC1ogWst5qZo=;
	h=To:Subject:From:Message-Id:Date; b=eOkJhVRfkbGcKo7BESUOkjwypaAOk+0mjx+yxhjsRqXW12xYJMmKkrgD1nePi1VbnD1KEVCC+ETRpMl5quk5pPAl0GQu6P6IuqpMHAvw6eKei/myJizf+MT5ntIL0bKrP6LDT4DXLExO9WFRf9g42LbKkiAjkNuEX+S9EThqG5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uQioeC/W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQioeC/W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8068C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 12:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764592973;
	bh=ZLTX8z1Fz3Jz1yHE9TVfJ0mGEmINT3DjC1ogWst5qZo=;
	h=To:Subject:From:Date:From;
	b=uQioeC/WyHTN1QElSF/6DY1VabYtWAcS9YcOp1ZMJJRrPtBgTMHORgr2/2NJl/KUE
	 vFQ/AV/o6WUzUJCT+yT/5kPl9e4JqKJ5VkNsuA+JVLYNimxkGgVneaMzDb3Jl8fHms
	 JphKagj3y382fiuGPYK8IOYsVvyrFgKyA1OoGQ3Tzo8SXAgrzpytsAFWYDFqNorftP
	 UgxjQy3eQHH4kFM4QqYoJ/3SyvlLxgXeOcb+nWEgct7EWM31BO/RgWuKdjzqKd3pC+
	 TqCJDkD5A95DGnvmcnSFttgwJVp8wxdpMboU8yf72eilij4MWuB1WdhDKVrI16iori
	 wXREELnrNLOKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936CAD116F5
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 12:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176459297359.22238.5300143846317361066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7304080aa0a6631a9973dd221e1aafc1272cfc5d2ed209a482f2f42d139c3ed
Date: Mon, 01 Dec 2025 12:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764592973
