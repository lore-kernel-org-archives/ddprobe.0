Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2117A2D663B
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761808794; cv=none; b=KgVYgs0v1547Q30dlbnDkjsQQzS1+tWMHEP3Qs2P4lkWik8B6zJ6HlScGCFWOw58pbervYV1V9XzxzHeWdSfVE+//owEsoGEehWl+KkHDZGGrDcozE+V15/ZCQP9fnqlEEP8QJvFb9Le1HqXpBsxh9LFSP5seMHun2RORniYIVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761808794; c=relaxed/simple;
	bh=nptOY/3MSdTznilnVvh6a2NdLx5ruXoX4/3IYtsYQIs=;
	h=To:Subject:From:Message-Id:Date; b=WJn540EnINsLoL0p7Ra1DQS34zjMk+z+MmS+W9RLpWkeSULa6OnPLkHmveGAvDdZZrSNvGLZaDgIV5A9WsQ5UNAcn9iHJzCRCbA8zhL8z6uAMFcF9Ee3gyvxmlUBSl4k/dIhzc9dNJl8vfJjuASAg9N6L1w/yhPlpS0bd3ZSREA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f6R7/CNW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f6R7/CNW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A67C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761808793;
	bh=nptOY/3MSdTznilnVvh6a2NdLx5ruXoX4/3IYtsYQIs=;
	h=To:Subject:From:Date:From;
	b=f6R7/CNW2D+nLOHn6QuL105avxfkY8FLqwPhDv8bFIxS/GCG+3hw42BNa87Q2QWH8
	 fooNZckDvaxoT59+QNjdR+epcrociC54ybDN/OBKUDVM9wu2A06XcHEZbu2VGcwL2J
	 gX+MVyoBxry7qKiZ5k+Eo0Nb6ZKsoE4grIiMaeYu2PzxyUsTlSi8usm3D4DHgxD6J4
	 z5TsqjwPuhum1eLXeJYS+s8aMeLUA511jNSa33fAaaSzYJE1QnfHINOjV2qgrd5Z0g
	 wWiDua5FL30u5/cSkCK3h931LsTq6CQuITXI6XdRp8Cz/gdSUXKTl8BfHvAq9e0Z0+
	 wU/hqYIhFvWdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9429FCCF9F6
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176180879358.13884.6116550897489223065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6e514443e1d5d201789306ef83e862e4ce4b2f7f6cc40898335f914b884d29a
Date: Thu, 30 Oct 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761808793
