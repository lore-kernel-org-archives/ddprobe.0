Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E2D2E8B8A
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 10:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763634714; cv=none; b=rThg9B+rjkvN77EeY2xvZjPtDQOMa42cgPzJeaLr+x0bCIQbwUUF2ps85SKVY+muO9CE7XbJ7mir85jV1IbVDEzN21h3cZ5EljYsMq0ZVAtSF8f8FYYNlVvUCVjMDQe5ymcAy4PlKNY0XM/afYb1Oddlu438jTBEE8E0zvynoxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763634714; c=relaxed/simple;
	bh=EK+a2n7XruI5IMj4IfzfDvnSdF7/gWrB8x+BDESicJU=;
	h=To:Subject:From:Message-Id:Date; b=bsdiSDv154c2Kw0XbYGuzROLf27nOgDhWjIoWcEH/SI/Wa51aFIVCrehFiFFwOoyL1z7S8Fwommx7AyZFioX/nLAMCIW8aOdPwiAkkFVItBnN3Hcktff0lSV0hAKqE7QwOI8r8m5CkDH/3+OEPOafb1nS5OxwDswm/4RAOiLUTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=beAMi1zQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="beAMi1zQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4ABFC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 10:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763634713;
	bh=EK+a2n7XruI5IMj4IfzfDvnSdF7/gWrB8x+BDESicJU=;
	h=To:Subject:From:Date:From;
	b=beAMi1zQgOVK+/1E96ekGB2v9fwKko1UAHCe4trqx4lOFy9IzehaDa4HknzYgyxkQ
	 EMxr6Va4xL8dasl+oxJIOV3GynUnoGzNGWbXSMW34Zwc2h+tTBesQz1UxJHAz1JKvN
	 n76QvQVh3qw5fpOwCDgw8kLu5dValFK0WH59gYBKdIT6Mu2HOrmeo1vavFf4Pc8DqL
	 hL+dXArHDPXnHrRpcYzd6a6GUIHr7cFaBjK39zxB5MeoiIx98lWGAlMMTKKnkKo9UI
	 rxJzeTWDrW6TjdsnJBbL/xM2wQAmyjRkGDwDIKizHyllXzZhSeYzBVPByfIZIT0gyc
	 LYYHDqx+lzVkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E71CF857D
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 10:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176363471359.9587.3274242210281099805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 084cc5959d8245128c7049515dbb6b6f31037623dadcdf884561ebd9c63f54a2
Date: Thu, 20 Nov 2025 10:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763634713
