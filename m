Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7468A524F
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 21:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720388183; cv=none; b=F9ExuZz1DZ8mNr+pOXuWwW4rAa02ash83t/IH/ZB3TxO5cQqNMVXCWgYuyyGJRNS1EIcL9HW8wWx0Ezk66cyV/3pPUsxugZJRSIR5uthNVUWk1NP6esyTcQ18Yh684A9EKh+rDqDgcpGeL7vHg/bHp3hWYQKnqIh+/wiGDVm0Ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720388183; c=relaxed/simple;
	bh=jOIFy9iMRaxdfWunuimqbYKM7RlF7GE4GfkbH8fesCI=;
	h=To:Subject:From:Message-Id:Date; b=KiNIqnDvR3O4EYTrCyJ/KbFU6Wz+nRovxJzTcOYC8jcdQmqYKAsVIxmI3duD7ylcLCU5vowukuj5djpf+0WcbBvZHClPQ6b1lNTQ2pmCEUAc9swo8ZIM8Q6mgCogwEXT9tBdyat7V7nfCS5lr0In4c762zWgj25yPYdO3bpSvKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2xoqHSr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2xoqHSr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E601AC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 21:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720388182;
	bh=jOIFy9iMRaxdfWunuimqbYKM7RlF7GE4GfkbH8fesCI=;
	h=To:Subject:From:Date:From;
	b=A2xoqHSrx5EKb25YPSJZlSsCq0rgiv9HOu23WfpQ5gZ9cY4BNT2jgZcytudfXZ8x3
	 jSlL893CcLeozCRNJ4RZT6mBE7maGNDNvSa6jFgcfCUqGxGBBccYsjkzgQPWTsCAnX
	 1PvdlRJ7pnDgV/6yTBW4m7Rd6RiLfgUVOU5ZdTvmKrgcJ6NAnQeQsjfpgnSXvT4ewH
	 rTDxzESo0TzfLI9ip+yFcx2bqUZJCJ3ExitQ/+9HEuI6vFZAAtTc9ebTBXnN2auEhd
	 6phBAQRxK/IogBxL/MZcSd/Ki+PBw1xtOaoDicx0IVVGo2eUNDrJP3YHFjBksavLUt
	 6ZdeYv9KQCDpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF636C38150
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 21:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172038818280.17934.2822159425412728363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c045213eba933ce2d4bb108391b5fc7d1f89774e525dc7936e26e00cdb36b36
Date: Sun, 07 Jul 2024 21:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720388182
