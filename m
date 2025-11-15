Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 963651A275
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 16:50:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763225454; cv=none; b=V2CWb69rmcvWqY8kvy+TsKcAW71h3WI7ifyOTEbvpWuiIqum4nLBC2DhfWz+o1lWNSMbBaYlyh6orLzWZPB+90j3Tfg6cnLpz+u/xxuJboI8HLHEM4slJcXrz//4TPBsFJfIZTXgapvhzRvHj+oqUoQ9kVxukJxeoYq4eMKKUW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763225454; c=relaxed/simple;
	bh=NrkU5kZnHXp1z1nFwnfcQqCpPZcGVBoSPonBfCzrM6Q=;
	h=To:Subject:From:Message-Id:Date; b=CgYOfV9DivXIZHQiJc1BofjhqhCssWrN/joR7iGIb2r6BRZv0d7HycI6abwO6+iNkfgcv7N9WnuL01cvBbH4TJisJSTIBIKnVoSyuEu+Z7KQzfK9Mtn0pc//UxlT2NGLlJzYoVaSoFVp5XXyW4BR8etxATZbHE23nruDBCWNPIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rItYW58g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rItYW58g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5446C4AF0D
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763225453;
	bh=NrkU5kZnHXp1z1nFwnfcQqCpPZcGVBoSPonBfCzrM6Q=;
	h=To:Subject:From:Date:From;
	b=rItYW58geEEH+PBTgQB+H5GBsUDyk/pJ8XCvlGtvpAD7Y6oXibIM9v+P/erfmcMrm
	 1lay2cI8nQrQi9bx6lf7iyfGqMZeisZY5x9/5FAwE+qkoO/UhuDpicFBEDuyXAP44s
	 pDWqe4+ELHODNk0wi6omjd7j7jeQ+H26IMDfs+dXu76SHD1e5DSY1vp5p6KUWdMDEY
	 AKJLXTZF6YRZAslMcrxWqP5lyVtijoFu7LLka1Y5UmZmeGWHw/n279svRvxGsQUP2P
	 3BDdgfIQBUQsUc2P/oO2ZUTNtp7wfcz5i58WRoaE7M3pkWiY/oNOqyvEasR4RSyNxP
	 g3LxxBd8lb8jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A292CCEB2E4
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176322545363.8343.477394843462909779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df12b9a0f27fe6f08c808d168d02d372eced0105d3c2eb66bf5a48660af1a4fa
Date: Sat, 15 Nov 2025 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763225453
