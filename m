Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3264D1B0F27
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733308554; cv=none; b=H+3xINGc02RS08asrSxoA9+vupu3WUK/Mk/doMQs6mu/CeMyu0kbHTzD01dRbjanUSyKe9sqg2pz02PLiF9I1Ft7oht3qq98BrVTYK/oz306Au65Y89jzP7pDEXdIWqfqCBUu2ABpTMFhL6pzZ0XFLd0oqhF/SP/HJQ8nrETj3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733308554; c=relaxed/simple;
	bh=QRYF25YpNWZj6nUeyu27v5tjYWCneAhJGUWT87e/FV8=;
	h=To:Subject:From:Message-Id:Date; b=dl6vtrphf/3L09w01EcHDk3rLTTha8QabVRJjv+0klIkq7sw6UCU+OxKL5Fz9o9f0lGE6pgbpaB6fXiiWTk2RMh2Nd4mf2AioGJv/kEGcuZgYwVypKIVCXbeEg1f9Yu2CfEGzVO14FPlbQbx6c5nJrZFxkh/HpsjR/XJ9FpLiNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOEtpdLH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOEtpdLH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F49C4CED6
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733308553;
	bh=QRYF25YpNWZj6nUeyu27v5tjYWCneAhJGUWT87e/FV8=;
	h=To:Subject:From:Date:From;
	b=HOEtpdLHH7pPOgciNoD36y0Uq60EWmF3HxFI0butSY/+ETNefGTfiC2eBBrstspIu
	 +4iOlcqV/B/8sw/K/q1ZxgtlxijEGI8cYjk7Gmlxv7+LF4TuKQDK1Cjtxnvs/r2qfD
	 pETJwesU5ZLhLOGjvHugDF+w9ovldz6yYv5AE6BHzzyP0lDhJ8sHRneQE5jb86cMfJ
	 bNszvs1MaowMYIeu46I2xwKwfaZ2Y6EkZTPGS5Q+rB30qaFsgOAsELQGRYhV+Ft+0D
	 XeZeGOXyilxSGsK88Mrt3OW9UFb1PDssBgcA8mSfJn2tFOmNdUp5+S2975F64bf78w
	 hCYJlmhRVioTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F72FE7716B
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173330855363.14645.2012727454802599772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b5040a05eb123a9fc91edfb7db788174fe0bdc5e4879b8c8ce9f38df5be0e91
Date: Wed, 04 Dec 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733308553
