Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51BDE221DA4
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744004994; cv=none; b=idwZCpvYiB2j9gAjGP2SwnIg4TnjDjyZUPBdd1UmC1yegQ8rc90T2Uaep8+3hDLkjRxZb0/MdhGGvsn2R/S72sI1mcfaYLyJ/j4dfpctWkx7T9cH3ArH25fTdJ2k2HHsQvtiKG/dHtVDaXyM7Q4x9V9flItAhGdfQMVlG+hmr4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744004994; c=relaxed/simple;
	bh=XMAYJVj+w4/Gf1HvKbEKP8bQZiZr6kSSNCWRxK44JDM=;
	h=To:Subject:From:Message-Id:Date; b=gOp8wjVK+zHUNQ3vanPH5gsTauUUAcTNnszwRPjYVeeMDT+IH8v2V8kDHaISya+bgFa19TugeddR3aNQ/mgnTiaIfE4e9CHSOINjRRwPfhJ1wMW1pXKvZSuArhJtKiYTOggjJEdeI/1RA0/EvqheoYvK+G6dWp1CofI4sAp2Sro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TwMcvoiI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TwMcvoiI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE889C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744004993;
	bh=XMAYJVj+w4/Gf1HvKbEKP8bQZiZr6kSSNCWRxK44JDM=;
	h=To:Subject:From:Date:From;
	b=TwMcvoiIzFwxBXzRYZ0yFtbUDRG3Vouc20aWV3ihiAKRXJyVcxtAkCS0lyaenOBue
	 WOu8Xev2Bir0Fb1X5YENL7BzjeKp4rIh+O/EkLFAqlkQaHaNqpBFKUFUPZeB6tUYGb
	 Uo2xtXbzbXy7VUoyFgz3DTaD4p3DLOfFkCd3szyxwGz7ixPf1HgpXpGL3a7qm54IMF
	 BRhRS43BnZJwUj+bXo7EYtWJ0nzUj8xZ33FcnIuMjGBWqZ+6fXmJ8FhX/NzSihLRXZ
	 1INKSGJ0Mo1dgimWujiHA671UwbSyHG4ZbyFsgY5+d7rYVN60TVX7eLHhQDRl3oZ6u
	 4wr9KlNZVKFhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984F0C3601E
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174400499361.12812.17500094698767174688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c81f15a627c9a07a3de0a7cdf271f6733c7397d895cb39c86cf2026b198dab3
Date: Mon, 07 Apr 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744004993
