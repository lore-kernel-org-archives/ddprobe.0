Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DAA42236E3
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 06:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779000634; cv=none; b=B+NLukKGgTgr9OHmIOoeNqPkHwlWTapMjSUalkL644a9tAP2QQCbAKa+uR76+iJD14nYqGIuwr7gNBeob8bF2uj8tPIfIT87KVZ8ThnNDjpDhcHaAWMY+u2oHo8SInbRjkD9oreGueiEhZW6eMQh8D39MbqwbQ+fr0UHQTbNCDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779000634; c=relaxed/simple;
	bh=Se/g7ZbLxGzaRMxmKQ88Z4tC5z4vsiBHPMZB+sqTaKs=;
	h=To:Subject:From:Message-Id:Date; b=H+RL5uoFCWtjpqH+6NFBH+avG0QQkvnKqGHKpUH8ipfkXiAD3qGDdkkP6FClrug+ktNAX05FqnKG7OzBP7AIRbvM1Ush7KOVySdo1cICVWRitv2d6AcqapNfiQnZTaQJ9mPcdLvpHZqnsrEcU33wIDHERv+fl7Jfgn9jz3SOA0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XdE5Yn/y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XdE5Yn/y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC7E9C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779000633;
	bh=Se/g7ZbLxGzaRMxmKQ88Z4tC5z4vsiBHPMZB+sqTaKs=;
	h=To:Subject:From:Date:From;
	b=XdE5Yn/yHVyHMl4g+MS5BaSvunfeRzNCutfwBlfXnEZaumiaF9VheDHKvewghQtrZ
	 yaZXBPFzIs5ElG/eepb0YFU4yrg7PTXFQYAQs1+uZxWcAxpQ+5IL8611KQ+Tf7dC+z
	 T9UbPx/+65yiKuJga5ebWHBni7sNq2cRjImQ2cukS7AHijffPiL5UphkLNFjUivz+w
	 WhHf7pinyFiFxXA+I7vy/qVnwK4BCOtn4B94QJyVRG4goapkDI+lwxXWbaCiOwB4PN
	 ZqEsgJ+k0NOVcBjwAWPNlz2b6wZ9jzgGMjxAQmsmao+ZJ5agQgczHYjmzprZWQ5JaX
	 EwXE1LzhcwkpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA90FCD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177900063369.19578.3602886868882837970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d85532a151aef8426869e44bf414bbf79e446db9bf5303a9386249a128da0ceb
Date: Sun, 17 May 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779000633
