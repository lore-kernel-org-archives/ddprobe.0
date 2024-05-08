Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07EBF3FE3F
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 09:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715161943; cv=none; b=K0cQ/sR2j/FygbsWRtpNI/Hqduu2CnGtiyOBp7iP6Ec7ZO5pjpDDFfmMMKT0SBajFxvjMoYoAppAuw+hOTlN2DFwo2AttgniOFlM+jO21P9Ru5VIyYM/g6h7xYtqXWIYywKpPN3uGQPNDx0kYynI3cozExdBvl8dY+BiPQadm0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715161943; c=relaxed/simple;
	bh=m47OqAjGkn0OG+znjRvfBadrJWzYFjEUgeiZpA4RxdQ=;
	h=To:Subject:From:Message-Id:Date; b=Ed6vPXZO5sSWFCQiiHj6m6q7CSSzQVM5cjnQllJ4QdXx+A8973w1TG2hHWE4Fmsb3O+0qXIHrL4uWf+TbL3cGKoIfG9qvOFOd8k12+pGonSYeB0iYE/ird/8SAshd7Fx8cSMHs6bmSXKLLklfnBAZj+pQ4DC3aXMuOBJFUScPWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OCW6fsoY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OCW6fsoY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA3AAC4AF17
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 09:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715161942;
	bh=m47OqAjGkn0OG+znjRvfBadrJWzYFjEUgeiZpA4RxdQ=;
	h=To:Subject:From:Date:From;
	b=OCW6fsoYUlvPQ+tDd48NwTaS51ak5M23bnxcvepCrm1yjKo3guLID8AGqtYXzdQl0
	 AxU5qolpQRU7KisKaFHvmuW2o0fCdGPUhDGcq4LoA0egSt/dux5hlnqEMrw5q//Vi6
	 rrAf8oE346u9EwRHJR3TyU6KM2cxYK/QaghQY0qMXUWmRE1CvoiD3GJOSF1yW0IDy7
	 6T51fp19/gQzw+ec9L1a2vs9fHUgEqPvrc23ZuZhRJhXTyOEk+0hKFvhRT361NA1tE
	 2S0UJBaWj87V/QiTvRzS9lCG4pPK+TBqzqa8PLvo12MlHAiDvJXzYbtm5QJmcZh5IN
	 lKh4kMuu8NqDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5332C25B5F
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 09:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171516194279.22901.4912936935034523995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f124808a83f4630dda5dae3d819bb4b31118d146e385f394309e773a5b5b4564
Date: Wed, 08 May 2024 09:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715161942
