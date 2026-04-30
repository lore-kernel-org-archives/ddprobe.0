Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D27739BFFF
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 09:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777543054; cv=none; b=d+5zmsD9sFAilA2R8RVnqsrVCFJrlLCtqkDDR3e5acDlf4/n9fvyQ/thJv8/BxZ77zhX0BHYq/cobbRQFYYvcVL4l+UTnsdoHbXk+0/lhSXaIk962S5hu20AVO66xXaRicK2aBxJeysiJV2mfb6YEtWOH4BwrEGYOJZu+wd0KBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777543054; c=relaxed/simple;
	bh=ARu3NFytx7TfpTxHzCdBlhmAe6UQsJaQBrvN2oWhaoI=;
	h=To:Subject:From:Message-Id:Date; b=eKSI0Pswmfy9vPu6kbKsVen0bfrJRJc9o0GePSv7Nhh5hqgp49AgjsP9x6bNv/PB//ozVdq6PvSGYOZe5spP4cOKjFhoBdomLiy53zwKOV9ibKZiGj6+8m2EvHf1IkEk2gX7R539uxbLvmHo7rsyuS2TL5/amgQCwtFAmWY7cYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SnTZbcW+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SnTZbcW+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB612C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777543053;
	bh=ARu3NFytx7TfpTxHzCdBlhmAe6UQsJaQBrvN2oWhaoI=;
	h=To:Subject:From:Date:From;
	b=SnTZbcW+9475F//IDtJIQ6L2sySFPCsYrZ7FzoJl+FAREmutixiNerpAjwRqNPYF4
	 HeRme9JOgx4t9M1izEMCdFIbAvF3+g5kk2qyW3F9q+A8ooC92o4CY4GSdEjnaNeQns
	 o7f+RGNfkmV5kb+knH6eSLkHR73gFsaSSuwM8ebbAWupcpG0kmKAGXKlK2oiqDpoav
	 P6nF9YYLM3BbtOY59hv+qsnsUdYbdYOlEG34mmYGUSBFwm6/eTfZSOrsTUwBtgh68I
	 1KyfGvApgAa0tmeUQ01T0nxB4ZCiL5HTsJc00iuxo3pq9j8Wu8uG28R4ZIt/sMOk2I
	 IEBwwhst3vTeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1ABFF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177754305369.1953.6696252823959700994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 357a0746705154b54cec1f06376b6f7037b6b6c153a2868398bd7c5e3e0f56d2
Date: Thu, 30 Apr 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777543053
