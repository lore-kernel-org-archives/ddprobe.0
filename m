Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2773EC2E3
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 11:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778155054; cv=none; b=gEAgImgLtrYE6i38fH73tWar2b8g9Sa0ZKRPHb6LJCBEU7MY+REE5QXL9FHl9tGjb3/7c46ZFuqFY52ylZh+SEuSK/K91JYj69rUxSNexgNqvQh82/3HfNxBvkHXfVJTmJnDJPfcXuzEqIbXCOTESaIO9XqB7VBNGLRzMBCO7Zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778155054; c=relaxed/simple;
	bh=790LVeUxJ6TGPT88DWrVDjYb8j9ejsqYI3M+XCE/R5s=;
	h=To:Subject:From:Message-Id:Date; b=G0FLnM3JP3+8+q6teqpZa5huBuv2fOzEtNP4TzwJRNz8aGnDdr+kOQW4jgDjudMwEqUrsZ3mfgJY9idUfxHd+X5G2bL1IhI9gyqFJ3B/E7VeOaOmqEDs16pa9NuF0ZY99AGUeHQlTRVSDUOns/DXmmVpn4BaLghXY3Oro1qIOi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UlJL2hBc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UlJL2hBc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE01C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778155053;
	bh=790LVeUxJ6TGPT88DWrVDjYb8j9ejsqYI3M+XCE/R5s=;
	h=To:Subject:From:Date:From;
	b=UlJL2hBcL/0rM88UsCYH64B1ygbXX9PozF38KwFzAB7cC9Oydu5sXcaG2Gv9bI3a3
	 PZisaHzEF05v1V03RauaWHSxKMsXzbhb4E8LePj9a1QCKo7gmipIXEvKce2lqVfx7X
	 io+lqDLVNmI+3c+GI1gFSqod89rK6YHsIJn9bPhI0wb9sd2tV7tcQiyZDtn1/3Fnq4
	 R27hPw1VDJF8J17AaoJ3xF6E7TQh7O9qPnWiY4MrdFUnWBCvycRRCYNXQnzrOCjJqS
	 bf+R44eP0Rdp1Pt445RVyQH/plMIdv+dyrTxGJEjTWibmC88qz2pdD7c3/f7P0kuM8
	 SWsDZKwpYq1hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB128CD3427
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177815505369.12501.4684230715634365628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bc21af33f9c1788f44f199547b1994fbf4d5d630b9ed91199dd0d860474839f
Date: Thu, 07 May 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778155053
