Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C39E5661
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752034194; cv=none; b=oQs104ohN9yRbBEtY1OXYNvzkO5j3rJNhaAYxk6oerMHsOG9kEtHSPq5yyvYZKwJjkRQFavcwPZ2xW8eugvfy0X3P8AE6W2ZJddgLDTYX3VVYYv6Zc6SrJ+UI4t1vExB2IEaWrkNe1wCCplhqtxUDbBPLUfHAGz7ImuqbQ3TlOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752034194; c=relaxed/simple;
	bh=z+9Ywnmx7m84zCxLXWT86kd3Fxs5XVqzKQHbzB/YI+c=;
	h=To:Subject:From:Message-Id:Date; b=DtMxAqC15oNfZNHDvqneh8sI/+ktFGd9pu84Xsr1LhoPXHgKgmT6qPsv9E+vdeMhiyAyzM1Ys8b9vxjRNp74g4v/kMFb3KJ50CQUKNp70gzPu7O+zDxLCd2U4VUwZTXjx1IQoqX8PUzSn95Rl4nFpHgzmGx7fpsqrwOuPMADrJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gInXiivm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gInXiivm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E37C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752034193;
	bh=z+9Ywnmx7m84zCxLXWT86kd3Fxs5XVqzKQHbzB/YI+c=;
	h=To:Subject:From:Date:From;
	b=gInXiivmbH92yYhMEk9/C/A09wXoh3AuUXQujV2g3Zpz78IOWTYS6c0f+RCrzdHmQ
	 9iseoWzMVUgUTl6S1mEZ3GgjfiD8Uur3r10S94w53vdGCpY8WKym12QlfFyNwdSslg
	 mEyQAj1GGChJODsYK1dc961nbMm/9qhO9lDH+Y/2b/H/DZNNmfMuiDFFN2XWUhp3bf
	 13HFXLBgAemHzaax5g7qVBq1J69sObv4VlTvrNLR+B2tcl1cQRbZuJHtmr13dBEUNG
	 IlMu8NfCMmi5u/ppGBMhf2b2dKVyLju4MxWYy0kQ9xiPkVxAsZgVaW3usNLbZnLtpU
	 d8W6/hnEuffDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90665C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175203419358.21300.7837778544428536804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01ea4f732fb8a4b04c3e8f6e6773256f5b58d1a0d24e4df63fd31c4dee18b24f
Date: Wed, 09 Jul 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752034193
