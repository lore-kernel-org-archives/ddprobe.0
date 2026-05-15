Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBA8E427A0B
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 09:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778835634; cv=none; b=cSz7MNa6pgFy3u8l1x25ifzjTXka103GP2k5zC0jRa96MbkMsoGMceP4xmWcUGYdytzyQ0KT/ZPJvgQ7qVREgaxTY8ypm80DRGrAOtBip7BhXSBtDhE6awLt+GmFeKT1/GGy/O99kjhNkO2KttqCjjev5NVM4Tx4TvjfIUhZeAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778835634; c=relaxed/simple;
	bh=CdG+34MIVLdaLXPLAAmtG82aPdR7WrHHu07yrzT50VA=;
	h=To:Subject:From:Message-Id:Date; b=WTMxIzHuur4uzs2d6fxqJgikmjrQ/6K0aUMkwqUmVqKeINyn3YZxRWtQonjuySQIyNFkq69ZkN9dvHckpDa4HUUTg5dXtAxuyYCC1MVbtaJ+2Qk7v1YCdSXmX1Sc/ps8bIga83oGoY9aulyqUza0U9CaRG6iQWUgm+HOoB6Lsdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s6NnTghJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s6NnTghJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA245C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778835633;
	bh=CdG+34MIVLdaLXPLAAmtG82aPdR7WrHHu07yrzT50VA=;
	h=To:Subject:From:Date:From;
	b=s6NnTghJ5pMYADTtdxXV5zo5B9lls+6TQ9+iwV4lCySIDG4wTBua/I/GiVh+0+8Zv
	 1sYVqzXLVRTwqBPUJYv6beKeST9X5rw6ds4w1ar1wjui0WOdxcC5f+5o13XsOrO4eG
	 wRC+fdyHKb5aRIlsRoyBinqm7X3b6WZyRIjZc+iH+lBw7l6Z6XJG1rQyuZa/6g4/0V
	 ZOKtHSfzQtdQxBPvexG0GmZK5s+u0Es+f7i3HCpsLNBfjcIP/VLbBzEP5kG9llxk74
	 R2vqwsi+pRDV5FePMM8KQw5pQKx+Msex5Ab+GoUm+GlMV4RAeqWYKQzfKDJ2gjcJaG
	 QHed9/Ut3s0/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3AECD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177883563369.30264.17598389279932324453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42c007dfd21d0b96029c4591a9e04788b0b53c58d7fed105980654a7e99b254e
Date: Fri, 15 May 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778835633
