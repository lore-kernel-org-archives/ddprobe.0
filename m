Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8542C86D
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774683294; cv=none; b=Au2sWWs7Ra1ioUmkt0voCx1wL0Riop4zxscpuYoxWGlTgUG/LOEOIKQLmlGizB+9eaokWZ+RZ/s0fYugOhKuGFVLeoWI7vI9wsppb/t9kNRfu3XXw3rCDYIK5dGY0GFJvzpfAFHt9AU3ICNzh0WdAbdB3Jva9VsN8tgzL1py4t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774683294; c=relaxed/simple;
	bh=TU2OwAb5ADe/yC97IuLTJHMED3gWvvp8adrsqafpbok=;
	h=To:Subject:From:Message-Id:Date; b=jZdAnbijLxNvDwmYTi7CxsT73T7juHPOjumSsN1+sFyphE74GJw1R7Tffh2QMlSbZSW265f960h4qUCnrZWPZObuwnNfbRXcJesUT6PZAAtBrNL6BYCppjf3Wy+OLFoEAHgqJ+r0T4x2wJ31+g3W8SuioBQ7fD75n82jLZb+zqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jXcA57z+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jXcA57z+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7866C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774683293;
	bh=TU2OwAb5ADe/yC97IuLTJHMED3gWvvp8adrsqafpbok=;
	h=To:Subject:From:Date:From;
	b=jXcA57z+Zu874/14YAk/4hs/NiDbuFmR+qwDsRe892Hi9+Fby7pGN5MoiVKaMJWDW
	 IduFQCRpJpXIDbzIBB4VCRppXNAVuN6V9jrrZ6TB6WvnoYHFkKCEP+Jdaf1DtuMvpX
	 9YdGsnCQUJ22HQgtPSRxVuG3tP1tFbfhihyONOOOT8x7dtBGirTwHIJQ0rQWZ5a+44
	 xAJnTKfgMsfIohUPxZk1sFjg5UVkd0AewLHDZF2Sa8g4KTyN2HF+YjigerHLsjEBIO
	 juEo+bpCOPZxHbMxNr6R7mWvAtvVPBlCQUBvFGdOFUqjhx/m/bidkicxbNgkhIlGsv
	 7e84Z5ttt+ghA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972D210BA424
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177468329358.21077.8118468987229870541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fbcd2b1dadf07c6bd035a91192296e5aeba94751007be7c01840ac1dac5562e
Date: Sat, 28 Mar 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774683293
