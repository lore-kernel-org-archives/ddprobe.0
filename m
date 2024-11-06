Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292F119049B
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730872554; cv=none; b=u1yqidePiKaNweAR8t1+/fnYegXanpScKjO330ldI+Ye6pNyTQ4IZ5e/Eb/ECii45OhMCkT6ziCZPRBXVkuNi4E1erPbBeMKvH20ofIKUOh6fMCuLbXuucaI16Y6kj4C17bhYAffYuKE2fa2lkE2H54Xsi6pT9Uj8tSkNL5FlN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730872554; c=relaxed/simple;
	bh=dcG9hUm5ZT7glTLrbBGfALM0xas16gAVzaSulq1xwSE=;
	h=To:Subject:From:Message-Id:Date; b=LxWXO34BjWd1T6MAbaHgTPBpObfCOeElsrtY9VrlGRDEX5fMz0mEtfrZY1lxhVY/9soRKe2f5w3vO8flgx+vgtfLglZy5c9L5+wEaWF85j8Lyb9ShIz7pzjbovTTw8zqyejClvwr6MmzK5/c8xGosxpIgqGig1Qf/8Mzt7SuUR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1lnaY7E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1lnaY7E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB9BC4CECD
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730872553;
	bh=dcG9hUm5ZT7glTLrbBGfALM0xas16gAVzaSulq1xwSE=;
	h=To:Subject:From:Date:From;
	b=X1lnaY7E1FWmQh0bSaaEpktjIeUeu0s/mEeawMY1Dra2wjd4YYXmL3BPmy4YE5wyK
	 jahmoLV3qFS/i+RwQOU7SHQnxD7CZ789d9rnKlgq0ULGtJoYfNJKkwkcK3nLYQlBr5
	 9bEj/OTdW9H8vZZrxxE6AqR+5nR5NNy/9zm7B+RwB0qiamOvMUSb9cWfWwSDUqlInl
	 Hw568j9W/Co6AFQUIV6DnsGe60Tab4NpkF2QNEbjoN4xbccYJIU2rXzrMSWE3Eklzz
	 2N+lWTZoIZHcWh415NJ6CMywGDuszj2/1uT3AK2UD2Cr3luYovLEru/FXRhtVbkq+z
	 wcd0uD1QLH1lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97259D40CF7
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173087255360.20601.4908733334442016363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad8451c5a67ccb9a43e22d5d96fda2d27aa9312c176c3dfd868fead5651ce3c9
Date: Wed, 06 Nov 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730872553
