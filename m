Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12AD815624D
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754453394; cv=none; b=bDrINhtrZo3S/rk5fjU7IhSR2R1c4t+9lmHspIYlLku32xv9EpcLiHN4yXur8xOAaSwTQY3EZF35R9a419k4N+KzXjJEqYIOMKABcCZEGDk2YsTY8D+bdPF/BGkLn3GaedzXq9J8KLWuVwdTUpUCgOBKa3xdOuMUgHE+PuOJWeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754453394; c=relaxed/simple;
	bh=C8/yTM4Vp+QqqjRfwg2XlJNF5yXvVpyCZ5L638sISC8=;
	h=To:Subject:From:Message-Id:Date; b=ikrCqyDREyiHe1fOh6PJT4UJh6D5gNrDmi6ChuHcnA7H0cVkf15i66Ew46ElMfRL4xut3AweQqMKs1jRj6dwE6rIRbM2a5nrzYxc/a7ZlRwqH4+gsOJaV9PmDaGwjfHuylu5X+f21aKi94OSM9UPHmmGYRPrwahgYxtH+XI1E4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/JyrSFA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/JyrSFA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ED0C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754453393;
	bh=C8/yTM4Vp+QqqjRfwg2XlJNF5yXvVpyCZ5L638sISC8=;
	h=To:Subject:From:Date:From;
	b=L/JyrSFARxQz5kdookXd07ShoKqZDrRNkXJmzGo5EL7yuNW1irDyCkRghDZ5Bn4GK
	 YRt8oqbnOJrQzxby4ENphFDgMPwFIYkHYyQCpx7/qzaPtEGjritI3epYLPwlmpAM4K
	 Ha6v6Fh2IFVl+PbQhy7Q9iAfhZhn14AlovYkSjeXAII7Xi+iHWvS8+GuDVa0USG/Xx
	 /r7mcIHZoWs0hlRQm/+QbRoDAksWYipivKy3o4VcSpBiiFqxEReg8IZx2E+ZUrMaTu
	 9CAnC0sWZEH3mWW0132n4Khn66YglhQ8A1pv6a+8dIu+Jo48R2uU3Cqy7FB5Hbm12T
	 inQTJbL9/SjGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1D9C87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175445339357.6345.14979525628769186260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 418591a30a5c8a5fdea008f2ffe87747527a7e4b14a64255b7e4fa58fb057900
Date: Wed, 06 Aug 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754453393
