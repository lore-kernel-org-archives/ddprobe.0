Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181F22581
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752283794; cv=none; b=c9qNyKlpqd0tUbY7xnyJS/DYk18pmVwr9pqSbBce7H6J+IrIOtw7Yuc28eGBduFdO0YqUtfUiP+f679k4vvqM5kJfeZNqUFQMfgyA2gD8wYrnEP3PlIc7+yhdCCPoK9+uHcb1aSBtfpcelCzbJYr85RNC+HspPf5Gri7FVF1vlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752283794; c=relaxed/simple;
	bh=lmfDpVZTL7yVSqUoH4l0Hej/x7aenijqgCVQeiAPNVA=;
	h=To:Subject:From:Message-Id:Date; b=aI+ae+PotsqIuMIyaAvhI7OIGroERs2mEPO5egrzqj6qmV92PEni0l3poXJTJYm+RyOFcv8idD/rB5qtuisNxFhQoWm7CoZn3/1X+NDViAO7gO8Y6f1VLcOpmBamcHa1hy0AaBn2ZE+U0fQNFhQ/cs+LP4XaXRtyqoxCD5q/Yuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tVfwiWSt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tVfwiWSt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D2CC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752283793;
	bh=lmfDpVZTL7yVSqUoH4l0Hej/x7aenijqgCVQeiAPNVA=;
	h=To:Subject:From:Date:From;
	b=tVfwiWStOerqNRbMpui5OoYJ7XUs6oLN/sj1/AnVm5IXYMYpZ0W8MCVKsihPYu3Ie
	 mV6Tazw+E110mPaRz/BC1n5WErHMPWl4SvlhpRy2FRRjFPizCQkUKLytAXyK0ELf6F
	 VrIf2oANQrVzZMpiXLaWhuy9hPIaZIQrr8pw/ilY+xzR9wWcyQ4M0P2KJavvL3xYyW
	 i8xf1YTwvU050p4nPehc66Ler+rWpVXVvYo1dN/AK03u8crpWr0zr3HM4MHCIEoWJB
	 FPKID3CvnTwpUqxBLE4FUn4AJ7MJkBolCbk++n5vLhgnDareg/1rXn0RGGdtRQ4Cs/
	 A/23qwOc1RNBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D2AC83F1B
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175228379359.26596.18036228182808564833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4c8865d90d70b3e303f5a995b2b9a72fdd0e572d7bbe7ed4447dfb870e16e0a
Date: Sat, 12 Jul 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752283793
