Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281F522A7F1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766998434; cv=none; b=cu7/xf6W+c8yP4QOs3g/GKuvRZm0gtkblRbMjLMH7FQN4Fr3Kf8RnX81MgLrrka/16oX2iQy8uOrXUspUDk6aRairLoJU1xWaOGSmKvoxAsoYLCYexvgqthl2kG0yHmCPicuCnjyGhcFtCCDWai1mHcn48qX0upPNjIXlKTKCp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766998434; c=relaxed/simple;
	bh=4akAcVvGRYVTHPIa6e0DT3froXRCu78rv+wziMdjcyE=;
	h=To:Subject:From:Message-Id:Date; b=Ex5Z+Bv8XlTEuBiLk4pwDZeKe4YJ9+GLDDeMb41qW5fanrHQu6dFrqGc44Dkxhp5N3SYb18Ym+s45AHlqopTuhbqYDAf12U5tQIGLnbx/HuuC14JAeqpFk3FpjVYMCTwvER2A/Q0hx6J7z2xWx5dvPiF8H2nWdudWUBblqbAp0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NoAwUx4B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NoAwUx4B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE2ACC116B1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766998433;
	bh=4akAcVvGRYVTHPIa6e0DT3froXRCu78rv+wziMdjcyE=;
	h=To:Subject:From:Date:From;
	b=NoAwUx4BmmGUh8t7tsdhV0l8ztfnHaTXYfpqUgq4rmykGgDTlW/q+CsU1RU8WXcBH
	 dnVc5JqW6+hYOeCmX/ZOn23NYTYmCjBy3MPBk8apapcH5fCGgh0y3xaAd3muV5Lnb2
	 5tQnJ+SEZlUC9tCm68njUK7NXXjYRduCyOhgg1E+eNihDw0zACf7YqeXxG3hvZUHXz
	 F9NTRycSoBuzy7Zl1GPvEMrvZTO9QLux7dekBXfu8VkoIud6pnWwza4SEEwcp32sPt
	 mu2RAk1uhMXssDLee52T0t0hIBNYDHDouj5r2x9erniJgy3B7+RHF5SbR8QhRBuIy9
	 8DOY9lDy5OBJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AE8E8FDB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176699843366.18586.2629372752501621371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c3c0dce0357bc1645f2c992c12654645b5b503c7d98249e70e9675521d24ff9
Date: Mon, 29 Dec 2025 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766998433
