Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2734B26AC3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747261194; cv=none; b=f/niAD0beNOGhKhgElOuCgO2pqNLa81w+qKPMZ5pDJ4XuNGSXHCpbPSpLlGnyo2lT/2wkxe62NfQeGuu5uzF4w1cAixiNGu1SCaL83NCK60t/5F74Q8h/b3vsPjWmIyLHLldF2XnrCbIV1tpabt8AQ2FX/ag5A7CKK+0UPQeO10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747261194; c=relaxed/simple;
	bh=jemJKQhcLjg+BQyQFSHDVVC8kuER5QkyaKZI6XVqNqo=;
	h=To:Subject:From:Message-Id:Date; b=tN0MUHPnkrHqWYgpGtZGSm4An8lyUMFw2ThspznX5tjcEDIsDNSjqYxDYiQFMZoTXTBHck8Tidvc6wVbbRd6K3/I9hAAfPit9vyV5k22DZLlTS5iUy37lB6DYTNg+YpddZB9HOGPGKOJVaMjGBnGvgZ4oaL0mG6hB+i95B9vhOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jGZcYfGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jGZcYfGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1595C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747261193;
	bh=jemJKQhcLjg+BQyQFSHDVVC8kuER5QkyaKZI6XVqNqo=;
	h=To:Subject:From:Date:From;
	b=jGZcYfGrFrS3RPN4hOql6v1qr6ftB3wBl97tYkOL1Z9C9NSTaxfdOi781KCPoPngY
	 EV6X4WYwrILAP4kr8e1LVGLNLLYkTMq6l34/Y1d3X7hNvoXW5sd+f+xtbkkFkP8FOC
	 UiBv0zKZBQI542EFWob2SnnJXAdTtI9IFUwRESvMFfU9NC5tAAqEc8oNdUWAKYyabU
	 N8klvjhmAUbgLguhh0/qhfqErfmPb71kwqdUTnb0fLpUM6Gk4v9E+VyugATFOMi61e
	 nB989M1nEkJS7nLik6Tc8ilD/LocCD2gdvOm2rGRT+E5XvxPdq2V2XM6L/JrmTioHu
	 vu9bC/FysV1Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E971C3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174726119357.16023.10531782406357041566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a61c1a98a0ee1f098f43e04abfc1fc2b5a7dcde1d0ebd7cf9d3c52d290d335b
Date: Wed, 14 May 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747261193
