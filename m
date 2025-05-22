Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA1192904
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747872593; cv=none; b=l8Ds8Vp1sILRk3dpeQ4j4zpnzuDeYpRUEnTCHpW02nU1UCq5E2wbUXW8yEkMHHjRC9Lp3XULmXYn/5L34tk9kyaYcUX3Z6KRL0inPXNEACKV8m8ojODlib6H1skiXq5ivwFEDKVUAWFXWfS1vKq/N7Ve1cecvx4ZHfXwQv1VJH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747872593; c=relaxed/simple;
	bh=eJhQpc3Gw+GwduW5VzaCk83yIEp/n4Q9PyIYiF1oyjk=;
	h=To:Subject:From:Message-Id:Date; b=DF6bDq4BSFJoPJhDIvMjbiNCmpnxUAtcva1k1JHYrzixlyLYRYM9mN7Fmm+bSjFDjr8XIcwdnhJPV7YEBQELISaXrt6PGn/tK/BtoXKD7UTBJ53alK6noHD3cI2xU6AG1q0mGKzOffZJ0LHtECCMCfwh/xUaWhpG+9Acbkja7wQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rng2TJwq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rng2TJwq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCFDC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747872593;
	bh=eJhQpc3Gw+GwduW5VzaCk83yIEp/n4Q9PyIYiF1oyjk=;
	h=To:Subject:From:Date:From;
	b=Rng2TJwqHFzpwA72IJcEMpEULMzPfdsl2QqfXTr/Ahf3GrQKESQHcWMSGmzd/nR6o
	 K1tn3hntxoiqtdrLI9jHz3euJ0pKOeyAn5YXvspwP4kPS8o61bEzX6IG8Dqxrimf01
	 WVYj8F4zwx7DC3Tor+AOezZM4D095u9ed+m0NyaZdSvnigsSoN2G96Fe8c3KgEm5Jg
	 ylRy7+JKJLMuS5vygxI4fDF4wgoq9iQVjtwwCabs7V8xqVKnB9QHgQid4i+zq6qj6O
	 kMXSZ6JrTDEEkVZ5AfQC413KRZnhAPXuCNHLLeRjK4W7iaoUp3FvW6nRaiBcXvIQV6
	 N8xe6G2bNv0SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDF3C54E90
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174787259357.10874.6285531262312431043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e72588c330ed60e7d91689d6e293977cb2224dd2bf5b79dab241091bba039d0
Date: Thu, 22 May 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747872593
