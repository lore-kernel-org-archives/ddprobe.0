Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DBE3C9EE4
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785903634; cv=none; b=hpGPKM5KOjTrSOsWM92KGpW/yL24StVB+vJI9nD8m4xWAeK7F1K+BFLgq6nZ80z1p7xW8UiSH1L8MtEKOFV8NxLifbSuU+dLcQfCCmbDBU+0kd74fVjZaQa/NtFclWmEq/mMayoL6yTEEhIb1/7eRwbv5Q0+A9JcrbPg9X6QjoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785903634; c=relaxed/simple;
	bh=g9aoFRhvbGifygO1iGOgqdD4WOsfzWXuHm+H6wghcjc=;
	h=To:Subject:From:Message-Id:Date; b=K27dMwrZu0EkVgWvBUkyvmSR/8+tSBhqAMp6J5QuN8emmtj46TAIuuMqr+v30v2hyuhD/5Jz5ZmEyUyJ7RVJ646YO3QrUOf354I8xDvUdwUrfacIugl7o997au/8Xbua+c6acKPjIoqL2j5m0Np1hJhuy1rRAKLOJ2RUlusz20U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGK2EBdB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGK2EBdB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4CC0C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785903633;
	bh=g9aoFRhvbGifygO1iGOgqdD4WOsfzWXuHm+H6wghcjc=;
	h=To:Subject:From:Date:From;
	b=GGK2EBdBJbUXmGlkiF6Vh6yl0T8QRzLFx7KEbLGkop6NFukXEf+O8gxkfPFF5F+vl
	 eppgh5nE7NTqXcmskOghZI+CqOFnLvAhsHNSGXL7IOMTjCdt3JuL+eaEN7j2rnEZEr
	 IQqjQzMXVdORYmFyAwrX3KQw3On4saWL0sm8/uCxztSTzRT2Y5iA1sl9XYkckTsXAQ
	 Zln1b/GDbMbYjFCWZF7YA482LH+GWJVSoVjEV8nZcR8D4yZAgzmRG+U1g9/04HqMnH
	 8Sq7iSbzGymD6ZupVNDmNmnACVoySd7gGaqrKf2jrBSRSSz1R5bx41m8aubDInuoso
	 lO0tBDCtKDjqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD995C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178590363373.30447.12570976135208801219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2986b168b006e79a545d961d97e719ba68c04da476c004a154528a332bb8e47e
Date: Wed, 05 Aug 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785903633
