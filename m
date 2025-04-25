Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF29510957
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745560193; cv=none; b=lb1Ye/W8O0sLtJYrjEvjYWT8Kbe1zFQ8SdcBZ5Uk8RwH6s7KL7KpSaoq8zk7gjQ2zmtHQNWtLjMIkS+zo/KYnLcg10NjUow91e8mfvtqDprqmkrfKD1cIir1YvimC8EP9ofViJD0jwCCVehIh30q1aqjEzVEvx/nga1goVcf8cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745560193; c=relaxed/simple;
	bh=HgSsCdLs4ROJH977xVD6BOt5hNHDXUojwyP8kJRFf4k=;
	h=To:Subject:From:Message-Id:Date; b=BIqMFGrtgn35W90Yg+H4SsmGWl+TOJE5MPJPsvJQIZ85y3lsictE6EqZQgu1W4TEruiVl3/x1IR9oJpecWWc2+igLCixc3lrgIkjSMMirL1rH4rc1NGmQ24rnJ7otZJxurTC3F0sZ9NaaDbJ+zli1Dy/dXKfjCdtlYARc0/PMI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kyVtFuY1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kyVtFuY1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F008C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745560193;
	bh=HgSsCdLs4ROJH977xVD6BOt5hNHDXUojwyP8kJRFf4k=;
	h=To:Subject:From:Date:From;
	b=kyVtFuY1FPGaWmUnh60cyUfWj1O5qgDUK0ldoxM1Ahy6Dh8z1cuih4YnQmXZhluxc
	 mPAmk/Qm30cOpcCO+jC2BjcyIyJckxM4ocVSa9kyCWKLDrI/hEYSuAAGQIA9smlftU
	 KkXhOksyg52IwBaCYINBCLom8pLJEs9C8W+WIg2bFXbxUWorPInRCMon/BzQFzk2bg
	 Dy0uQbO15/SC/h/ngci4GVc85ZJdWeonhm8Wyj4wvEKctSxt3IhWyBzBQPS9vvXpD9
	 /HWbuFo/I5f7O3N8LyLipVw6coFX2pKpG74mcS/gaNnyZhmOuXCChZmbSrOuCQ0Mz7
	 /3+8lcO4bQtqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9192DC369D1
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174556019357.13771.16538189582716224165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d67c9017c1b1513dd69792bd4060df3c7de257f16383880b4b23c668c3939dd4
Date: Fri, 25 Apr 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745560193
