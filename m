Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2BBF72627
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770013434; cv=none; b=P6gCGr+9R8mLVvZFsBsgpN9WrMgSzQNfQpORXkdH/2NQtvTETYrBIlTXAkmPISYb4R6oadEwO1fL23XVFdCZWFdr0FmWYfvu2bGjfk07UGTtJ92gtmVQ+Dqn3JWDupEugzaXtexNdzxVlXVw5vwAvtkm0CEdgTnSOWlPa69Qxrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770013434; c=relaxed/simple;
	bh=ETRMeIkuqmcLSnb4PL0f2XgpJ0iqy4CZkHgb6CJEzk4=;
	h=To:Subject:From:Message-Id:Date; b=S6W7JijgSYo0TOX3Vgofk4o6KusABCsTrSXbCTs+vWcVvqPXHyVk1QBF+uaoGYzH/Wl/G5b2B8dfXCWJS9SU6BF7GO8cKD58purD+02oqEyO1G3KCj3X5J9b2EeDmnZIbV9AWMFFCt2aYXg0o8gb9cxAXrwmwFyBM2uzsRssRXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=deF4FTzK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="deF4FTzK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DFBC19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770013433;
	bh=ETRMeIkuqmcLSnb4PL0f2XgpJ0iqy4CZkHgb6CJEzk4=;
	h=To:Subject:From:Date:From;
	b=deF4FTzKVCPzIe7DkxjYnVrRprq87REnOxCwlxIrZ278qJKzWMzvl/hbGrMSl9B5i
	 f2+ELfv/CVIqHrUOJi/Hq0KR7C7UGsAKOQw4zVJNnc6rvpOzy7kU5oVH3vnQ/O5sfz
	 Gky8SkCk3HdDYhk1P9KGcyfhERn782WInOdniNyKwtnE7oD1pUawGQHiWNVrj3GfCv
	 OPjr7iDFaFrUDUFU0RodtJSBD2iGT8uKEcE/SSS7qAAdyFn29Q++P9fjriZcOLMB+n
	 /ER6h1mk51qOtq934/szBynuST3b+fgplV9laSzqaeD+TjpMcPM9V9/Qm9UY5WFiYZ
	 Vb3Q2dXu1LC7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998BFD172CE
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177001343360.17610.5578407344071384753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37449cd1efab9ca218f73d2e9d899fdaf01acf585bb745269932502196e1d3eb
Date: Mon, 02 Feb 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770013433
