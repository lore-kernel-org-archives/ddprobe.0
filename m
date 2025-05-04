Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BE928EB
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746394794; cv=none; b=RiUOoVQM2YodBnQ3pqJO1uFonmMrX9p2EJ7JGgRllO4fp8yLJ6ZbBHYsV4kH9LIb2M12KQPNqI/PrZqeIub5ghltyAlgmH9G3H0sFo3tsLqSt5PQNGapKlEjrbOfnnRcK3rG+5zQmF0e/k60yarLoU+8HcaimyTUNxaYxMauhq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746394794; c=relaxed/simple;
	bh=R1X1JmSoYORgYWqLzVeXN63W1A/pC043TMUV9MXaHjg=;
	h=To:Subject:From:Message-Id:Date; b=O2rKr0s9DXHclXWR1+jHwmTlvTr+V8MoVLJKiM3mXq2QkWN83QcaSUL6KOxQjb28h3Tndaw84M5S6viYy1tWL1HiAR9bnu2Hg0kdMD+KP7892ktNgyxZ8KyYig2npQny1ipHwPcklu07hAwH8WrvMCbMz7/7ZrUX/hJUApIV/fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=giHxu2uF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="giHxu2uF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A45C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746394793;
	bh=R1X1JmSoYORgYWqLzVeXN63W1A/pC043TMUV9MXaHjg=;
	h=To:Subject:From:Date:From;
	b=giHxu2uFPRhXKFa+cxjs4GVGQAVJF2D5VnKRgdu80mF0Fa8nukdBKIWK93zTdNq2d
	 5yaGbyegJzElQhmsqwr2Zbatif9DRuiKyEYxYKPftIpwgvjPlmvf7nIuduzZpNN7q/
	 0XH/stQOWcQlv+LACG7Gj9G6SM9sZTJr8wFaOwnRWSNU6aH+/qZfNfvF+rG0Tp4QeS
	 dfuop37KHFPS2WUNNVSHiVK7SJH7F3B4VXpWNuFZAREyFK2TmS9VTlldd61rEA6O1O
	 oOs3w0Wwx6be27/ERmqhCJyTARMwqFSTFrCLFOW8XI5rf02lt3DdTe24rA//5OUYqq
	 K19T5jNk0xdqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F18CC3ABB0
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174639479357.23989.13551331857516105523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ea90cf53df1c6c505d573bfa01de44d8ffa0591eb9f976cf7260c70272c99d6
Date: Sun, 04 May 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746394793
