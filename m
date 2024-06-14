Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60DCB194A77
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 12:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718367503; cv=none; b=GEXiB5OywQxylbxUE0BbDHuPWmt2roxyKcdXOOiiah8RcmBzIUXg/7ECPVqropD9FCDovRxlpaHi9RB39sdUplIoFSQtMF1mqchjST49QLJZ0nIkcV6Jnv4jpsBUAo0yCr8FFEEs3R83V5WbkEKpUpHSg7lw/2rlPe7h7MKL/oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718367503; c=relaxed/simple;
	bh=FeiibxSNwejwYbfTuhx6S4CBFfNxW0Qlub9QqTH3kP0=;
	h=To:Subject:From:Message-Id:Date; b=WTvIpHYmcw10PEgxj+u35ZxNpMowG4rc6j+Ku8/G342NeSnxpna3OKBfYCS9Kvv9mEe1uUBbTVWsho61+U9qnSlVmeA4DaP1uwMjgmrExC4J6uufNctvJOiWNzunK7jLXcPbd3ixMTwT0ThQMzlLiNCHsHnPGdMZRsYgKSjMCoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKT595zx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKT595zx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2ED9C3277B
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 12:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718367502;
	bh=FeiibxSNwejwYbfTuhx6S4CBFfNxW0Qlub9QqTH3kP0=;
	h=To:Subject:From:Date:From;
	b=cKT595zxa/ZjIq/n4v2pDspmqik3iHef5vFCFi1mUDhSKI9eBOEh4dVvLh42LZiyT
	 o/mK3jo43r2b3ZHJItLj+e2hGzAtz6ZEsrLMWdfZkjTxJZlibi7otYYO9H+Ri7IEBH
	 gFWbDtYpjHPeLKyZbrZW0k+Dz127+zMgr0L2YthEJzQ54bx4CZUsTO+73XwhAkgLMP
	 pF6rGG7DZL4JSbD23d6BOqvR0Xp9g0UHQK8MA5+mepBow6cOh8QKc53hJaLSrJDoyp
	 Q4W1hUZTWQpWsBjdPlM0osjHhvcKHdDw006ZuyRYX3cnz5luHTR+auJrBTrPffNZrj
	 z8hLcs3Jgq0JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB645C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 12:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171836750276.511.14977228022542978238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1adb07aa2196f635030ece753b1124952053f95b474466df88cd4714396a9b5f
Date: Fri, 14 Jun 2024 12:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718367502
