Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C87B8F5A
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 03:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717299323; cv=none; b=KL265x6BrQkiVsuArTWltVuK/kmW6xDyMxE7+blfsMUqqQwNyuug21l1/lDG0f0ZVY+v/VP+6mkHMnLjrt/VrQ/Bxj+miW13YIE4NDLYlcAVSuzvzImUcSSv7dVQckPyjkvSWUuolmnEDAdacHnvvQYAWVKChpKqYgjvvbGNNfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717299323; c=relaxed/simple;
	bh=g1VXfBZcN5vzhDBttsB2itDHaCk8+fbP/HY+RQKx394=;
	h=To:Subject:From:Message-Id:Date; b=CQQPE1DVMoLZU39U9fu4TvU04oSGB0X5DNoNGithF3R9+22MkZ4r1TL4zy1V8TcIXkpl4i1WTLYlPgtuvfVsy7qWllcVUVuzrvSUpTgkUa/3ZAYrWjFRYiS++FfOF6tGwLs7z8aZZYk1HBTfFj8hsAplDzNZRA6vXoxA2kDUaVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BaCZlKCs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BaCZlKCs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 10CA0C3277B
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 03:35:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717299323;
	bh=g1VXfBZcN5vzhDBttsB2itDHaCk8+fbP/HY+RQKx394=;
	h=To:Subject:From:Date:From;
	b=BaCZlKCszzCvtEQW00lY4JDIM9Hm14TFPlAqzgdXAByXe1ppPWque8GC2W52x6p5D
	 mcvfe/8DxKulxGMfTFyUdMxC+u9DFU9SA0HsJil5D9jtkN8dTNr76kc2KDugMvFXMf
	 lz2iTFcT0kh/8I2dYYdkW7vqh9kZnERR9jPmI6OQPU0HRcNvRaHRTUPSVxlYHeq70w
	 EDc/dhhbcPLkWjpTHrmjbipn5Zr5EMnhwToGe3PKWDrUDOV9XAHFqDGHMppfSawwGP
	 UlDYLCkMpzfo/9uxDB8KlMQztwhRKiWu0icKOj4ZB/k0FQqYZ7DCuFKMD9Zkf7sGtr
	 D2dwDT9RmuVNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0132C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 03:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171729932279.14829.10358245387560654694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25a2c57d41508d9ecb69c948522d81881db5e992b7060f5fc231b0466bc1e4ca
Date: Sun, 02 Jun 2024 03:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717299322
