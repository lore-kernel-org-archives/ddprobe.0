Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2E51C5496
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751843994; cv=none; b=cezRARsnwfoWpl9WOJCM9RHcmPG96TZ6XYPWjyBqNzIIF1OQZDGwqArcPeGHtWkifRzWZxjKCk2O0DGI/0LVGYvMzaEy9d6FdPA3S71nvhZhtsE1sj5iMWi5lGjDvuOfGwLLKLF/SiRFn0J8EiudKPpOwu1IHP+gf18E8k7OUgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751843994; c=relaxed/simple;
	bh=cXKcGvhqnXhj5LzytIINf2Ez9SVTf/wtFSBHAvbdDwc=;
	h=To:Subject:From:Message-Id:Date; b=lxrySeghRqmo7M1tdTH87K7CGH1XVadEj577xpWrKqxO+ktqw5xN/4hrGGyP5ESmB5DrbPcqk2bX/zQAKoXhG9uDK9ja+3NO9TDZU57N07ttpeAlmapXCp4xiX+XDdbE06LVsix6OW45e7V3FHIWClC3+pPj0IV1B15be3RXY8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UWHMAJPY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWHMAJPY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A304BC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751843993;
	bh=cXKcGvhqnXhj5LzytIINf2Ez9SVTf/wtFSBHAvbdDwc=;
	h=To:Subject:From:Date:From;
	b=UWHMAJPYcTbRwCgyA5EPx7ZDG4CCnigz0bskogwk8pLkjdHDx5BjobCIex0wYyE/5
	 Pb9RgiETe1g8joLlE/jHrhKtJF/SU9hSW3eUj0Ez0zHnmD0ZsF1XAP2M4ELKshloZY
	 I8pE7jMVsLMuYxK2A3fyZL5h5IYhazDK2YPzeJoDqrH3cPbRUfrCTKZSxSky/wIDpp
	 vk6BA4rJ3oE63n9aP8NT7Eb+ygPJqQxGYUi6oYSZ4Q9D9engtkpDVaVwdQ+S3OE3WQ
	 P6MTdJiqa5YUHkB4MdqKRXYK/sqlgWIOpZgJdkB5Qct3rGwIm5wPu7WRXDl8TOlEq8
	 Yo4mc25XL5EVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910BDC83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175184399358.1714.17023683482624692478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4742f5bfb7027bfe5538c66da154678f44215a9359b90b88085aa0d43a951843
Date: Sun, 06 Jul 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751843993
