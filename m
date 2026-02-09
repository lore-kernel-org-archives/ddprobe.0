Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9C4219EB
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770611634; cv=none; b=pc/ieTHdXskY7x7Xmu9EUQ+xEPpKU2+GjVzijEutUIne156PRzfYXb/YChusNRkrnoy6UFWzjcQgxXCWjp/TgWi4UuSGW17x4cER37xLzLLn5GaRq1QS9o7vgAQDgQ2BhuU9WDA5GuPnKybPdpyeWCiJua4y4MKrS2Fzzt3HWYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770611634; c=relaxed/simple;
	bh=e49iUigql0k1vHGK+r4qMAMpZhFDgkAstjLXcbT6CxA=;
	h=To:Subject:From:Message-Id:Date; b=b1PbRdVc3ucBe9KTPHA/A6H+4nSnJrTpfAAdBUGDN1qh7lx00bZooHMnJYTyBKn721JISRdMbKx1tY9QAS68uPqAGklE//G2PsC+ehjrA5x9HJ/Iz9IB4wZQmCDF9oE8VNlQEd+4bClMdX2+YrdqRqZaoV7IE4izndFfNqw4Nf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PQkFl7QY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PQkFl7QY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85EDC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770611633;
	bh=e49iUigql0k1vHGK+r4qMAMpZhFDgkAstjLXcbT6CxA=;
	h=To:Subject:From:Date:From;
	b=PQkFl7QYB+Zsbk+W/NcxpINeo3P+bRTDE4/MCHAuKAN94aLXf+CNptxLg3Ujv1XKY
	 1na9Qfm0nHzSsuH4jEdmvmok8kvFclacyHlXVEJ2IhTGR3kmdzrtUzpGIdVJKy1XkD
	 4w8A8hSNWyWQv1/ohlqJ4Tnx938fnggLpiBTqYQuOl+2rRnXvggKGUdtYlhmeUg1RC
	 NTkzHJowWHYIYeRhLaG5wJMCdTsvFVU+158I3/TPnP655Ad8fVsVA1xxdbFSNARMWo
	 8QXiuT7awUPMedfdn6dMWUwCj5TtFCg8GwPhYHsdJmiXelC+DnR5X28qC/+AnLW8jk
	 CELMpG7MhXWDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D63EF0707
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177061163358.31943.9267247167121285698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86e66d6ea226bbb82ea6caa1797dedcaac193b0f789e3ac4126738a6bb814707
Date: Mon, 09 Feb 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770611633
