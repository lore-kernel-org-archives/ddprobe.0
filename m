Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8FD21CC71
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 21:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776029254; cv=none; b=MyPHxbq29fkQkKDEeNPyN2fmWSwjAmv9Yl71D33lmHzcVsrmLRIye0Vscq/XdCT2Tz/RyyksdvdPsCvC9OyF2END89IIBMpsp1UTT0jbcZAcdxw84bkDz3/1wBLI8yKzSapLe/loEATedhNqpEZyPfen2+XMZfs08AuMbSrM8Ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776029254; c=relaxed/simple;
	bh=Iz4Ts6BvcE2DMYT26X7d7cU60es8cnz1SieBYhn/bWs=;
	h=To:Subject:From:Message-Id:Date; b=Tj1skKH36wdNpkDnTQVWMV5XaxnZvdNQfkIbHMxBYh9WrJcawzF1ptiCnFm9bo5Fge4yomNRBT2R/6fPOWM6JFIsZqmCGG/+YTNLpEVZvo+6abfAGqjVcCK2Bi4W967HsA6MTVHEQEv7H7FgpmO9A50JKzze9WDfYSUcj8zTkZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qmL7s4kp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qmL7s4kp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6657C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 21:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776029253;
	bh=Iz4Ts6BvcE2DMYT26X7d7cU60es8cnz1SieBYhn/bWs=;
	h=To:Subject:From:Date:From;
	b=qmL7s4kpr7oG7FXitoAuXMksb0ddr9fluhoDUGR/R2wOxCHz6+0o98k+Ou5Cm4hPF
	 FtvZzDoE553dynUe0FpTUWMnlArYlrXfV5dsN7cFnmvtSQgz6CA9U0vZtREXow1Cfn
	 7jqy665zCyjnoURTOjvJid1nhuSSf0bxdjG5jkfAZMyBOH/9UvccEmUYXgYoHfzFmU
	 233geyLPTvqTrTsmNwR21kMpoqty+aFsnIrX9/o4IXX57WOADspqlnFxirMYh57JIj
	 8r1V2z4bF9fbqMrZeSxFmg7GllptRdKyhdBeA9BYPbw5UsZd/lfgvMUydIOOi7JwnB
	 BYx8SOYfGASyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8DDE937E7
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177602925369.12103.13784919987269436398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 130f6736abb1af9e8ec4911411c40591f9d9560a7bad3976c925834aa8568043
Date: Sun, 12 Apr 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776029253
