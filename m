Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E574667E83
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706616497; cv=none; b=QIj9bvD4LAT1N6dRrBXtxX8uaHRG4aLjVtJT6mlYNRFkWRInm7sep0N0Re2tk8HnOlKTOMOeBonTblKvcaa8J7flCtSJLuo1Rj/m/goHmvZuivdekLPGuzUXcvVY2JLSh2XsJRND4M9aVBlXjJZihp9/L6+T6ltJcZ/Jr5QWiLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706616497; c=relaxed/simple;
	bh=63ESZtt5CbJTX0AHj5mZ+/ZDaq9kfrYEcij39d1ZjZo=;
	h=To:Subject:From:Message-Id:Date; b=ByHfBy8ncVcyrR2WPVf9DruHpBw06rcVzOVWxK0O4IsgblN+gXPURnIwKkbocRZhAh0uA8Hecyc7TvFfpyPaEUZU48Tz+0TgDiZkeBrh9ltK90nzDHKn+ZsqImoBpQlnwwCRh9Gf6k3P+EjeCT25eV3sD3hLl1S7WmFLlT8myW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J9w74xRJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J9w74xRJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78E9BC433F1
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706616496;
	bh=63ESZtt5CbJTX0AHj5mZ+/ZDaq9kfrYEcij39d1ZjZo=;
	h=To:Subject:From:Date:From;
	b=J9w74xRJNI9EnVSAUKEeEEMF/H2Pi90rZrwXV22NKkLg3IMxCLr+PpK6y0nZ4Qh5i
	 MmxfVUAVN+MCm1fQU3pf0eNS8T6Ae2py0RH+QAtCGC8SpUjeYqUPsstXKWvWUOBGbZ
	 /RF02J+23AknBLMKK+ge7YfmseDVPQIrTgXDQVJN22W8qsymXlfQQMbU64Nd9KGpJ4
	 4ri7Aa3+7D/fiS48n+9QePFk2ZyfMblTeAvm4pTFLTSzCa6UjtTiAEZZCKAK9wlhAx
	 Rnuuofy/TWn2YMC4bRVSQcAGLxvTIt1OCr189n/L3rT8c0mK4legZIKil1f8VzC/c2
	 tsLSpz8EyFn4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61960C47DDF
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170661649639.22512.14920368539821670960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab69fcc55fa258881739351012a9c9a8f27204293a2a41066dbb4207a2af0635
Date: Tue, 30 Jan 2024 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706616496
