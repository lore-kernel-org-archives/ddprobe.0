Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F393093CB
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 23:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781306794; cv=none; b=U0rpMSlmWe0K7XoIC/aFQ+dWkdAlhf3uVk7jXkvNil7mtNE1+YzJij2UDC+VXKA4T3R9tmeRGAh6323iLnYqiBYtxnC5OX6DOgoOz28k0M9sj3any9mA5vtchghnRB8RW9K7gSBixTHNWMw+K4nW45gJREy//jYhaLilr+OO754=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781306794; c=relaxed/simple;
	bh=KMdG9IrOQgTMM2d3/hmS6HCTRlx0pryabGL+M0Hpwnw=;
	h=To:Subject:From:Message-Id:Date; b=sDSK3P6wAwGxiEFI7KdovrJQSgZO2dfxMCgk93M8D1ZxMiNBSy+SySToHhsIiX8dQVpp4DiLXFw32iRX55AmB26tvJXdIR0wTxz+JFcft2DZa4OakkkSQnBbSjp0XEuMNuL3WJFH92mIymDx+YBai50ituK5t+/qiw5VvyzyTPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hzcRuuNs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hzcRuuNs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9461C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 23:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781306793;
	bh=KMdG9IrOQgTMM2d3/hmS6HCTRlx0pryabGL+M0Hpwnw=;
	h=To:Subject:From:Date:From;
	b=hzcRuuNs+tae+d3lzx5PdGQAFvtQ90CJru2BLXFGgokbAvO+oNgrBkeqdX/PSOSmP
	 W6bkjE0PRfmvFLKi/bpG5/rhWanNGkXxaWG1A0XvFl/gNORBcHDRz5/mZvKz1JNp7z
	 pg4JhQTrKOFgn8dhZGzKMo7vNN41QCLketQSA7tzICsN2WLdI/jEnMoId4CyxTsMAX
	 ymLr5jh0a1PZT7UUqtmKWVxDc9Rd65UXkQj40hiPCD5xUzp2FdFcZXtsa97JMYuOxN
	 1QRWmYddXVMvurRDWv9P9fPnM68xo2d0IwYLIX0NMNHXWqnu4h8NeNcDyIeLATriJi
	 KVLqrxsEnYK3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD11ECD98CF
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 23:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178130679368.28484.1451741844926041179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52e640bf01918d35948c7fdce4982d8e7f9bd0a89f86b7260fc95864be57e288
Date: Fri, 12 Jun 2026 23:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781306793
