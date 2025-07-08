Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1968B20B80D
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751984994; cv=none; b=k2v4oWg2HWRddZoYkm+SbsxtpWY3zECeVDWHX2/gqzgQL6zvd0NzOWn9ut+PdKN2rYSSEmiFXh7nlxk1tq8H7L8xjz15myUsf+JUEWFW7BUEdOWdR/ejfZOcpzcVImKXih/7SDv1bua9wKEm2YP0UFMZZTA6hhayZGEUVrr3RdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751984994; c=relaxed/simple;
	bh=eKSdgeRH1b1S66mA5oyFMDbF+R1deJdRxFabY+P8CgA=;
	h=To:Subject:From:Message-Id:Date; b=oklnNDiFPIafbGEY6GFMsoO3XuoV9UwhIoY0R9xMp159zKWS/zYFzSXg78/RAAIau8lfv46na7LlIhzYiCxCdsaL2xh6EZG/xwvn6/R1JZPUQRnhfrH2tzol4MtxQJCJ6diZJjO0xLqe1Qpyx/Hdtfb1W3E9S6SZqqNu0tZ9NqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVMBdp9w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVMBdp9w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29F2C4CEEF
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751984993;
	bh=eKSdgeRH1b1S66mA5oyFMDbF+R1deJdRxFabY+P8CgA=;
	h=To:Subject:From:Date:From;
	b=XVMBdp9wlQOSzHbq1oWcvmVJaxuCHzI88w5HkxAc6/Ko/jaKwX6wqd9RxgRgkG9l0
	 2wpd6Sifp1Gckgh2DbKzuvQ/ZOB+iCl7uUpx91FeTb7ceUaCjGKUVZpYvHH85ZhHa7
	 uURTeB72TyqmWxWG1b/CyII4c5/wK6CKzm9/jFTY23HrrHkX/D4R23qfJOjfo+CQF/
	 WYOtZcxcZeiYD7UD8aV8XU4I8CD9QUJ2zZdJzrlVwpuhhKf31Zc1Ibbm5rmbrsCzXF
	 ihBJb2gsygDU/Y2ZXtW000ucibjNJFX5qC9TUStpwPn9Ydb2GF82UlhonwUVssBMsV
	 wUwtzTeTcH2DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEBDC8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175198499358.17790.1147617175033148616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fbc7ac0bc5dfd0665485194e9b256d4af736720eb40adab0be04cdb483c0b42
Date: Tue, 08 Jul 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751984993
