Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F14476026
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766196834; cv=none; b=hPT1PGolp488f4gpSxoUpg3yOkrXxS06WMVReXtapWNb3rlZFPs33qZvdmq6IC2gNgInGix26XTWCBgTCdbIJDVhCKxCGxnVzNvzS5LONPzb7YT1zruZlxyhx0SBymXySBGIujc3CfG9OkwERuMZlK2GxKZB0Lsp7Aiz2PH6kLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766196834; c=relaxed/simple;
	bh=6Ivwv7hGv6SuU9LGxJDopzBRhbl4Q6MmN5ObiK2R/Ys=;
	h=To:Subject:From:Message-Id:Date; b=pdin/gA2V0npuvqObarLh76LIfuooyxfHip0T8QJSleqict74sMsRMjN4u0YCmIwcSNOA/WGFWYXkWXgEulNltDACkvL2DDsLubVDuJWBbbNOssGUnx/KmJrcMlzEnF1oLiyhgkPyhKEwEs8xwyAyKNSD7Cq8hB9K8U0zLiJNKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q0K5rh+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q0K5rh+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A246EC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766196833;
	bh=6Ivwv7hGv6SuU9LGxJDopzBRhbl4Q6MmN5ObiK2R/Ys=;
	h=To:Subject:From:Date:From;
	b=Q0K5rh+U1Uau6bBGg/i/WPtkt1F6ZcACbxUjNoRry4DxC7gXMoRrn3GYn9WgUNhum
	 gf252o51NGXCGS2jUr9TFR//02dG9Q/Drn9zYdN1ombuaSTQV/KJNJS+m1Y1AHTxSZ
	 brgMjdYut+6bLGyv0JozZ7lM7jsnwDaP3w++nFVJYwH5Gt8pyATqE3S+pahSHC2u5n
	 oUvS8h5DgUX+7ua62w6OSSTNJVd6/xt/CIC/yzw6XMVVeFgt4Wk9kUDMLrBe9IkryO
	 leN8nPlzEA5OHb7IrS2sDxounPrZDyHno4mD8wXP9YKUiZ2jr6CujeyWncLWerJyf3
	 DstbvA4I52bYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953E9E668A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176619683358.920.10335424221826259922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fffe3afce7e00c2866815a0c8440083c014d9173b9894e2a03ce4541b478977
Date: Sat, 20 Dec 2025 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766196833
