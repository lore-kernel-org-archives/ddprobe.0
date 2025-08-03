Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3131F548EE
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754214594; cv=none; b=If/lVz22KoWdtHinhC66mY+3u51q/M+XKHGAvMibbogbC/b9xzACSopmEDzc1UJk04h5SPsvegn6x22qXe9ys+QuCBagE/HQvau6TK9bQtGEuXW/7+l+vx2qLyFJNbYtH5eQjwTbvPC1OtUMSyfU1X8lcSnOjuf3x0watRlbTow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754214594; c=relaxed/simple;
	bh=FkMToAWV+vs8AS0ivHI69zXMyuvGS16nlX/GNhG7WI0=;
	h=To:Subject:From:Message-Id:Date; b=Vs4UC43ZyG3k9Yu/sTUyuEas3BILpY7doDwb6jq0iO10kEWyCQPb+xX2iCJ/58X9JIWC6bDuRMh6OK8PeHdHN15Um06x/tQzfHDmjqTv7QC/w0e/TJsoyk2mvlNMbtrJog/P2LtCTYJUo7XgGmq2ZqvwDis5nUgSlvmoaI+sKaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErSN7niG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErSN7niG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E97C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754214593;
	bh=FkMToAWV+vs8AS0ivHI69zXMyuvGS16nlX/GNhG7WI0=;
	h=To:Subject:From:Date:From;
	b=ErSN7niGXaqOL3g+CqUiJBs4Z4ivnHGQo8nngpNgmifMPnmIlZKpO0fAKArjdEGDf
	 nUTrD4JekBQIrXeSlTi2CxafqB53WJd05vWnQGFDmFg4dzAiLLA5bervfVshi47las
	 DFmb3MBFCQmIJNs7H4b6G6PECcIz+LapRzXtKUJZUYWS5zWrIdX+f5kaie8uaRfw2V
	 y+qZ4s1r1G/uTOiBuHjkxzZMy9Lqf6jGSRyD6NX4aKBufRDE/6Xqmm2inM/YRWITvK
	 y3vJ20RHj7Zd7CH18DuGxcfexquanpaFBNpmGRcTBm2HgbFBvf2hZbsKQSoIBrQKRD
	 6M1Z2uUkBuHHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F82DC87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175421459357.26129.8575384775734118310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8de6575f7ff38509708bec5b2fefc29090ab01544714a4480cd89741ac66708
Date: Sun, 03 Aug 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754214593
