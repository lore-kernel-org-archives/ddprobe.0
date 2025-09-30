Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DEA2D24AD
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759243794; cv=none; b=GldQvd3PUVR+BVkyFLbQp0dfbaPfTJ6sLs+lGVLHYpUQn9iPg8QdmceiLxvV8/R4XcMKI29Q8fYY/4cpSIMUE5eAgIRxKPoC4rdtwdx7GilrNUcDSFlCaDCDtzT/A5gsOZLOuKg4LPzkS9FDnJfQdcmwDP/iI2gYt4dk53pebkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759243794; c=relaxed/simple;
	bh=5A50oV81rEM1UezjjGFR7Fv8rzirHUzTeogfY9EomxI=;
	h=To:Subject:From:Message-Id:Date; b=boQihziB/1EpkzBSu+i2uWu6ioK/Vd17kln925w71ZQ6IYOMc2Mu38KsK9VvZDOdECIQ5MPusQEXvI3Wmeuerg5VE/8W44ZSOktX1x37ilylCpm3O+kRENCO+MFtEwE0XURi1EzxPgrNOS1TrmWiKdDwVZB9Hnwd7Cn7kt9JuL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CdeKujlK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CdeKujlK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDABC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759243793;
	bh=5A50oV81rEM1UezjjGFR7Fv8rzirHUzTeogfY9EomxI=;
	h=To:Subject:From:Date:From;
	b=CdeKujlKUdAqoGQWx0pf7wymFTbBClyD4g28DWIlmq+mmdswZ/BZButKX1bdQV9n3
	 y+KXvyLmGGsgY9R7UasztonrbtzdF26xTiyPwprptv6GoPOD0PVwgOSy2jZNZeikVV
	 BV0ghhins41RmOMRsBWD+csQl21AZYGfTOQcf2uvna7Ih0sFQR95/zTe/debsDY38y
	 j792gTC77vN5zb+F3BPt98x21zkxlmVls8eeSheW4pc3/8jKsTM79r9ZEq2LfgEcw/
	 vDcLzbXWaVPiDV6TevaIsRsCSWP7nckmqJWTtVqPYcvrk/cs4CZS6Ljmg6OYjeSfeE
	 9hEeg9b9rBGsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFC5CCA468
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175924379358.19212.10555848579967484258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dec06ab7823cea40d84e24bc1d1f66784117f2bdcdd2bcfaf7c80aa7a2377e9
Date: Tue, 30 Sep 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759243793
