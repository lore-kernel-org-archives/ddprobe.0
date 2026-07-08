Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C98F39021C
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 11:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783508914; cv=none; b=oOFoyoYzCcuWEVz9wgS8tA5/07Epjn5ZvTCWOjCYrTCSCqo59c+r3hvyCcZrK0e4yVphUNwNaZ6eKsvG+lnmco+iIi1lthxWjXIRc1YqqREU8TBYjgxgvxCzlDfJPlyak9RIxbFpjgY7eC8S5t29ytUrylklCZuWW/c9Bc7kI1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783508914; c=relaxed/simple;
	bh=JwW15CQmQDCFNjRHXaY2WL6BPNT8ud9//FcPwMBZ2K0=;
	h=To:Subject:From:Message-Id:Date; b=Ru8b/rChJ1BSHI3ZxpC/XADfVB/b1vbxEQgeNrG4ZrU6nM3J5ixOlJx1WlWHonnic6otcLUsp16qIUGol7wEkRW5JzOTl2bOTBdJZrkOBzLMgYGkq5L3SpRER3jre6em72LMf6+jYGRffRPQH1It/azHaryrjsWqFMfXPgK1cS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALFdCRc0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALFdCRc0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E04AFC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 11:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783508913;
	bh=JwW15CQmQDCFNjRHXaY2WL6BPNT8ud9//FcPwMBZ2K0=;
	h=To:Subject:From:Date:From;
	b=ALFdCRc02dBiRYntTCVleGUpmhU/GBMsSiejZXA/QwxW8BrwqwNi1+HkkK9prADLx
	 SKaLkYG7myAWvg40lGM8fkPCUq80fHM2Bve9x50rm52ZIgloPbeOjzXDztsrBU471A
	 s/wkV342rofnMYs/zkApCjKD631ynAhQad23kfF+Gfb0TZpq+ZwP9dBkTvRv5HH5hA
	 QB0vvRIrGL8QcIdtKkZJvZvVauRIkXyMOcAC3bgw6+hRYYWaroXNWG9MF/iWiQW34O
	 oZosjO8/MbM3bDdvN2D2dUGC87mwHGLyUX4IM5NDJE+4h+VifOwVuiIn0Ph+O6IN8n
	 uHD+8Fe0WQuBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC20C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 11:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178350891368.9516.16950904255663841686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3e90cde79716741e985ce842e1bc7256973d2cb7d51f5fb9b82cf3b6cf4c383
Date: Wed, 08 Jul 2026 11:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783508913
