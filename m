Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B2F1EFF8B
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761431394; cv=none; b=ms8M4yk/6xc49Wpi5jT7yaQ4qVPdeZEyfoRZ+rIfEeC+h7l9lvFJOqIGnEQQ27m3vO4r+doRVLNyUbLHj1sCDcknr4V2FAKNWUaNl7oyAuRvEZw3RMKo7l8WXUdAwHrTUXuCtajISEczm9RhaN6taOMxPgx/orv4UwsrlUr+seI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761431394; c=relaxed/simple;
	bh=OIQS2zG6bW1Z4NFlYSkkPjrQU6qm3mDrEQhFd/gcghs=;
	h=To:Subject:From:Message-Id:Date; b=DPZ2hST+ZNlNuNxRJtpoTkprjbYhB2FYF/HSk0Qsg+bJAfjkXknhVvwUxB3CG5SU4yayTuSlk64ZDwsNgan3tIeuT4LFICQhGtQrxAzeKFzJWKeVd2XuShL8xNDcXSl7xXPSIi/HX6RXvFFHVsqF8/0VqxsDldXDQUFvIfl+XIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pK/j63B/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pK/j63B/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A989EC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761431393;
	bh=OIQS2zG6bW1Z4NFlYSkkPjrQU6qm3mDrEQhFd/gcghs=;
	h=To:Subject:From:Date:From;
	b=pK/j63B/tApWQvpxYOgG0F3uHYywWFVnlACHVHZu24c31PSUxy6afNmRtsgVMlLAG
	 g/bi41D/Z02+gOAdewgumNPPn8Uawb8wWlV9BX5cqCbINmbfOUS5g4Xw5ZtD4AvUE+
	 AFMfUpSHBPlclrfuCJP9FjI9hjLbxqscbtx5P2TUwHGvKTbGuVutdSNme7ykdLXZsN
	 HkgVqwAAt3Z1STfP1iPwlaPu2uSgMatg7/Yb47sxLvCRgfm/OxcrV0Hl/u2/KHkfu4
	 EmAX2IbfjxwlX70ERKr6P8WHGEhZF/QdI9FvVhqSMTavnxyInU9T6V3qUjNuGBZdR3
	 9309q0UBUdaTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93388CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176143139358.16777.13233904952963521755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0ccf2313b25d28f2a7bb2ca4e6d1d408d82caf74b42db4c6c076ccf10b9f4ac
Date: Sat, 25 Oct 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761431393
