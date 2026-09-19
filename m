Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB56E248896
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789782034; cv=none; b=WHMq5lpEz7AnYv1AnFjIyS+tlmuSO1NBMCWDu0X5UZcvULeLolWBli4lc7mJKrpuuDSoKO4mKFserAYe3If07NkwSGyfTnkuuTNnj78+tSZHPNNv3mioURac8p94ycV9cUKZbJGzaEcDurX0yzVjZ4xO9b+h5ZR6k2yJt44/Ovk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789782034; c=relaxed/simple;
	bh=PFGHGGutal9s9X7n2ASxriH+1g94d4/wwOu5LlAIOIo=;
	h=To:Subject:From:Message-Id:Date; b=tcRqr6gVYMqqtTzGayenwJc0O53W2DyC09RJT0p4zCL8n8hASRBC6kUFsDoJRyaat1bxb5L37JHhy8Lg1OPPPGD9BnLuHwXsH2GGFwetvTawoX5DfgDaQD0rKB+MaStdJUYi3XEBQcHn+NT8M28CMyX2l+7yqTmN9njYWrtetls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2G0ZAwm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2G0ZAwm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D24CEC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789782033;
	bh=PFGHGGutal9s9X7n2ASxriH+1g94d4/wwOu5LlAIOIo=;
	h=To:Subject:From:Date:From;
	b=m2G0ZAwmkowPlTTXFjd/cuHPojwIp3jz/9dh6f4/A7VWolCTEcrnbXuBuEVKsaVld
	 0qUGtK4MFy1WTnXGLLzfZPnzVOVD95iEORP+x6vyLB3Lpj/aQAn0u1aT8zZDd1/QH4
	 RF8XVXTg5vd4RQbou2osPOALY3nKW7U0ZROt30/W4/K7XcYBpalBpTBvrh9Wv57Qo2
	 Yi5VEd9PwssQGRbPa6kG99BBxW5loyXE/EgYvzUlTxK/vidmDGK7FcxmFGE9TAhIr9
	 qyk+84C8GsOe3qdRzrL/9wXZY9JVmpO5/hOIRFOlZZ+3t5v8SlMaiYRnZQgLKdT8LY
	 u4h2mMmh4i2eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF260C982DE
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178978203368.14070.16274083041501308463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d18e06701d8a508a6f79b9c16419e6109fedc3ab18b78e9c511cc2c7c0ef52a
Date: Sat, 19 Sep 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789782033
