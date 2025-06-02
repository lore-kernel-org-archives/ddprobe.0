Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAD6188587
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748840995; cv=none; b=Hp9svuJQO6xU2+iJF8MEwkGiqFGqf/GKuuQ2h5tPScYJhndQkAJ6UUXsHECw8OBB8qQDEpVE8Cte4xu8PCUgMXWIFgyHOSNTzczD7enLRqj2hA6oH5sfQQgxOTpYwhhxvXsrcq9YEeQLTljTkSBVJR9m9tHtlMdfqB/eZqTsMOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748840995; c=relaxed/simple;
	bh=ZP41Y2px5OnangaovIt17+YeHY0yo6qWCTpe3HhtwVU=;
	h=To:Subject:From:Message-Id:Date; b=F1FfaO3eA4cTaL53HsNdS4nnJ1VjmL8OI35fYGDBQpPYTWsir7drIL4HHaROmbPugKtgy6MmzxmEtEgbLAMr3s+AC7P50rho1wp5SP0EkRh7kAD+tFttoOnXY7za1+5n8q3fiP9/wOS6gHQwSrNx3RRcHdDIhbBixFcjacNV3rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BoIbJLZj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BoIbJLZj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB5EC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748840993;
	bh=ZP41Y2px5OnangaovIt17+YeHY0yo6qWCTpe3HhtwVU=;
	h=To:Subject:From:Date:From;
	b=BoIbJLZjjn6s2alrFrKUF530COcMfR+RZ1a4/l/jYD+p0v1Ik2kiDkTw1JTZwKHE6
	 gXF1rTNWA3R42Jg6wSXksvL5WO9J1JWPmusBhCNDbe8asO+eiDC7SdEyqmfiJabCyE
	 cliEC3nbyAu8iZhvi4IPRU/sE8fzv4xTW7mahMIv3GNKErVzFOdyiJDlWxbr1aLcZm
	 FuxuCctDaioIXlHzrzSRo3uEFWbaSgMhhkA1N27h7hrMval/kNhoNgDJ3iKos3DevP
	 5JKc84sOs0d3Q8dHXe/ByNYAjGfn4gCcH/7bSkxaosJIOZbdrkL8b+J4QL07mNqdjU
	 M+SRw+QF4z74w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9064CC54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174884099358.7601.9676240513001301701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce25eb5c0dcd9ce4afc310ddc4db8eaec573413b90c5231cac040fd60e72aff1
Date: Mon, 02 Jun 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748840993
