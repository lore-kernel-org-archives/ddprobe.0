Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7201B1D61
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729301154; cv=none; b=dB4UatHjdTOJ5AnFFMekIjNZtiG89GyYRVhjLLwxDDgRU2/Tfl+BMhcwA9VXHuDIr+iu3dA9CDESSZZ95INB4IyeiYDAgUdhyDOESLgF4fflkZZ10r3lRfNLwJJHwMokWU/Qc7WrfxbeO5avXFDyzK9kh+H5qL+Xu6Ky5kUimuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729301154; c=relaxed/simple;
	bh=O/zPWtG3Wy9ZrBsttqaI21/VExH0Q36WPPctzl9gKFU=;
	h=To:Subject:From:Message-Id:Date; b=kSTqCqRRPO7vYIoLJecCBZ4nyG+xhogAP++bFm9sH0awSiI1dJQJBQbdGaDj1ReRc6LDQ6WF5PL+qtM6/a4AYt78Vw3mmv5im8OBEd5WwhLTk/DI87jHeUE7xWUSBu8js5+sCRlpi2QWf3zvmU0H8S529zk5o/E4/bvrBpAI8Lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhrLlSAR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhrLlSAR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A600DC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729301153;
	bh=O/zPWtG3Wy9ZrBsttqaI21/VExH0Q36WPPctzl9gKFU=;
	h=To:Subject:From:Date:From;
	b=AhrLlSARYVlPWbht4hItLOPMRuEwQj30g5boDFdacq6mpxWBpGlOfgnqBYW/mdy2a
	 TTms89uYvlxO6Wt0SEjH9zRHPfVi5xhTEM4ycSXizajpVwOq4eZNUaNusktond3qpB
	 g1B477pwuU+D7a8GopXzqI6IB2pMYS6g4KM8g+RIkst5J0RkPlTj/2EhQ7IHn4K1Im
	 sNIyppaMEuJ8z9++DcpE/fazOeFDjr4hB3IkySQODr9A/gxvImAd4WXEBEuNvoa7iD
	 HEpKX7ifAKVWUQuzSKx2RMEhW4hUNdCz/h8mZMnWxdoA7dovPmPLJuX35SmAzhD397
	 0hmZY/kYOiAtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFDAD3E195
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172930115357.27162.10836295089950092098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad80f32ef34f238185108e818a64f140d44cddc87a9bc9c3da40d4fe5d3b1dfc
Date: Sat, 19 Oct 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729301153
