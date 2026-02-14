Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44450256C9E
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771047294; cv=none; b=aTYILFIArvEYw0qLMscNzP1YUJRbI+SOy8LcrjRCkQmo7PqBU35E3c19mTnfQd620JRRglI2PxVRK9DyYwXYU+RTGPhnu+Tu/de04FVCwYtcIereSteUIEveRAGc+aBIAYytxhQ6FOmQdU8g3e5JHje1j/FKdccpPaJfqCvVQq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771047294; c=relaxed/simple;
	bh=0FsQ6YM2BTAwW6XzPAj1FwakEbyhVUtU7rSnpUFlH64=;
	h=To:Subject:From:Message-Id:Date; b=Btq/0AcY7606S/JJOCyGZLlYCzQ/pv5NO3/L3WP2PL4YYqFpfxw87gO430cUyQknUNqdZkOs+ttIw2hXyVH9mqFCyCGeWrEKYdIzc3hm93DGADnuINIS+GyQHU6THxUP7Te0kc4NeH4rAphTL/piMiq15THzAjIxEv1jLMtlP08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TmhQ0f3E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TmhQ0f3E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC9BC19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771047293;
	bh=0FsQ6YM2BTAwW6XzPAj1FwakEbyhVUtU7rSnpUFlH64=;
	h=To:Subject:From:Date:From;
	b=TmhQ0f3EWdgvppjY52PjHgxCk/EzbUbmYpa7wSdBG8pmz4XUEo4vw5bRIRv7NdzAX
	 yVGpqLiRJiZ2mFvT4iC0RbSMjzhL6zc/JTyVcwsN8GsYnsHvVnpzu2gq5x10CV8ZVD
	 Pz7Be3YNIbkAgMvV4KpYpLUskgtMJ/JV7TnXUoFOLHYriSHLCXylKeQ0WyyIp0LJTD
	 UvmrLmgiKdzivSrFAWjcnTNW8z8DMjMHoHwh5SOdjvFbW4sjJZjA5XtOQoAANwzM0E
	 Tv9pX6PLn5MeWc8dVMYrXL9Jq1hy9/AXZ1CUEkaD/zGRUxtugGDPHeWXecBqdYd6Iz
	 B2ZMqbgYFELqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2454EF99FF
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177104729360.1402.13394838745610290233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9416d25ff41d748a8d96839bdeff36f7114afcaf8dfef3e8d790bdb1aa2f289f
Date: Sat, 14 Feb 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771047293
