Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1894C6C
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747205994; cv=none; b=LlAMiDTWNNZK4uXXquTaxgT9JsmTuywk/Rv8OBHFer2EYozZcGO2sH21uhQpnVY00858u59ImHrXHjLMiUSErsduqwKN+8OGgmJrOqWviFE9Ts7UudQLaQPEc5I3LGl9kpO2nqwjjhIJsJfrHWauvxqfWaygCtFwP7+YFgzsQpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747205994; c=relaxed/simple;
	bh=9k+TEFpMQeoqVjcmJ7HHeix2g5fdJcbu+H+46ekmpSs=;
	h=To:Subject:From:Message-Id:Date; b=kF4AnbP4ASjqItOjrHkxOpkuyAxbmC5wOw6tnd0BxZMYnONL0yk+R5GIlQ4z2IT+Cy/+kwlxdozEPLhaisdr0U2dOPUmj9D79G5Kf/ymMCfqoiYGrt1N4HeIeZxa3XsTv/MscVbTolTMlCNhK3oKJCM4NJy27xdAbCyVEJsCwEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCRx5gP/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCRx5gP/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FF9C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747205993;
	bh=9k+TEFpMQeoqVjcmJ7HHeix2g5fdJcbu+H+46ekmpSs=;
	h=To:Subject:From:Date:From;
	b=cCRx5gP/XdLNOqPhL1G8sxh+xLpBd3xlMqmpzk5d89m84nHrdalrLOv9LGljDxl5M
	 8YLkgYj0O+KKpvpNn41Dt8ms/S2xj8Nvwi+RNaXtUOb/Xpad6jL0TStULY69yTaM0w
	 VTSI5xHb1PtgoQ16I5BWDW0G3keJhzTXVEkT4a8WAqwhuwBPMpCE3I2Gh2SowTlzIy
	 daFzmWSGt3NS39jLtdVv3O2ThXWe5qGdA6bm9bubp3nHXtYhV0NZwng5PA4j4KuVlc
	 vbgdsWxdAAAkLvV/zLQY3+5wIUh8vosYpsJJlnbwwudDfeEjnUN8LOtvz6lBH9yrQ8
	 7rBymjVYrOdkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E485C3ABC5
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174720599357.12103.10493932593928299155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b474e324edd1726fefb7c230adee8422ca77cba866aa00358c0883120350ddb
Date: Wed, 14 May 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747205993
