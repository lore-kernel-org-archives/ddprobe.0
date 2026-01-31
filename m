Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109F7350D7F
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769892234; cv=none; b=b/0McXZqjLU6JPORav5HdFY9SDic2NAFRDDAdt5gSGMhUKGzcFLrtHss1ArqEMFpmb0sEhUqruwjpbDJgMK39IpaAI4eTeoYX3RW7HtD3+2ikw+CerXBiiNQIqQgRfyzMHr4xLwIZ+yjt9rMu9n/v2REi7zBDwX3Pn5VeltB6WY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769892234; c=relaxed/simple;
	bh=yH8bITG417a3vbtSnHZD55O/tqUAYU+fnVX8CKnLwdA=;
	h=To:Subject:From:Message-Id:Date; b=D1Dp71tv+gIhLFzUaITQvFbaYnbbwBY+e9f34h+6oL3ShyY37Cg+mTN4MyECE7hTK1rUuHMCtqajZ4WrCdN3qsh4lByznDaVrsCCjcWR0rwO1XW9mtaACxYZpqAFYEnog6am4EbLfVgobmTVl3GVVjkNJ9wIz3mvxMyqt3gsY0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awbc10RZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awbc10RZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5156C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769892233;
	bh=yH8bITG417a3vbtSnHZD55O/tqUAYU+fnVX8CKnLwdA=;
	h=To:Subject:From:Date:From;
	b=awbc10RZb7WLrR/i9Eq/CYC3j2TVrfhOUD6eNlrPGZ/9pIV9lfs6IWVMfvtYw1aXX
	 Qap8pdVRNJzN6UZ/5vbJ9vqOY7169szjxH6KnskrlvPvAkQJEx5mWCjJk7cAq4vVt7
	 1OghSavXPpyNLO4HMdN1cDdGBIGEE2lXM9mlX+mA5hC5Gq1wUrL81UsMdNeYWGK57p
	 y3nqLzm3zHguB6UbIC16y32G3YzWD4qs/VslNFboB61K/LC3riqpr4TYwV64UhGdpJ
	 e7mFZbiEd43DYn5/eCQZDRnM63jpzEvudUOmSK+AzJ2U36a/3RKvFWlSk+imlMysqZ
	 MyQ6q1seJCfDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9440CE7C6E9
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176989223357.28267.16473087621447657102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51a79067f5919671f3b5e4cb22f29abc70719cfcc0e66db44f792055e5cf719e
Date: Sat, 31 Jan 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769892233
