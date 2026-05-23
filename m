Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A89315D23
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 06:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779519154; cv=none; b=jGu4AJ4Mvd28gddclK+48s6g4l5713kQMZW+Kb06q5GUP0YDR5nS5DOf3DUVS6IDLLLrh7bbUhb7O8nNuH0SY63mZov1Wlw53lFbi8jgzM1F3qWFvjriQaHNwzSOBHtkw2h5KbBGOJ7SWYECimW1oN4/8wKRFUjBZv61Zt/h3k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779519154; c=relaxed/simple;
	bh=cyAxI3x06CZGpURRuvx2uYiAmAAlHulUBeyAPM+rinU=;
	h=To:Subject:From:Message-Id:Date; b=f1cnKDQ08U+weRiMVoq4eTnoaS+rLX0xMg/5N0Nyd6bFP0AePOzsjrLTh2dS7s0kGvWqtq0Q/QcyoDU1DD7gA+XfpFqawQkPfNjzBMm9Dvw0UIP6+rjoaANnbUU2g6rfKawBo/UyLW2FlmZah2SQF3OaA1KYqr0Q0H1Bksdk+kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q3dOVsWG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q3dOVsWG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3097C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 06:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779519153;
	bh=cyAxI3x06CZGpURRuvx2uYiAmAAlHulUBeyAPM+rinU=;
	h=To:Subject:From:Date:From;
	b=Q3dOVsWGi8nwKPCeTpp0k8MTGGwHGMspGp/DQgdvL0g09n0u0q4JnsKfbFPA0reNt
	 6u+FUIdzn6+zMp04yNOxICeLhCZLSZdzOtKYdvy9dGIpVgC1qjad5zsLvbYsy+mTyx
	 IO8SbB0jxUHujI78NjZgfrGdR4B8K7rOoZJvvZhTE8WJU2AAwDcxCzjYGEqB+9QZHh
	 jool2zwo5Rqkyj/KmivLTk3vl3U++hv2+rpMhBbHkVOUNoG6ZyxAA/usIRNrEThQL1
	 K9IUklMGdPpIYUGooVgKVuzGoti7ddnCaqn3qToM1wZK7gpVCC748LPMnzkPyTLt9N
	 ZVE87wRnwb/Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC15FCD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 06:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177951915368.21679.2131777845856498507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2819a6ce5fe45f96c027224548783f898c3c37349886e07919d3d77085dd15eb
Date: Sat, 23 May 2026 06:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779519153
