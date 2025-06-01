Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD02DF58
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748813395; cv=none; b=iXww+T2Vxz59Ax7rR5Poc+9se69PhnkkSfVd0stMDGLlY+E5PqurLuDCvdAK8B0hruf+ioR4IjO/JlbHe/bbbz498t7TNKaep6AX+KyIu4zvqm1JD0ItkxeCE3DcCSKtNTGrXXY+sFXUNe3lLlYyIxpmsH/2kxgJiyVilQkBMzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748813395; c=relaxed/simple;
	bh=g6ScoauRk54J+JvULR1am+UOiBoVDn8xmpDe2vAxGOA=;
	h=To:Subject:From:Message-Id:Date; b=uAQRQtbZINS7zEfc9AEAJl+Qjc/NYkxybT+HYMbIierfXUtvtX+H4IJW+O0BuDJ7qti4GOzmk/O3+180sQwZa/QqdyJMauO2Mv8F3IBPVGw2VpBOqpQgJfhgUEvbl3FXjKKX1TvDt0Vtuhj/l7hZYH5kdeHQI6yafhIDg5Ld5mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jpc+Wrli; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jpc+Wrli"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B15CAC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748813393;
	bh=g6ScoauRk54J+JvULR1am+UOiBoVDn8xmpDe2vAxGOA=;
	h=To:Subject:From:Date:From;
	b=jpc+WrlixwXTGyGUWcRa1Fa6mwhxHsjcBEad3Hm5An5D/My7hqav1ohi+ZQSRUqso
	 9ryg23jrRxKRx5Wnmso04gexhRObBGVJfuphJ4fn42cLstE9A6ecXmZ3gYn8p6GaIs
	 QGMFT1pZk/5hL5TVAB/i80+mDh5OQztxTTkC9DKidiD8Y2o9c4n6FMEwnlP4YFTfVB
	 vc6p2Jw0bkDSKe6xD4RjyJwDaiplobqehWIYRddsoanEzqujyNsrNhp8ZNBssAG+7H
	 W3Ht2GjAOpvvj8JdPBLLl6OepnVZKzANBfDiPSDPod5kuBkc8t/BUYNd+LEjSDcwwS
	 HFmt0HpI2UeSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3B4C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174881339359.30138.8475069001926354015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4628906d8814e649fdc9c16a064b72f6c88f68492f98b257b634a9f39006f5d8
Date: Sun, 01 Jun 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748813393
