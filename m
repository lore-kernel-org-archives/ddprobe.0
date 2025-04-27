Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C3DA945
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745782194; cv=none; b=J5TJKSYsBCeSnzqPAc+EjbW3u3nWQtcNezpxcw/2wG0IvRKBXG9kqYfVExd202jxB9h/rVMSXX3cbTX3QeMazaKGAYPBAuilHfjaWNJPDUgrchbTkpBbgs0FpEg1k6Jocg7MuOJOF8iLWdFFar4bWN2ydEPeZQRgHP8D/WmRUYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745782194; c=relaxed/simple;
	bh=2fs27lQuihNrXq4KLkgK1kERc7MocY6a4kH4+yT6yoM=;
	h=To:Subject:From:Message-Id:Date; b=BSJugZlslwAYMgLMoF4JVOU71fmjMRVElX9yzQVJPHxNNfABgIFRDBHS6jU/sMliUWL6MeHmX5cphWcAPUj7rDoWQxvvyXkXLlwcjbM5zqpTUHpEoJHFVJVeB8Sf5f5knJ0Iuo2jm9f6Gz6H6At/OJfv9wf9iUd3bVBV3qzAPlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/RB9/2E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/RB9/2E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3F9C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745782193;
	bh=2fs27lQuihNrXq4KLkgK1kERc7MocY6a4kH4+yT6yoM=;
	h=To:Subject:From:Date:From;
	b=E/RB9/2EvxKy6eodpBMB38Nsqi7gWjcaNUx87nqL1ZflWIUzgcv4kQr3FQwJkcCfL
	 /wRSe30g3hv6oNxK+LRz5n81eedqXFQrX3CbS6sEcDm8MWflkDoDhU9/Sbj74NqQJZ
	 cVxN/WEOorXv2s2Czp9YFJm9MMzb6xPXm7gag1YlSXbaOLx41b8Lda24huOsphAgHK
	 jBg6AsM+rHzkA7DTin0HfS9tgSIYzLsUdz11E2faPIyK8cDNPV0fNo2nq2G2qanrBt
	 Zi3eUXIknjCDiYG64ptIWrBu6yZ7cOMhtOWsjU/nee0LkKojUYm0yqncUO3fsKTxM7
	 kGcfdq6jMgjZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E916C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174578219357.11098.2663413551646816689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0c94255b508c43d36a116a3fadcbfaf53224271dbf0758019738b360188a3bf
Date: Sun, 27 Apr 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745782193
