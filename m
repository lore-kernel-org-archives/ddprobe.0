Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493033624B3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785298234; cv=none; b=HseyQjX7klKDy8iw6GlsGIyKYDol2IDGJZTzQzAjyqiYBIghSlxLkSel6rX+jAvUpSjDGuc2+BG6QnQqogZ65/THf36ypzaKOiJifCOWRvxa02xn/K7rD4M/tUHA8W35x1jaUfygh8PAqPBqH07rgMTw37K25iB7qYFESbBFXwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785298234; c=relaxed/simple;
	bh=Y1n6Awd0jl1a1L0l4UGG+5PzqbVAASV131AFuCcOpqc=;
	h=To:Subject:From:Message-Id:Date; b=ZyzwyIzc27hgJ35IzHh9VJd/v8majOsGK0xcf/4DwEcNMkvFzpvnYxGTU1c8PvL2GfqX8HRpPvSkv+CrCyMelJNSQuooVW2xz7y5d9jh73ILx7U1qNQkf33YGRuzpBvnqXMtdhh9ySkGRbykav6hN+D11XGkJLuyv0F3T1suamQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIIiu0fA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mIIiu0fA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F8EC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785298233;
	bh=Y1n6Awd0jl1a1L0l4UGG+5PzqbVAASV131AFuCcOpqc=;
	h=To:Subject:From:Date:From;
	b=mIIiu0fAuPlzV2gFmlw44Fw+LAdnPo/pLwDxSFKJLIYYeOsEyTwKnyaOovUiN1vfW
	 AFbHxF6XVtAOXTytywWbAlAZVBM5vJlB9KtI0WqYUhAD6Bqd/PjqVC9WgxnppCtJR3
	 SZbAQWEqKgWotA6ZakLD2LJmYv+UiG2Hz3pq9b0q9mENlxX/tDtuhhV9t/L7bgvPHU
	 GN/t3NfjBrbdVbqjBkCM1k7XhujPdn58uCMGj1LiF5y55D0cTe90Ek1ZvHVFcT5dYV
	 O9J2hjaKDfHPUGm62LwlMQ9hSFFP9bKp8pxcHXiIbsTDxzpqmaGHLkixoD6q53XF1C
	 BqMM0fI/DbNjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7CAFC53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178529823368.8459.15278699475268646547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b8e3fea2ca44d00d1e72acba5bfee2a70bff71438226fa21f0c65e146ced94d
Date: Wed, 29 Jul 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785298233
