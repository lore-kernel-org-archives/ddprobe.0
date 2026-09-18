Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1061397949
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789713634; cv=none; b=sEjqwMrlV/tSnnHCmwTzShy+vtnTNjzQw68tHjJZ6hOkn136MxJXebyM0KJTtezZW1t9SoYzgCMvwOmoc9gmsLStjZ6+XBaqagP9w55J6txho8DIeE55MjUePkbEF6x+LteQbufQOqZDpjVRWdzIqVxGqIa7exJ6LFcT/GbYuLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789713634; c=relaxed/simple;
	bh=9B2/E/M6E2CbjdeFoSCUiRFgbIh9apSQN2UJewElVe4=;
	h=To:Subject:From:Message-Id:Date; b=IGNsJr8M+uIRxJzrLyDiPgzZZZN69PvB8CUtvgnmph9TzsZtWrMF8o3FXMFH1jMDS9yx8soxWFKcpsx5JdizYkHE3bNw3HfpTPxJfQXZPOuS70xKRVhVA/OAwKtp9ay9OdRQgfLziSyvVXl+NzOhKJpiAtlebbY/dt56qWhUT5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qtOZZlzT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qtOZZlzT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA335C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789713633;
	bh=9B2/E/M6E2CbjdeFoSCUiRFgbIh9apSQN2UJewElVe4=;
	h=To:Subject:From:Date:From;
	b=qtOZZlzTS7+Yxyd4yYn+haK1dEsprzhIQ1mZixfxmOAfVwS8luQQBfphPIdguoFLf
	 bT2AFf0UBfF20RBj5Zu/P3is5S99O0Wha9UxaCVfl28wReU8I5iDY38Q3QH1/NSTzu
	 tjHgm3gDVptIJlWqhyo8s10WaR52AZPX9AlEuFTZxroGXdD8kkKU5St5zGQg9ZFkp2
	 O0FgxQ52xo+rcX+p2EjVEfbwLVyDFxdAv9ZWy0qTb0qSU40D9F/zcVakopEqszd18v
	 80DZr9Z8BPyGoYg4wi3Od9oocgcfWwfGn030fP3zzpDZpTBqi60fkTXfR12FQS6Rgj
	 SUpSZ+JK/q1Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A0DC982D2
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178971363373.10178.17723870544291821900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9db3c56f568377117ed2d1835f76eae7f58df99da0b0230e7829df4a0d012dc2
Date: Fri, 18 Sep 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789713633
