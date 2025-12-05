Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 814A82FD1D3
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 15:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764948774; cv=none; b=on1s+XQREkn2kHOy9jy+nPUn2a9ZIJaexekVzvBV60tsEWVdwYq1lSIrynh6n4CWFH91dLMn004U3HrcOfhFnjEGFKhDPn4AENhqQeSiPA1fPqZ+ZO5FhiMPWq6Rv25R6k0YYy4udopMybqv6A+p2RwPvH38yCIOTy8s5Z5eCRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764948774; c=relaxed/simple;
	bh=dDNlZwvcyFBSevTrp1qYN2XSLe/UpVvEydeZxJI6aGU=;
	h=To:Subject:From:Message-Id:Date; b=RKFvus/1y6mo4lbDxHW7ZE5z3CXUM9Nt5ZrXTMCEpe25Ai+jzV9+rGpTU2dqbIjHwCVqW1X9E0SlLKTjIjLBcFPHxUaKiT7XX0bxkgPi1j7HK9GudUdEx3Bh37N3qRjcibfXq3naKm6cdlxwWBETd8EboqU6MoUlnpa7iNvY5oI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AWHYwwHi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AWHYwwHi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08F0C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 15:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764948773;
	bh=dDNlZwvcyFBSevTrp1qYN2XSLe/UpVvEydeZxJI6aGU=;
	h=To:Subject:From:Date:From;
	b=AWHYwwHifuMcXHp2mK8PcXEIKEIo2lJ0cU8NaIgSl/9VhRuE7NaPueaJ3qITjkU0M
	 rNL/v+WsRM39fT9KZAnTij7HNjUnW8dIO2RXTYcz/dRGnXEi6Vuow9xi8h5bYVaGWm
	 ndoyjtfWa2qvTHkakn9IHbldHwYAAEAJW3HjsDLIop0q5COZXapAq/zwwO7qINnDTV
	 GLw4Ci7KAJu56MUwIAanQkVgbwr96J2EZiAjdTDcgxbV9RTem1xZawZcXY0a9I+KG1
	 RYiEawNY50g6D9NwbzD40PY2VEaaIY604onIL6xGIZ4fA0usuxrZSkmsWICMoRBJ+k
	 5TIMdRFPgnsDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92083D33981
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 15:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176494877358.8751.1574109509699861256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2ff83a4d8cba242d90cd13685cf4edb6855a83c6d59a5eecefb051bff6bb45e
Date: Fri, 05 Dec 2025 15:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764948773
