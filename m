Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B6A1A9F90
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771661094; cv=none; b=tJYd85u/oSNN84Kr6pW2xmIXZqX22oCxYUpASKaa5zfMCLRiak5286bDH8KMUJkl8q40yTjNrzpKS+XCW7qjfmp+sNVFQGJMb59KDphTe++nipvxa0YR0khcT+uFaku8j5IjGe80v8H8pad9wa7crpkNwZf8Mq2Fs+S0qAJ6Gzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771661094; c=relaxed/simple;
	bh=al6UB/7TMyHHs78o1NvwICzQkcBc59llQZa0lbhYSBw=;
	h=To:Subject:From:Message-Id:Date; b=ljJugQ801jYf+j9+a/s1bod1xF6AJXMRAC8C/az5cLAXvp0U+KzEcrosNz/Oeu6teUp7IyvfJ5h9KLk29W8wqad2e2i2PLb+sLbnukJe6N6xnCbUfCwx/MVa1PhCzNUV9pgb8JJvcIo972URXkNNIwZHoDWYknF70MmVPiUSnbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJe0wqSE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJe0wqSE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9540C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771661093;
	bh=al6UB/7TMyHHs78o1NvwICzQkcBc59llQZa0lbhYSBw=;
	h=To:Subject:From:Date:From;
	b=PJe0wqSEvW/kJLF75fGR+kswJeK3vU+DdMFD9LcLGROhjx+TSyTcCwZgAT8z9aNnx
	 7hFwluCqed+o/BdbxiBK86s3wiKGSeC3Z8/ob62VJUQY2aGYVKPWw3orHQQgEmGA76
	 moQPEjjh4xQIOpMVFZgBgzo5xcROIKve8LGlG8qheIWnkBISKD+BYt1wzqtxkTnJLj
	 MScgsA1QRma6EwPOmndP5K+BxJx8vysWL2M4WtwT99UdQxeh0iPFxzFe1AB6nVrLCK
	 Ql6M2vVAEBj6N422IUOHlwvi6t3a5SdC2x0Nry6w3fHwgZfFTQvpVJAq60Nxt1hNbA
	 RRq/4/a0LbKZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1A33C5DF6A
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177166109359.15906.14205239838941808036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 754f32ca9df46730edcc099568c38da7c3dab070f1946261eca6cd1b328cfa0f
Date: Sat, 21 Feb 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771661093
