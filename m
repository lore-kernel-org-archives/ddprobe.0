Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4120633FE36
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 21:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780953274; cv=none; b=Rhv8GZgBzWIo5fBvbAA+9tcIGrssBPOZBOi6B8GgYRsuVx98Ohqh6C6xVjHWNKEKwO6W+HyClgdYporaCSH7JsBbjeooLHGUvgvAvcr7+12/ysBkZul1T9jInb41y3OccbDnix3v1APq2EzzyLn72LHqFEaQDCDhkysR4LWbgnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780953274; c=relaxed/simple;
	bh=DsY3jgt2k3/piYhX+CC2eDL5sHaqK6H27ncflsmOqDc=;
	h=To:Subject:From:Message-Id:Date; b=OIpBa8jKkGIo/Q3yOQfOjIF4cdo/wXF6KCXZh7kX3wlvvrOZId+y359uEV7AiY4EWT/eJnxjnZiHtrBsnB8KMyiYId7uB2dCr2Dj6CUKC8Ke9uc7OJcfEDYaEbkuLvC0Sl7bXRJCFp69sK87QQaqZrzls7XpRsJr6FrKKv+U9lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRLpGuAS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRLpGuAS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7D39C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 21:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780953273;
	bh=DsY3jgt2k3/piYhX+CC2eDL5sHaqK6H27ncflsmOqDc=;
	h=To:Subject:From:Date:From;
	b=eRLpGuASTcNNHc9bollNIjQsU8Qj6D6Jy4gNnODHcw8Fk+4Hwj6rk4dpc1pBbS7Zm
	 sEm/xYddHGcvLxC2Kc53nsoh14clQYyyvcXheZaGTw8Y78lkl9UN66r2nb2KGig6Yj
	 4j4pLggBRF+GOAWT8fTSXRdHkybPjjk0Hy1Li54rAMbN6MrC6/2umSU+52QnjV3yAA
	 HX7tbOrVq7GlHr0BWIAVJBb0FZQfUw7RjAl4YTacESpBzuZTKQsI1nRa4QiPBukMZH
	 1ZQNp/N1C2kYRWA9G0EKrizyKmVCctXjjGSOATKlybbIRmx5e1iSTDxqt5RGLv5e9K
	 uKaTm0aXvKs9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD77FCD6E79
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 21:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178095327370.26761.2961498960227946059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43246a16b1d81356e9dc5297e889fba8fca2857421837f03e381f4089f19856b
Date: Mon, 08 Jun 2026 21:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780953273
