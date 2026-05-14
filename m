Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2621F54652
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 03:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778727634; cv=none; b=IqBXW6pBL8zpDOcTtDlykni9QLms1bIlGzRYjCW4WLrcNquivOhesdTbDOTC6DLmIFNpXYu16w3X6YaLN5/qG1MfqmoUA0UtrsCZ5s4ScZlYuUuP02yI13BgVUdOqIhtFrJFDEEQ3W9d5D6DUcUzSt5dCXrA8mUlGxI0tS/pXUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778727634; c=relaxed/simple;
	bh=4tJSDyT8JsH0b9IwyGuFWvkr8Nd5UGWgvoSLQlERgn4=;
	h=To:Subject:From:Message-Id:Date; b=lremkSP6Ce3h+T7UyjG4ISFQIKO0XJFurlcKuvfOEEN1JYkmRJiUwMO3R5yH4lhCLpO1SzoaEoZneHtr+QlyI7q/6zzjwU1r0Jx7bScHDRiqMqkgxlNqeLCx/djbHF8Xqy1lbjqrx2andFQIJIxgFsXNGVqQPIdE3JTuhf1ZIq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqSd6wNQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqSd6wNQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC7CC19425
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778727633;
	bh=4tJSDyT8JsH0b9IwyGuFWvkr8Nd5UGWgvoSLQlERgn4=;
	h=To:Subject:From:Date:From;
	b=nqSd6wNQagnT5YDXEEYEZ+4kskoC3VrFDgmsuhTQoo4hcMM3Hu9QciU184GdPrEaX
	 N43O7OHW+QEXb+DyojdL7Ur+VuI4zYpxTHbvWxQ+ppFaaE+QFs2FHlBqrFtamI+gis
	 DZDnPv10bOS1FdMIRpEi1uw5GKNZB6Ph8XJaDAnXbQLPGLf2oQaBcVdkZccYA+ejcB
	 kMleiwrLhZZyxZGgf/3yq0n+zTaYhkyBioxObNYhHJ0oOx3++rVg0sHNuLXJsSoJiI
	 93VIB3H/dPovvDDRw5iYEQL9FHFZp2c11Rb5yihuKS8jhia7OUpAPESaeDcZVlG0aO
	 c8VuMY/l53IzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE065CD37AC
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177872763369.26166.13861475680374024285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94874285f93c2c92e2efaa0aa4515d3c1344de02f176f3a3f1176567b6a2e72c
Date: Thu, 14 May 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778727633
