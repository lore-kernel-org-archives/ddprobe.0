Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA54514B086
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 14:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715265743; cv=none; b=hU0SUNJg5yjL5+UO3hLgZeXoZ92hYpWJd8wizuo/5R8NnlpcNf+Mu8cu2PeJc6uqG2CBnpch9TWaMkW3zpxST7rmqbcyVxcXOTQ/P0nwQau8OPF/zlZm3nk6OiCH9HkmBrK+y8jlebcmk8Or4vUk6WjVIZ4CuVYbMgnsyq/GAsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715265743; c=relaxed/simple;
	bh=/R07yUottd+MWVMNG8GpVDihWLBYuQQd3dZJFc/XI14=;
	h=To:Subject:From:Message-Id:Date; b=kKTPQQNoPLGxNWLi1RTIWmARVeVlprKHLvF/VqFTkOPZ3ZgoDzDNW54wrKzOsdBtJXnLkvd4jJIPuLFU1iTNgUN5MX7d/xVkH/5w++34y6zrrwhOYS9O/76BUUAvZ5ztYPQ+6AzjLP1dYSmMyLuNhjrn+CXG+aE4p3pGyBmTqag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dZcznSYF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dZcznSYF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC95CC116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 14:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715265742;
	bh=/R07yUottd+MWVMNG8GpVDihWLBYuQQd3dZJFc/XI14=;
	h=To:Subject:From:Date:From;
	b=dZcznSYF/4Q9ExTQEDJ1M1r2Rbc5JUWKaYUWtvQWyBwZuO9WCtCxlthkp8bCbUbcN
	 bzYynoEqZtASaEzXN5zyqFvGz1HYqqphHdo56fpjlibsOlJeVsTHDHT3bMIcsgWnmA
	 ygxgBZ8k2eJK8jhZxgj/qzcGVFJUbzkI3jr2ZWNHB1NZsQXgCnZoOaVx/YLKUf4hG+
	 QoMhp4IrC+21bq/RHhu7xZEHekmX9+EpRztY84DiZMs+oluNDbgJTkdddBPuLMvHmP
	 ArTItaYMHXnudIf7VGy1zonYysNVYb6ZfYEYlVJPLt/qAQ8Un97m72mB5adlz5H8uq
	 N7Nz0Lm6PXReg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB1E8C10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 14:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171526574282.25881.14227603902371623705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d22d2c39176bd0338dcc7308f85690ae47c4b4bf16860c4211422a97245495c
Date: Thu, 09 May 2024 14:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715265742
