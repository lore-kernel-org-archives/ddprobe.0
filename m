Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EDDE1C5D5E
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 17:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782150994; cv=none; b=Kd8LLeTWtr9XppSL9QffejGD8WM+7Hf6ZkPWLUkj/4nMzQksLepRYuGlGNgIya2/RwaumC7BRbifsEX71sK3/MB06OWG0nrzeEviTpjZKMcd3Eu2PgI1c6sBoXsCzGdmAIiIkt5Fj8vQWDFkq460wpJDxNrq4PVtrhXLyKocqds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782150994; c=relaxed/simple;
	bh=9MOEicyZWCZYUyNzum8qBXZHygNUmn9Fl69Jx6bUaww=;
	h=To:Subject:From:Message-Id:Date; b=AIfmDpqywzL33LZJZfycjeVcCaHmj9qCrisqQdiASIrtxpK9stdbWod4yr7wae2cXeyvCeVRPy+KL6+EB+TB1MTKlBGNkRu5ONDoULR5dVm771A1prMpDi6engEj8r/qfItFpfHhsnA1y6SlgIkScmCue59iTK+Bu6EMGz6YVBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8vbzfnq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8vbzfnq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16CDC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 17:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782150993;
	bh=9MOEicyZWCZYUyNzum8qBXZHygNUmn9Fl69Jx6bUaww=;
	h=To:Subject:From:Date:From;
	b=Z8vbzfnqbVwIPaI2kxPgN11YDAbUVeMCOQj04YBH5pBAMWe5kvuXR8eRn29aoO7Hs
	 7bhWy0RYZ/R+2/3AyzJiXrtrS2CQ6poS6l5GIHyerA7SkMcpn021LE/qf2legLHgps
	 Bnb7E5Dq3ek2r8Ts+TONOcKOcUg7XE84o5l23MTieSzFUQsV6DqfTXf7KEbcDL5JDm
	 VkxiXzlcsTRUIiidUZCk+yzh6Q8C6fb/gjjhTkOPH0pt5DUbWaYAlZNFNtwqkVQJeC
	 Fkibn+N9HpFxC4jKm4EwshTNYBkoSGu0sd3K0ySX9wh2Ry8QBVyAz8Gfag2wA9gK6w
	 OQzxri+NhJx0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B31D6CDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 17:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178215099370.19790.13552756660761589902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31f8cb39b3e1f8abf50b7a7f0a42076938b43b7235d286a2394304763e496e14
Date: Mon, 22 Jun 2026 17:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782150993
