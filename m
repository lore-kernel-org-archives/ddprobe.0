Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470B221D596
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 02:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779504154; cv=none; b=JdoS6zjEo4puvUYLXtKmq2waSNK+8Dd95pE7XG5D/klkbgr2mvnq8JzrL/3vBovRy8tkrcal/hI+m5Teu9sESTJmFkVZRA3FFiU05OYeX7fiBv+53hcP2o83JK9S5uZQaz3few93S8RKnzOmwivxfwwEb0uKpU7KVRcZ2txmZ0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779504154; c=relaxed/simple;
	bh=UKdxBUF5Y+JqEQxqja+Wqgh7SaVFpiN1Rh/gMbArIZU=;
	h=To:Subject:From:Message-Id:Date; b=ZtAwYrMG9XQTGlhedKTkIf+M8IpARMQKhQVSpQe9RnUPrjYhETU/PSrFGFHojYD3CxZ5jG32oAsqsGW5n0X6XszrWlNfxWn95DjumrnTZZN9POxMkY0bYhKLY9wCGQUFw2Avj0ft+d4GsL5KiUntbYstaP7TBO1mVj6FFWJ0kxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cO8Eogr9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cO8Eogr9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7D3C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 02:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779504153;
	bh=UKdxBUF5Y+JqEQxqja+Wqgh7SaVFpiN1Rh/gMbArIZU=;
	h=To:Subject:From:Date:From;
	b=cO8Eogr9bdsjh0elkUpyVtkAnVDVmoWNgJDUT6NFzZifjuxeskqfg0TB+0NJIu8lD
	 c+iZLaPW86r5fhyHTrVW45q7KYBC446NE5gYzIWhXgksQ6OS35sVyvqsZGiMHZ+sw4
	 6em8sxf0wZI/OnXBYuLe4oZG/RO+ZQ7rwfHGyKtJy7v0dYtUK87FPtBguKrEIiXygS
	 GUI/qbOpiShoay60PRQ8mnna1NoQ4/n/OdaHWivmiS6MoEwlFnfEZqeQkRvRJ2qW2O
	 b9e01wuH02Z5/oKfPnfKNCkuugtATEL+8/CirQKSt1FMNMMj4nZkLsUDuh4wIbMwh3
	 8Fl6I85xa2u5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5B6CD5BB4
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 02:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177950415368.16790.14305716362710549017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b12eb8a9b20b99d1f44fce057bfb646ca30c8e5fd2c9f52206cdbd530fb339d
Date: Sat, 23 May 2026 02:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779504153
