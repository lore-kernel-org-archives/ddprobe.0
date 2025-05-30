Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32203632
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748564394; cv=none; b=sGlot/4FvOxFooQMSkZUCokCFcjbDAHnfXBh47jELltkI2ZQfDEUl/Yw9T3Unnlr6mhnlBPDYsHIixfqq1A+JaFKlLpIE+27be89SYL6HwjZT0Wo6NTVvufAt7kbnhlFWqQk4fdyeJpuZD9xrO8uWsOYhlzZpRc0FHz1bjKQ3gM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748564394; c=relaxed/simple;
	bh=54ym3t734KqfrtRczGir6MwvQ01UtOfqGgcIlBW1dC8=;
	h=To:Subject:From:Message-Id:Date; b=nRl/GD/Wo9TccnlNaRo/Yc2rWcLAV0tOSiH76aw42jgk1Y9tDFLj4M+pgwrc92Vh2uIqKj6v9ZEP2/UewySmYmYUGPW1PEwQ2mNufG3E23qW2KFbgwvTLky6OIqcJs32yr9LkR23CVX5B/DvjwPJuHeJal0HWHj6a5THQ+FPu4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XdXEHVJ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XdXEHVJ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2793C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748564393;
	bh=54ym3t734KqfrtRczGir6MwvQ01UtOfqGgcIlBW1dC8=;
	h=To:Subject:From:Date:From;
	b=XdXEHVJ8qSiypOPF+lxqC3X6kelmWEa+bwZDd5QtJvSOutjSfleWQXdxs9HyJC2P3
	 rkA7nETcFRVUgTN1tSbn0Nlwg2Bt7WRPssAnB1HYMKQVjLNe+uHvncaclcXlYWdEom
	 9SvxIkZ/Mom9Ev7ofYEYg3fve5K/kDAVq69CzvcDjJxbX9pX27UTIS8xrMf4LcaF+f
	 O827pKJl01CBip2y2CNrAtGH3khvEuNlUy/Zda9b69O4oiyM+wWIAnK+vqsE9uY7nL
	 kxdNWggi03nxcRFZpfNa4E1ZoTd5/JJWCkzCatEEkX2UYQsWM1yed2vJTaBps1GOv1
	 4r/AKT5tZPHcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9009CC5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174856439358.12620.6729169429865534264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9cf045e09bff5b28a0803793237389a003eb1547a9b7e154af0802ef6dfa0cf
Date: Fri, 30 May 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748564393
