Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1401C5D44
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 09:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777715254; cv=none; b=KZFVIOZIz1SSbzoumEjsDo824Y4DqzUCt3z8jdnx1kLOYHr6auaB+jprinJ/4wwAbNMn/dbJjUD9kQICNDMkjG//zkg5GlNkgm+r/ioD/Mlrch8dnxs8zl6M7ZczsYhEHjESQtCm6kiYZ+D8ojxTJ9lP++wty9gkrAZINqqWxy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777715254; c=relaxed/simple;
	bh=7MLR1HK4NqvK3vVgF47h/KjeiX+smCFmEoBmGXZGje8=;
	h=To:Subject:From:Message-Id:Date; b=Wk1EdINc9mb+4uKM3JIwgbeU7jtPIqAeL6FI+II69zbcuREXG49dbj8u6s5mNcd8SH0pSkGhDh4jANdtynJ4D5MeCNqp2cZm/eAk2PxCRlFSA3qS+UMZ94vLYUZwsdndS8UFV3FyBxiX9D2s/8dZHkdNQJNPbne5a8kOS4KR/0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X8iKUczi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8iKUczi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3539C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777715253;
	bh=7MLR1HK4NqvK3vVgF47h/KjeiX+smCFmEoBmGXZGje8=;
	h=To:Subject:From:Date:From;
	b=X8iKUcziHrzBGKMqJmSLUUqOQcy0uWPK49GlrmRsbJ5GvBT6O0xqzWpXbW+KbXm1z
	 sZOphN8NGvUGZgRSELSDLkRlkZakPDX/8VtsoXTIq1LkWIWIN1gYr0kra12ZbAy6qU
	 eEw85KRtYK8EsgKToawjj4AvXLisx/3ng0iYOe8Cv0PJF/GIpyc3hQsidV3xv9frj2
	 MvlFYSPvqTaYtUEVp64i7VaQ0TnvWT2CnzR98jgk+ZI1Y7C/fKqj3wKHmE53ifDzPb
	 DGlC+2ScetKBkr6re49I2Vq4Q+kAljbExjv6Zenb4q3J1ZrZvpARTqyQPOHXyimP6T
	 YiBWmQRtl0YXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FE9CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177771525368.23763.10392831333737834207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d3741623af1621e923f64c0432c38818d14d42f197b0cf9ae7c5893cfe346d2
Date: Sat, 02 May 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777715253
