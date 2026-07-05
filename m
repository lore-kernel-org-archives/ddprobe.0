Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467A126D4DD
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 13:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783259314; cv=none; b=qAlwPd4f+2JiJJyUajjYb0Mvri/2N4hDqWFNSm53gh5LpB+RojhIDBOZNJAbri670xAJ+G5E3k10YaxJZysYfR0+9J0BjgpWFBsKkKy+WI72ajn4Zh0WLsgYa+gXSwb7w0EV02txklf9IJysfWEABDkGD/jd6GXhyAtwh6MzzUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783259314; c=relaxed/simple;
	bh=48h8MqNSp6Ari2vN7WTMQBVtHzqzhxmcshEexqrsB38=;
	h=To:Subject:From:Message-Id:Date; b=D3Cs7deXeDLGgSTYjP4MS3tUtgEyji+X2hSxNmNV81Y7Y0fdoZqAG8H7lS0vT9JSUnRAEE4LSlfC/7IbL2vMNHj2d+Us7HfoNbguUdG1zYG613kwlNqZ6+ClCkvRE/UyAKdpknOt2jdyGBOC+V00i82vI8nZ+qwcRQnmNXtTWpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrcIX4+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrcIX4+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB8DC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 13:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783259313;
	bh=48h8MqNSp6Ari2vN7WTMQBVtHzqzhxmcshEexqrsB38=;
	h=To:Subject:From:Date:From;
	b=VrcIX4+vdvR+EUk2PihjTuV7QKCzbX7PtnwJz3/TOxJc1qeWArmycHA/hCthq2Jrg
	 4Tv+3jfBlX70b6YrfLo5SowTFQCzm17Nh5sPZsrBVR6qcPdGeRHDoA7cyzwhUAQPTH
	 Mon7Hckvaba8NGqwHJghRNhFqOUAxFMQNF+rfnLWqzPlcYDWnYEJr3rgAWYGb9KoZf
	 0kM3lgDEjeaokCcuR8To2/yIhaVGYUHKzytCH+Srpb7uaRWKGqJRAwpe9uGy2PDQ+K
	 FyQ12WIJMkNSwBesbS2rUJYRX4OzZDSzcniIQKh/N/S1/UEC9ugGCqklC7NM74rmnA
	 wk48EYxqec3ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93CFC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 13:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178325931368.16017.7896488100425984303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 438c7cbcb85d496dd9f5d8effce8285c77acf9ba6ac2e2525b065614609cd5b3
Date: Sun, 05 Jul 2026 13:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783259313
