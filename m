Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FABC3C38
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748769594; cv=none; b=F10Ma7WTj8jbTXhlLrWgt6YoJrECQxUItx16AlLecSPqUYW8eb+zaWhg5m2rz3DVBLQltVGupbY3mHd1y3PxzO50V/yAVwNFvWIX/EWDUhdIKcryU2Krqa0NQjQisIvRXdOaK398saBkFHh+yHbjxl4VQYa2ugghGEhdfddBSak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748769594; c=relaxed/simple;
	bh=OJXhIpxkaJ9DpXVogk7cza5MwIwY05ShaIEmbmy/uow=;
	h=To:Subject:From:Message-Id:Date; b=H4dzab4awxcwU6ooSRPjzBi5fX74S7xqbIsIUZ3HOiutUK+1Pa3ZHr06FafZdrQ1yDR1TqQ8hkN2AWo0eJvPWA2W4RjVq5cJwPXf49aTz9BqrpA5QX3GGBME4BO9Ru46+mMNSbVjh4lbUPK/SQgeIzv48fSpACCk9+/29Dn1JLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tk+jdawf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tk+jdawf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1BB2C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748769593;
	bh=OJXhIpxkaJ9DpXVogk7cza5MwIwY05ShaIEmbmy/uow=;
	h=To:Subject:From:Date:From;
	b=tk+jdawfGoiOTej7lhHLeG0bD8w9gQJiEx57LyvoDZHqN/5pcIpE19mR4acazs2Rk
	 oRVa56gXPMgJKnu6XobSZRdWMz1QRfxvqFYy7c36HSUWy9ZF6r7vAwoNRlf+ApCusj
	 MLHnt6dh13TCH8fPdRWnG5v3Y+2BcY2v02XBYTGN/Jz55i3vIkuhg//AApDmNbkZ+t
	 Auuo3iu+nBINRYkfSUnAPnDjpciq2Kbe2Z8eblbqxz7ybQ9pM3ft8QPwV7+vpvzizQ
	 yXO15kCcg6XVrKXKLJlntjtyRLC/4qoNzzluo5bjAzxr4jpHMCWOb/hMziuO6R8GD+
	 OlhrF9iF3A1MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E2B6C5B552
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174876959363.629.6102338755965526843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68c1406fc022c8df2494992a0eff398b5e16c9546d1f271cea1c2d1a19ed3888
Date: Sun, 01 Jun 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748769593
