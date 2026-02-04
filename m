Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2644F3E95AC
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770203634; cv=none; b=aXsUUaHzNMkXQKnPReNj4eazroP+r+kwLhVPxPxIhIbH6uFg8lYDKeOozopoVCCfGDEovpp5qKBg0FiVXnb1De1+6ysvX4JC92QY5iBCxueXyop4Vp60ynp+4g4hfWoFT+ws2oFCZzJ9vrFsC6fivdVWzZCtqJx4RVQUau7wuJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770203634; c=relaxed/simple;
	bh=yYeRclemS9u6J0XeK7vkLZRWQTcg8AFdWbRYa73qPmo=;
	h=To:Subject:From:Message-Id:Date; b=aaFFmhP5o1F+jCZi1RW0+6nh9e2JCLEEUqKR1PulkGXYzuXQt4uvZezvl3zTyUldGWV4d8gQ72kaZVY+FyuYi+o4nYyW3ptLfuNsx/Brv/y6wkP3Um9ZyXrQlOfEBh2n44b8gLziS2foNy3fOmIFBYCKz83DGjI+xnXju62hKaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uASzHkKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uASzHkKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE495C16AAE
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770203633;
	bh=yYeRclemS9u6J0XeK7vkLZRWQTcg8AFdWbRYa73qPmo=;
	h=To:Subject:From:Date:From;
	b=uASzHkKZw7kMb20XPBVqmm2G+XKEgNrLNYqd5Q2k6nV4T6Qv5JoTUZm6bt4lgu+vr
	 HC7M+fcAA3DriQNlFBcS6nxEBfYVZzEndH8urlnLLOsuCuvlo59t709qSOqMl6AYxI
	 QUJj0WyLMDQ+2Xoo3esX4Mt/EpMkSetW/w/1poYVpHmiQgU+2rjuDW3I0+YqmJjsII
	 aE0wgLkfVTzhvuDUw03VAcixPKxxmUMzmMpdgiUdC65ql60WzfErBBapTDi+Vwt61w
	 +k1KCpXbaGxyGVKL2lsJ0P2Ulr85zQkWz757ujRasdfW0Smp0rL13h5vo1Z5OlAYjJ
	 1S7wh5UeRyEpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B60E95386
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177020363361.19714.18254818634339554479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0101a0d5b78a2fc7016121d6478b2777a9cb1fc2317e38850cf947adbad1447e
Date: Wed, 04 Feb 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770203633
