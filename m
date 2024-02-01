Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F41B062159
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706801897; cv=none; b=iRG5J70XE9hscUUOKyKJVDM7Ckw/4vJ3ehbegQv6lkY+mgG7OkM+amD7XpY1VKitMSDyvguQtlbfDHzuev0dD/70H8XVuY0uez5vWM8pHzLrD/ozyJiZVb98cr8zuyX1Ff51kO+rz28DIHmWlXYBeoEjwl5U44HyILLHL/WE2Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706801897; c=relaxed/simple;
	bh=Ng/0bueNqvti2eGToxheIghK/uw6OtNO6r5xeW2Wexs=;
	h=To:Subject:From:Message-Id:Date; b=QEDTinpRC0lWoQvusV3/19I45qiVYKEBBbq/rUrBcJkacqfxInuSHS3pbWogGxw4ps9tHKElt67Gdcmk2M/rwkbv+mgmAvlTY+xxdl5gu6bWMzlC37k1sQvYMneDseq99HrzQdjprJGjOgJQUmOvLDCXMjiP3e/najnF1vbdqkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cd8FUXqa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cd8FUXqa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75050C433C7
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706801896;
	bh=Ng/0bueNqvti2eGToxheIghK/uw6OtNO6r5xeW2Wexs=;
	h=To:Subject:From:Date:From;
	b=Cd8FUXqadPS3cuJWhm/U9qBBPQIjzkh5ru1jXd7mSF1Gqa3EyCaJyY1HJQyRqWpvP
	 p27tEg+GF5mUsthELUlo/nz+mAUJfarCTOnHqYN0wt6hen9n/3YmZPrr8x0Ggiyn99
	 F3ZosEI1I/pfSNu4fpFDiZjyzNE3f/TM1DhT+EINn/2rlgKD5Gw7T97pHsMjcj2KYk
	 9H8yvwtOfjsz3olZgxYJL2inmE5mG5zyE+a4YhHTyjwPqDsR7V0rfH7dkvvTdUYBaL
	 Iw9+lQSIdYAVHxgeo8nY20AjGroIDDWH1FQV9Q53g2B9EW1HbYekQ8ICRh/KtyeMjR
	 yYDrCfOvAIiXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ADF3C4828F
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170680189636.10104.3413218560505218144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbdc33c2b6a8a306afbc8d25336f1eab47eef96acf58b4ebc34642de9a2d43f4
Date: Thu, 01 Feb 2024 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706801896
