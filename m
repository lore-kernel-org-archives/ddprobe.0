Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C9A4C83
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729974954; cv=none; b=TmlBOF3ceqARiDScfr2yJBqxSsYlBnmIKiOjByxH5SqvIwu/nk0T02RXE7vWAhck+3eYWQZkehBzKCmZCZ6TV5DavOmrrTywXxSJtdjXM4NvbBT9nisci4B3YplsUx3wybo0aD9knj17Wh9LXMoUm1XaNyYmqEFDfv+zboKCh9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729974954; c=relaxed/simple;
	bh=B2z0PEQOdAaAw1Z3S0fg55Yw9Ht7dulEuDjI29uz2PE=;
	h=To:Subject:From:Message-Id:Date; b=jw/S0Gb4p2V07Gyq5yrbR+aI9dywR9mFV2w4xsldOjRl0RIz8oL6RGSCIKcouej3iIflafeg1Xr1kQvuPiC6lliYyxYNYpRVeqapLIKPUypGMPX1+vcnpZbqWpSiagfNINBrRVukI32vDPnuUvQ1Z+WvYaScbO1Ldsbc6XFNygQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kj/ErNPJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kj/ErNPJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD79EC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729974953;
	bh=B2z0PEQOdAaAw1Z3S0fg55Yw9Ht7dulEuDjI29uz2PE=;
	h=To:Subject:From:Date:From;
	b=kj/ErNPJ6sEKCqLdVwqa65P7iI67/rsk+5J6RGN4vkKqsMerzRLU5+vMyEnRoyUdF
	 6j+XDds2ws41JGeP123049xNyGpTU9cQWNR/A2cITWMb7LXhnNW8X6j8yhEnvzRL9t
	 tLpNuq0hbJsOeUIPjoGIxjsTYox/pbzcAp8MTmLq2sxTQYQZ0GT7ARPBMv93v1UyJt
	 0urqJtPVN95FA93cu5nImVKzP3fzMvZb1HPtE4AEo4+ooBSDXp2FAB/OBSJtgftcYN
	 xj52O0Q8CqgM+Q2CTcN/lEiZkrGWDn4oK902WwcDzx+klLfoh4Gf8TZFhhoKubgRwz
	 UugWao/BhAwGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958C3D10C06
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172997495360.18498.12403577155007228295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b14aa5fafd04670bae13a01fe33f6a26effaa52b9403fd13cab4a0592388037c
Date: Sat, 26 Oct 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729974953
