Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA136FBF
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743206394; cv=none; b=WlyEHCYg3J/6can381lz2hSGaPYFsmx0dr+uHvY9g4KPIfJHu6jgdxN4V/1bay7hox33+LCG9NmSRi6mytiQs6pLFB41OpCpIAarC/x7SrNpJ2FWOB1ga2hvOz3rjC+phQ1P9t1rfUW/EfNTJwMUBbVGA+N8jYvqI4RtWiO/bds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743206394; c=relaxed/simple;
	bh=zc5PbqLzvdqyjGOJWWNK7JodA2Cxvb0sWPmblhAsnJQ=;
	h=To:Subject:From:Message-Id:Date; b=k1P0hODXh/+ExWYCe5ia8P701PL9kzGwVp+JETFKoi6I1Q60dRH4xPld0XALrZrj0SRebncHjGR/GVnMv5M87JhWmtYBmJRLvPJlKQGVOE3ZYV0iif8FaQMbmNHIYGVt7bPlQXKfzMT3Mb9WCETq0vzdzhJ1Vj+6Yvu5VT3tV7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kh/O46wQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kh/O46wQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD26C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743206393;
	bh=zc5PbqLzvdqyjGOJWWNK7JodA2Cxvb0sWPmblhAsnJQ=;
	h=To:Subject:From:Date:From;
	b=Kh/O46wQL9ljI4eY/ouT2KH3qgxb3+FCn3NJhbbx6wWSR0cxHB5O18tcbI18g6Uvm
	 kW+Q9vMuiPl2iFgjrHvj1BckF4J5UnhMtC/WgcH4WpSEqTM32oCqmWn3z2wLi2QLTI
	 wCqCdKlTPFChuNmcSEHUGMvsswF7Gf0qGgrQCUiap2YGZlJwZ+M4ruzClepztnmS1o
	 YaIIsxuCPHRo5YfG2XnNB+o9mB3tUB9tRbekIbuOJ5tsrXvSbQALs0/aQNxoc7pMMV
	 PGUVHdv70fXB1dG0oi7m1wHGnHlb8w/oMe/hyZDwsB7fnOlJ50wqWJbFu37KjY7huU
	 D6N/++4aPlaOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A10ADC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174320639362.1020.15193576692403464473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de963b0b13266121dad1fcd9493acce2bdc97ae96de51d8ffcc9ef6cd2cc4499
Date: Fri, 28 Mar 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743206393
