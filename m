Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252A1233948
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 07:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783580914; cv=none; b=OUhDUoP0p4B2eXibZrrjBLkmFW1Lf8iG/pbiWkOThUgvFouIwSzzimLMBd0PqypuTAbXpDbS1tVZynUyLbV1ADh8Y6w6H/kCwXLNI1MV0NizcyVYSLjp41e0WjxvXHlcB5ibdRFa5d/nnLVZmaCek7JGeKoGGWE1PPwlqqyWKbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783580914; c=relaxed/simple;
	bh=57C49zHK+G95zn5xAQagk3LgV9MPF1Yh//l9EbEONek=;
	h=To:Subject:From:Message-Id:Date; b=oXhUwEN+Hc/DgaUy05ubFDJehI8XiDukLpfziytCmX3IroVsDx2ObUdEecDibLg6jCeplNPRuB5EyMWsniDdKzc9YttOaE6m7IEaVccW843bPlgI2JWGNDBanQJ4HekMnMwZ09k1ZInIbO1nak+LmzsxgCMHC8Z2MM3SeID45Ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckwokuiA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckwokuiA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC74AC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 07:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783580913;
	bh=57C49zHK+G95zn5xAQagk3LgV9MPF1Yh//l9EbEONek=;
	h=To:Subject:From:Date:From;
	b=ckwokuiAEfi/uwC8m26oBxRJtb8hX/+sgowZERYHM/qsJl3chYLjg0YdE9ZE1hSbW
	 GD0Erb+hMXfZNie2SwZK2+2Np9ZEm/7rYq2bQw8vjdKU0EySFXNaeVhG03Nzq1a2q5
	 gtgjYiohqAlLQtVeW81ziXXg0HGMwUoB9WmYG/6uYuNCztGlfBUeGf1bDyf1mOFTWr
	 1ZauUVS4/mcROq4BRX9dTXZQ5uGr0432cr1V/NAS1xsK4uY0iYHggVfLYLITpnafB3
	 xk/Bmtg77zjgX4bnuHOm0K63x+GfXG6PBJC+2dqri90DWSYg49Xni3xYzNcWkCa8zR
	 5QSSrVgrQAbSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4BDC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 07:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178358091368.24611.2164212054706559716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55290879d5d751c04337e7ef25c67d438121a5987caa5ff5b46b578ef4d26be8
Date: Thu, 09 Jul 2026 07:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783580913
