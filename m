Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6626E1BC58
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 12:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717935443; cv=none; b=IZ5vHHqAcwIElGHl9zBW5v+56mr+PI0U2YZatPDPb+L45tF5bDfteGQ0PwXDmDItgML+/orYn9nSUjWmuqdNFMYHouNSw1U8kMvXQSTbnqCuPbHET959N448pILRf2UxxT9CfIlsS+b1M64eb6oIpdD4T96n+WCkfA7D5sP8YH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717935443; c=relaxed/simple;
	bh=EbZchD09XF/CvbHmWu3U3+KNUZXOAW5ydgm4XHu+6HM=;
	h=To:Subject:From:Message-Id:Date; b=KHd0gwKvWL4EL88rLVePxlmrpcXS1IKfq1TOwO2jlZSMa2eCttF6S5acj0YDOshB3nxHbmBfSNQGWl4tLMzMe+Cz5v2qZmacPxaf+wQrmtUYYv3OrCNJw3+SwryYsrQT4XQ+J6ty54pY1bz3vrRZwPTqTsVKBCVlYGk/D0A45M8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mrm0J216; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mrm0J216"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E760EC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 12:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717935442;
	bh=EbZchD09XF/CvbHmWu3U3+KNUZXOAW5ydgm4XHu+6HM=;
	h=To:Subject:From:Date:From;
	b=mrm0J2160lYEWhSc831R9oewiDPZgoy4qvYy9KCxsyISyXIFPQHx4vWcKhmT71ttI
	 isBDfdlJeK65cMUlviHQatk5beIVonMRxvwCiEtpTtjOMBdZTESU1jrKgVOHTvek7Q
	 WOHNJg10AqQKdM6z48EZfi7sAwkpSlVkQALgDB1kXpU+/JR1DwAd/KxxPMiTctsIKN
	 sDQyaDllt0JujJly4k+GUHMoPRvnoPfFDE1GdG/tF/3l7vXb5VVutey5GH6Uh398Uo
	 ujZcsuzYHGyfWykh9h72ls+WHZNoLQG8Wqn3ddNd4anEQjRixi7yvbCnRqT+9zXnQM
	 oM2D3HQFcR7+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFA0AC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 12:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171793544281.32410.14213752855366146656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df744885bcfc0ccc9836395d549f650fd85b07ff22cdf5fd261151e0dcd67a5c
Date: Sun, 09 Jun 2024 12:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717935442
