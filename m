Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43172328244
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 20:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765831974; cv=none; b=UIfcGG8pvs3u0lpa9Kci9Kh+OLKBG7D4inbo+DIZWvv8nq8PeScwzH9qmIuzZ/w2OCvxRIvPzVfs+9qwxwQhJxukFWBjSkIRvv1848//Olr9zg/Bo5bI5z4nGu9mtVtTUZQjwTRbbez3foU7ZW70CPI0uWjOMWJew6wg2pJG+XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765831974; c=relaxed/simple;
	bh=F6VjLavcY3PTkcSQ1f6hhVhQzGM5FHVURSVlQy0cuZw=;
	h=To:Subject:From:Message-Id:Date; b=oRttgLz3/RmfN0Q0RmZ+gf5py8WJWYmyfe5lBdNF2MI6gjWGkG1mo6GNzIsbUyoc3HIjLPzSuHl8wjEwxCi25Hvs/YmQy4fRTn421+uWbep9dO0Jno44DJPJ5uIfKpxKPatB0ec1uSEnlOoA1SZx6TmizfbSEjB14QFZCW3XJgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NFXRVWF7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NFXRVWF7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9607C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 20:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765831973;
	bh=F6VjLavcY3PTkcSQ1f6hhVhQzGM5FHVURSVlQy0cuZw=;
	h=To:Subject:From:Date:From;
	b=NFXRVWF7uEvwjMii81/BkHTwmKe60PQUFUannNO6RF1T1xn4LYj1iKe/YTIRCkHAb
	 Tojx7gwK2G/QoEnRQDd4z7Y8kjcGXVyfmSsMR/ou92oFHE+RP0i6mgdN7FoT3EBEW/
	 tW06ZmXu913k6zvwEEvISt2IR+v22iibYsx4iDqFHBoCSO6EBQpYcoGcbJu9nrGo2H
	 sl0eUy1UrCazRj79ymdBPWnqWq2tUEQTreG+oT9DrinnjD0lxNamL7dvXHJmvCs+kt
	 M+sN+rO5l077TcDWJp62V8dl5IZ9e3CbdrHCQBiKo0XSqdYZbWTOCx77jzu4mIRk0m
	 drAhz4PnPZS+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A18F1D5B868
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 20:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176583197364.22174.1663511823549353465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97fd5a41172b29ac1b555ce5208a52124eb5c0e2b1dabf1bf51660a31b0ba3cf
Date: Mon, 15 Dec 2025 20:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765831973
