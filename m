Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1001D25634
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757359794; cv=none; b=OfO4VE9qhoVQzdB3Lt2oLZHrngr+PFo++mORt/atxMx6FVSq5E1ASLo9PFSawWA9LID21MzN400AoiGGC0DNYf54KsvAxy6dRwchWiqqkBMQx6C3SQA1xGYe8eLh+EL3SWnwAWqLSQZs2zLPuUrhIrLDwSzQuImvWsMblEo7NoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757359794; c=relaxed/simple;
	bh=0bWLbfFLj1OLl8U0VY+NwYtp2M2kaT4dH7G2oJPBWfg=;
	h=To:Subject:From:Message-Id:Date; b=u2+Yv/fFfB7a3mtmNUDA7KoNY1ZkElYSvIkpqNSZCcer8BihkKvBOW/2PqwMSwRZZNkPnblTbyE77kNbjyHeVo+ZX4y1CP/bZIRASn54t/yrtvVs+VSueZ9y6el9I7z7X2fhdQAzxljW4tr/K8zj/xjguS1SB4jkNX3QUupTIjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8BjXSF7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8BjXSF7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32D2C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757359793;
	bh=0bWLbfFLj1OLl8U0VY+NwYtp2M2kaT4dH7G2oJPBWfg=;
	h=To:Subject:From:Date:From;
	b=d8BjXSF7+I+faHOaZ4QmQAI8m8ucp123IT6xoiIA+yFIk2mq08+78FhrXI/nD8txo
	 r0hpVPfA+9D7Dde5ms/hDeTG3c9IlL8/qS/JYRgiVNYakNmDSq7FZpWh2OE66S4tcJ
	 FZrvu2hmmUdYBkeTOxMMYb3Is2RVXhhZWA9tMd8LMUoNQZ0NRSEUcfoWYYPvT/wkAR
	 im6FnyWoMlz/kfqNe2sHmYkI4Sm2rlLdBKWvoV0bIKGeRsAKG2HnTjyq6OChLPNhX2
	 TgtxceoPfBB3/OwqVp5gkL7LKToFlx5K3fAHbbr8CMWI3hsslrjs8sYmoL7YweK/6h
	 Rfj9QDw97zo5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B41CAC581
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175735979358.30228.4203264413159268086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e349ce848a5dd5afafb82ba24aac43073a6f741d28a98f2b6ae495dd122641c
Date: Mon, 08 Sep 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757359793
