Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F2C20296A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750171194; cv=none; b=Frapdz/2h22WDrrznwarsjCLnTk7DJPKWjrabxXQnlCKXN+0gfxLoU+njUerfdB7Z7aYnuR/uam2K9YZd1/+uMuL60j802+n6rOfO06Lak5yv6YeI59qveBpmOYnh2avLNaCR4VIQaYIZHDRLciu7tqwCyC/kyZ1zT7bldKyQKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750171194; c=relaxed/simple;
	bh=0MdVsNl2wEGfgqiKiAlprbNQReEmfVLlWXhRWz4bdFE=;
	h=To:Subject:From:Message-Id:Date; b=BBSa/pFuNRBQn7tu8b/E3SqRF9LuuByfTi3ddaZjvf78V+pObR0CAvHPFj7s2QvX9wk0g4vRwXIlpIrZYrLIh5uwpZjYHRSbfCt5hWfnVayhQAUOe2lW2SYXRTSgWe6cpelII4fxjzwswYKE/iQNczU3mW5Lc4zyY0giz9YH64o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2/c8KgA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2/c8KgA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2902C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750171193;
	bh=0MdVsNl2wEGfgqiKiAlprbNQReEmfVLlWXhRWz4bdFE=;
	h=To:Subject:From:Date:From;
	b=R2/c8KgAIFMG0GCrQH/ipA/4PPqxaj9x6XJyMQw8EPH3KLC4E5UGJLPwihhgNFiGS
	 mfn5YlMsCagKG5I3PXd2Ko5fYpoi82dEYBxIOlF5YkQ3VtEhS+5z4i+Z8gZD2jdSLo
	 VCZjhPJIClErBGRhRhqIdj7OJjj5GkAGcZ89TqQIlh8kSWciAoQDpT5KuY3HVzyWib
	 KVO+8Wbe/WOv+MHPblD7XwpGN0sA/p/ehOqcUYInP1eg4Q1nUBg8bkQ/0VtCawUPeT
	 2GC1EWUfTnxug9OpIudK7eNjxDYjBs4GlKJDNRqWzbnhH84RFknrdjTSiUtYLMBPF5
	 oa2v2raUd/mtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9018AC71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175017119358.13987.10886480721393441295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed80bb8bf8ee26774702898d9d887dce69b027ed211a69991e7e3360000e41df
Date: Tue, 17 Jun 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750171193
