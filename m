Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E80D540DFA7
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 09:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777975054; cv=none; b=oOQGKx9QCtivzJwg2lqUbIDU886p25hc1/Ue5GGE4Hp+lsSodImpsO74ysllHda7iqgZqotelJyUJ5hhm0ojcH85WotUfs7sHToQOBG6vAq8LBbI7QLuqjHUhVq7W8GxbB0SNKzs9O87l7ZAj5aW8EMxf+oxrOrC9oh0t9Cwgjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777975054; c=relaxed/simple;
	bh=nL7aBo/5M3AI3xXHBGzbTmjdh6AlL3vyJDS/O0UPzVQ=;
	h=To:Subject:From:Message-Id:Date; b=Wap4tb+yY6TayahV8QiqaCULMOtJsVZmdHANhIw/t7t7p0ESXDxzbdblD/w4ovX011A+mWMFxXntZuIyeyGCG2jDJkBHvP1NCU5CtwaP8c96HzcHOeipyiMlWtDBLWZVPjfm2p2z++zt0VElEGLvTwCkK1Z+1TgMPFgJxNZdbKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8g2BfHd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8g2BfHd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B844BC2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777975053;
	bh=nL7aBo/5M3AI3xXHBGzbTmjdh6AlL3vyJDS/O0UPzVQ=;
	h=To:Subject:From:Date:From;
	b=d8g2BfHduua6qSS59tmtESnnCGcXDTAq2DFwhG98mzavQoAxFXkkKjZTAjA5TFhSI
	 4p4mrtnOpnHgVZwoSDApQJv01BTmLTvAeBsSfx2l1cDcn5lAe2uBbN/x4j+2sSsxML
	 0unZdQ0svhNgt5nQecAcONde6DHAXfKsmEFM7zQpKVuYTGKsVxSXVQ3Mioj5rbVUif
	 1Z9YMYnIL1lHbrXdDmPkjVibeymV4BHxx6QZJ3EhMJWb7MDZOUNVUw2VVOvdvTdJGk
	 tURx/gzRoGZ7OjnMkf27MiTgtVME9RrSGZElPCLnA3FupHvMiOO+LnLOJ2maijb1UT
	 e51Z6U7EpPnig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A3ECD342F
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177797505368.25791.17374867479965299842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a1128531da4418db1e646c4c3b9f18bcf1ceaeb9273d176984bb5f0ddfc705f
Date: Tue, 05 May 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777975053
