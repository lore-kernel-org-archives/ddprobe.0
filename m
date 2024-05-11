Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 941A11BF50
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 21:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715464343; cv=none; b=FhiMCZcBFJzS1xp7R+KPm7NBam4DKCG0iLE/brDQMinqI6jobEUflX5CtV14vdS7VTsVMZ65nPqhEj9Gi8DWMqm5Bqx1qmBG4pLLOUZFG2aUBaRpEpnz7b1axyy1Q3c2uWKyciRxGryEkXt6v9WxzFtEBhbxzQ/Od5JryexlWrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715464343; c=relaxed/simple;
	bh=Lrcbm5BE691Ad9i+D6h5I7g8gXHPxwbvZdBsuioyBoM=;
	h=To:Subject:From:Message-Id:Date; b=irfecsZrSYbT/xctXadWZ8a2AcwIKpShBiRrDS+ljaIAnnL/gs8HV8Jt1jUUL/wXfFrRNR9p4jdrEvPA1WyX54/yoKhKXmrK0XCtjolF3MfYYECvWP535wqjt6GFFS0GFtdYVZO9of/o0T/yJWmXXKtVlcpMQ+tZ8lgLxrO+ShM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WoniSodg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WoniSodg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 10FF8C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 21:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715464343;
	bh=Lrcbm5BE691Ad9i+D6h5I7g8gXHPxwbvZdBsuioyBoM=;
	h=To:Subject:From:Date:From;
	b=WoniSodg1cHjKjzv804x4WErkwHGLeFj2hPsLQXzZezWVOS70hhvaRMx4N7feTNEp
	 tc1R6fQJyR5TTQM2bFpbguYkfSqeMoGyErPvhXXIRhzcoGB0jd1vBN7Vm7BYsCtk1p
	 4Oz0d/2kKdPu1PI6YMcdBlD3K7t9YI+09nhm6hJHAlYraOBJo4k6kx2kbhShomYz0y
	 OfknUzN7zYhZyuZ4xd0GDbgfdPl19+ifjnke+WDeyymYb2irTWdruhKvSB+mlUO/B1
	 RaOwPcVHVNKIbBzjFYkLe+Z4nFoJ2LP3IuvMPCVX1vTUDhWUDyfQ7yW6pDdcNlQ7cA
	 hP2vqNwqtJTZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6BD3C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 21:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171546434283.11766.17512053223341618810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 071314ac276d6f3a2e0596d859b0468e743c5ba9ce39c179da5e538b867f674b
Date: Sat, 11 May 2024 21:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715464342
