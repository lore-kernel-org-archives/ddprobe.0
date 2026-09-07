Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C83E38228A
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788799834; cv=none; b=TcFO53SSXoFNvYYUBZKN15D1hvftDc+EpOkHKXb2A1ewvIocUrg1Wy+rpFfl+u5aDbtO1qeri97+B+GhQ2dVe3lVMZx/GG/bbGA9dSdZwv1WxEgjHM0Szhiq4hXyncGe66iliZDUa/ck7d3AVXcc/ZTW16rQuyUaGQtnB5cm0nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788799834; c=relaxed/simple;
	bh=BvRrebgnOhlP8+L+lwc/022JiJ8kicoI8dJynMCgZJs=;
	h=To:Subject:From:Message-Id:Date; b=CtUq9wjOXRfT/CZa5Ao15oTqqu0rq/jEPZ8jFhoZ6MvMd4rGO8HUSCxCLqshsbQRfsm+T2Gc+vNZbJG+6bWbLsWqKS8ZorWd68fwEQsnM72yujqz5ZDcfJC1rqcjgjpqJ1vHEaTANezk5Hz74GFbRR9qKj4cF/FAoPjf0B3Mr7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iREdYDmY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iREdYDmY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA037C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788799833;
	bh=BvRrebgnOhlP8+L+lwc/022JiJ8kicoI8dJynMCgZJs=;
	h=To:Subject:From:Date:From;
	b=iREdYDmYNoW3+P5cp0yTajGTvEYaGI06LHa+sPRxdXtbIr2mXnLutbOXbqQe9OXuG
	 sL4tMMAMyAMdmoj/lySjaEAOJG2aAznZ/BfDOa8tnbT69iEijiOx6MSvIUcXXa+o2m
	 fOLKNRP5qp3qpH7SS5XWdWQE93Y8H9w/+nIxLjiEYZsAPCx6uCoXaBVVog8WplHHIX
	 fbr4Y2ccvMfuYrP1GKWygzbGdO4ZHTbaHkhgtlHFCBbwCTmfHpJOQaTTdq2JkT/Ypg
	 eJtKfhfaACBREWf5bzPUmHJWjXLBzsnMaf2JDB8HxEZClPlE7jhLnQsOnZLyeUx/Ts
	 Syq2mrHaYt/qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B67F0C79FA0
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178879983373.3711.5579054439449134989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed3a02d70848af310bd9b77aec76d04e60fc8f574508b0bca591a121944e6f8a
Date: Mon, 07 Sep 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788799833
