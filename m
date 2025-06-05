Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D77827A918
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749146394; cv=none; b=HzlZPXJV0BxGu9at1xWVf3Vkj5vdECK0/DnHJa9dELPZ0FUvGeCC0951QIBbESgMGVskLF+JQtsdotBLfqx1PbDDa83m7M11ymgO+/jIO7jX3Qqc62LAXTd17tRRwJXl/RJ/LmcZLWuLDs5K7ej5+wlMefhqQw7ku01nQBZ6TW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749146394; c=relaxed/simple;
	bh=XGprpaxyaJfhEt2CoGX3/SMdWTMAb+xUFadqBIsX1tQ=;
	h=To:Subject:From:Message-Id:Date; b=ND7mEgARaADc9EVRyfq/hq04nK2Z8ughSkA7t1JrlZm1Lu23hVu83+2R/ErBzbWpXv4/oUJIALZxY22UCuJdWFTEStWUjhL4CETVgpyDxzLhN19aXZzJqDgzSYzIxbrh/TJW6BCIO+ClIQsvgxIkffJj33S8W5d/4otZDyI9UGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4vJT+8p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4vJT+8p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBA6C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749146393;
	bh=XGprpaxyaJfhEt2CoGX3/SMdWTMAb+xUFadqBIsX1tQ=;
	h=To:Subject:From:Date:From;
	b=F4vJT+8p262jsRTcs2L3UunKDt/deoNQw6HCmVv9N/Yak0LN/ZeOs1thgBxd0gkbc
	 rcMOyxEx8D1hWTZVw0TcxDcv7yyhxOZ39c09NE+Yxmc4U7jSCGG2wefwR6dIIarOEF
	 MfgKs22XPa115UAB9hYwmDiFjE3qBaiTer6Mz5BCoW5nbQHyIhF82hk+CTQGN7SICB
	 Ih+fkqhP/buTOxCrW8HdZa/admq7P90IsMCPKqag7nAlvkpBe+NlMEx/fsYUUHhgIT
	 RiyiZ3R/75UPSey0TRZUYwWCC7f8gwHNsGzXtStNqNESIe0HdKaqRDx8H6Ks4MhVF3
	 GklCC8HA+y24Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F514C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174914639357.16127.6120324457387703294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 697bab5d5ad939bf6dc0088c976331a7cd5541c1dc9635a5267d3a32f9c6abbc
Date: Thu, 05 Jun 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749146393
