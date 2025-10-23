Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D18B2F6563
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761209394; cv=none; b=r0RUsRtEN0F+ZGdswydYE3MWHyeW5XMeImtc5wzEfFuiqJmQxn1sKHhJfWrqGZsC1jay4OECCRF+dhRUVsOcesB8LTJJIZnkgMhtwV91ZBg4ebIyfqLGyJnw5aXvJFlu/y+cHAyHD8fXxPow0r3wVtl3rOWGrD7m+g/X6kEQGlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761209394; c=relaxed/simple;
	bh=T89ABcGLltcdy3IFz7GwGfmMXsbphQWmMQ5NAgBxKV0=;
	h=To:Subject:From:Message-Id:Date; b=MUsccqn6Yltke6DGF2mPBBRO7EIu0G1xXu7Ay2/kNhNJt3VrlsHHnfiUy7xQx1yl+1h5R1kR3Tu+0emTieqr06ZcZLzRNiVTx8NfONNGG0kdiEW30V9O3Mxr//tqzwmTO62SFGNIuukO3kZl7rU+7Hw9jPaIb9q9cr19TgIQViI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpmN0M+5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpmN0M+5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2ECDC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761209393;
	bh=T89ABcGLltcdy3IFz7GwGfmMXsbphQWmMQ5NAgBxKV0=;
	h=To:Subject:From:Date:From;
	b=kpmN0M+5T3IgrE/7zmGCAFcqBWWMdCAGGGPgMhf753+DxDT9K8t66mMxcT9AEsSSj
	 ucG76I77y0aeX6Xhhdu1WmV4vznBWU9gtqCRq71cThJBB3L/YYHhMBQII8N6//pkN0
	 eQvk8qwANnf2RwzzLxdutPXwiBo7SREX492hGTcDQQ7qphcVElJCkQwVVtcRvKgAft
	 Sr2UIKRSoxCD+Bq+bHLSX9nqxqIvxZanGDcxvBQIF3aV+LPZT+3AHlotNeO+ZdiQx+
	 10N8EpIuNjGKJqX4BanJ6cmOdaagoGxT4F1/Dg5y4zoFV8E1vqdFpSLwdTPLihii87
	 QPwUVJ0P8fQ7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C5BCCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176120939358.16911.9242806244211660689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aa1f61f4a63466d488dea2aa62bbef26f593cf11b7312e81fdd94ae49029667
Date: Thu, 23 Oct 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761209393
