Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5DE2BD597
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770890694; cv=none; b=G60FTIr2V7WkUlHpfQAsfJGulyM8laQcS97q+n+K+QIMMcCBFK6bx1OMOBSiR9PhbYBbgqSlhK74Z5eOW8LZ8/Jc78doZjJb0Uc1DZXWHtzK2K872mknWMM2pDBsrDKKPb9CmWmob35jcwBl7XUsv0lH/LbivTb7XiGXt8186Ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770890694; c=relaxed/simple;
	bh=2X+nIIfswhB6U9ysHGfFMLRRphL1B4wv11gQdMh8kPE=;
	h=To:Subject:From:Message-Id:Date; b=fQiAgrjUFrth3yB5rgacZI2wqm66AXvL3+YPd0L9mOuCEPT4Zua/txNpD3D/gSIW9Ky3cmxpUCp4F/lBDHBxQfsV40S+uIx5IUvX2h6O3Y7K6A/+UY6dwgOHuuweH263V4hZ3yohZL1YFBNgJPesOkZbllHqA1qYT7by7EvKnYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovDyMG9i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovDyMG9i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B87FFC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770890693;
	bh=2X+nIIfswhB6U9ysHGfFMLRRphL1B4wv11gQdMh8kPE=;
	h=To:Subject:From:Date:From;
	b=ovDyMG9idhF2GPd6k0SrpACEWFiuTeV20eq/jFsxg4LlKXG5AxzeUgWjZqAJ0YDLR
	 TrnN1IpB6JFcN2FeoP8W1BZ3qoUDFOHtBV5FID9tTAqIUC3XJ37xyPogbrq0HrPuaZ
	 Yzl2N1wkSiwWTwYlXIVlF1p36wlzHBdCSDq4+IBFdIukVg5ia9U9QyWZcPWi/krTU5
	 LrI6Gz75zeON0ZoNVPCk/Fu55GDhlqczE1H9n6XuMy6JyClKTw8eFU4Nz14+PlnvKD
	 ahh6YN5/Lj2IBTqjPsVP/2Tx1j57UvUCMRqVDeL7C+N8XFXohLGHQcKYHGfEuQKVGr
	 c0/tyq6Jf5npQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0822EB48EB
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177089069364.13690.8659955549621746444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a84fd704e6088396823169c9923bbff41ee1b8dcef6467bc573736909acc52ce
Date: Thu, 12 Feb 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770890693
