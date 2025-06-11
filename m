Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194DA23A58E
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749629994; cv=none; b=gyjjXBJAws6kwccbrOznCFz8F3PxPy/6izGPWAwtEaBIiQ8LCQr7C+WV7mgHyz5ssSHwKBgcOxW46mByiJDmHLl6kWx9b3HlvhDE9HoNDKQg5CT+wI5rRmfYwdbcrUYtm6HqThsKk2k92NF844NjhkwhXO6cJyJAmGpVWy5aPBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749629994; c=relaxed/simple;
	bh=ejE2fxs6XJbFdd3vESv6BrJ5247Tyo/3OAT4MHQZApA=;
	h=To:Subject:From:Message-Id:Date; b=iq+BZ7ssvtmrv+Vegu2KUc03fxziTDubYCEElcGidDbHwkozljimdkqDJ8nWDkj8y1Aun/i8ogAPwFYMSJg3x0wvCng6iDBaWv0h6IT51ty+VqseIBhaTmJ3doQazuWAgyRLIN6jsYkeMyHF5nFdakal4iuBf8xwvTL6CwmKWb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qosV3t5t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qosV3t5t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D87C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749629993;
	bh=ejE2fxs6XJbFdd3vESv6BrJ5247Tyo/3OAT4MHQZApA=;
	h=To:Subject:From:Date:From;
	b=qosV3t5tyOGJzfmOrJK+C+hWVGYCUNvcFuzoRa99Tq0ihk97psxoEyT5nAcirEjKb
	 KW7xPBcPx+tmpA9BOM+JwOaCel++OY+pWlUSCjs92mMhf1qz/E7nX6JlDzV2vqlmys
	 3KZ4iGC6hCvWJi45iw1lKZ3fQMxq414B85MMkTda6xvfR5tGUmOJI+OLpbORsP5cOL
	 NGUHeojlONFAft6F+eQDjlCcxmFbHcnu1JUww8Y6UUlNabGm8M/16tNl5tKumTDEgI
	 HUv3TIqGLqOjEEcXzrmzqHQ6OQP7EuQfKdGDSCWk9V9f3jD6Oq7OM680cfSwkq8T02
	 nilAF/bL2qnlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914F3C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174962999358.12405.11297015879780055015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96aaec34be6c31aed673a68102dcc7a8b285e23302914b9e9b2c85eb9b8c6efc
Date: Wed, 11 Jun 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749629993
