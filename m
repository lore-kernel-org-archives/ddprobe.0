Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551C8346E75
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791675034; cv=none; b=TJwMl5HEE0ulp8AFQ2Q32hginTUPALKfsOiWrcxTn8zSPSB75BY0yiuNTMy7HKXmxoMkPTLQ6y0x14/kkwRxyZZLDUClwy/MvxSGIiiRuFSZZWztWV142t2956oleJBqhiddpXJyPQRoTS8BtmSG2DaQ9whcdL8gUbrJuYGrGNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791675034; c=relaxed/simple;
	bh=/8CK7G9DyUKJLU97UbnCuCxK5V+liNg9x13mUSz7YtI=;
	h=To:Subject:From:Message-Id:Date; b=Oa5bOrBm7qQY3JqMPHsaNuvqaJxF8SnhvDOfyvF3kf1TJLmBdWWTPQJV6YxsXJtQ1Mqyidi1A5srsSBfl4cQS9a9/EnYhveJgidIkEEe62X1WD37Xo/htRh3/vG5ahQ5gQG7dkMr+NTiUfUxZajHMoeNbFayXeJj32TTTflOtUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jN0P+0yJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jN0P+0yJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C17C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791675033;
	bh=/8CK7G9DyUKJLU97UbnCuCxK5V+liNg9x13mUSz7YtI=;
	h=To:Subject:From:Date:From;
	b=jN0P+0yJ+FRBo8Yn9sMdGP8LOeLmI5nad2r+qrEv3rbH22FxHXfLaVAGwrp0yK3S4
	 67Gmanm2+BRIxSzKMqE2fnddc+8UIjK17NYEEzAq84qRxg/Zcp2+WkiVvWVrp1MGYK
	 OI6PGtcL4Zg0nTKzzJZ2/4EfuJJGHFXNufcUIOEeUBjnoIL608A081kUMOYI6+Nx/Y
	 nq28PgwV2c+vCEGetRgMqJ62NQkWd7hMn3/6M70lpYpiR/S6m/7wP/Q+q+bzX9weWu
	 o9vtao9rC/sgNDbG4lFXGi5/eJ7pSxAhyuicmiu2VozjD8ArDzlFOJSMUvSCRBvf0o
	 l6WaVTCxjDYIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB112CA9ECA
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179167503369.29027.5489296262722975912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11906daeb73301a63aeff320c2d57f3a3c5865b61ab1e359c39cc337ca427a05
Date: Sat, 10 Oct 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791675033
