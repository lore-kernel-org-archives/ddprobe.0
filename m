Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E50E45038
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788673834; cv=none; b=ozfN6e+EaW+mQ98mqjq/aafBEr+UsRq8fTyVpOZFcFEAxAd5TEPtz/c6KFq5VJ9EbZ+t6M6u7pyPzvrgL51yI+cVI1hCG2AGGqEMKwGSrqxW0cgK5g0wAfjlZFt/qv/7hDK929CZTOZ3iPHzjS21Gsw9rnj2J78/Oss+SVXZwN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788673834; c=relaxed/simple;
	bh=WEguv8/TLBlyWzEMa7b+550PZl+RQ48WXHF9TXJD4Ns=;
	h=To:Subject:From:Message-Id:Date; b=FXz2CZJgW0Ky+kwOTmHJ7dZtNU8E72yewRgq90MZoi3BcZWEQIoIOE7PuqRbp+X0ggG5W96kRZfIYpeI5ysR/oesbSDacKTUYm/LK0C/imVp36iUl0lDPnw/pUQCJ2B5mGYO31yg1AC3t/sZaCJ05ukQ8/aLHOKTzWPOm7Wcf8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L270VJIz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L270VJIz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D01ACC2BCFA
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788673833;
	bh=WEguv8/TLBlyWzEMa7b+550PZl+RQ48WXHF9TXJD4Ns=;
	h=To:Subject:From:Date:From;
	b=L270VJIzRUUQJSKYXnWEoqCksNeB4V8OaSN1UGLZHFaakm96/5pjpC/u4K/KCOrNn
	 hncKvXzH1/rGAzCBV7SoFTfexA7irgDxxM3aYzASKsmC34WcMfT/33oudIEbHJD0dq
	 F69zLHjkarVod0Tj+riN8cBbNGBsIiVZdqUsXXwDi+W9GjCzGbV8Wp7hJxp12LGXJh
	 Lu9KAMRAGD6LEb4uPSRbstMxUxN7K6Nk6ZB7w42SDl2q8/J1U0ZLFbncFZKH2nUBMm
	 fqGkg1uQMe4BBWHPaAz5OhyT6EWIquN+BHS/ZnlWL4N50l4v0tt2z2AIo0w4GTh7cW
	 Rre6c+JJv8M/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE17AC79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178867383370.8495.7056204615319778607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2af357c5d44992088647b5f12d70fbdfa11e9f037eade34cd8a3205a2f3c5e38
Date: Sun, 06 Sep 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788673833
