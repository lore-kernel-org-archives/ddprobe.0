Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAFE515965
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790682034; cv=none; b=VrPoV/XeNRHwk19W+BqMa5kAgCULTIfFssXZJZoZAuH28IFgJFJFkGtxB27hyOdGzVc2Ov4zp13qSdNKVoPcVkxhzdWwoKQIq+9aO5cmSquv4q5fUeCvYDOip7siclQiWBD0tL3YhKAIhj0AFiQPVciZ6exMeomvvPmFHTIuavo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790682034; c=relaxed/simple;
	bh=RgInCG1QPWFw99kThQPx/XkgUEr7of2t01djRxcpYDE=;
	h=To:Subject:From:Message-Id:Date; b=QUxIBTtDoP7XmrvoHTMvkwLVo2uqIE0DkujvQhm6Za8eKw6zlS+Y542zkvngJlPBtZsyMkSPQf09u0/QJBQ8ABjnQQK/lmuna038qHQR4srKiZHOK5iLhnAd7gnriYIGB0AJOBA2EplO9Ivsn+aTYM7iuwgLwwB8ytukX0h3hHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxDDl3re; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxDDl3re"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2282C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790682033;
	bh=RgInCG1QPWFw99kThQPx/XkgUEr7of2t01djRxcpYDE=;
	h=To:Subject:From:Date:From;
	b=pxDDl3reOdNNGU9BYHeas2jONypL/ThrFpVT9aMSXMEWFhT4MdqS63xs0yneU4LkJ
	 K7rmCh+p/f+t+3x0YksuCAE2g8QhW87gwR1jMyik9ur3jSrlm7bY1Id6Lc4EyIawz+
	 xZ4bhpdJK/YlCjGAm2PRyeD2ifT+2zseffKpsTXylJL2ArsjUI8qBEfuN5F4qfkS2m
	 RcpgHF/dzSi4ch8EDRZNkfEefWSx8WoXBwZwZrPst7cjaNzm+PVvKq/HtKItu1qBf9
	 eC7TMqXwO55Q9sh7efrhxhJHtV77GvPCk5E4XAKGmuUN20Up881mEfhTLI8HIrvFbe
	 JItS3W8kzCGQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B029DCA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179068203368.16496.12680368092441673646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54293c2478dd5dc138efebc795a184bfeb8b726d1b8072a49e33bf5e9fc8b044
Date: Tue, 29 Sep 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790682033
