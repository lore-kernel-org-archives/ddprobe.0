Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353353B29D
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 07:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719560063; cv=none; b=jM50ctjWU4vuV6DlGAalw1dJp9SHEaWpc6ABq10HDNqeKEUQ2zRkRqeOTlPZxR67jOOjzjztllb8tV7PzoWdIpvEyQmqNOP7pRVmR8JmAXHt58ErIjHfcte4eQtcCA5d6Pf6NmSGfyPbv4/dKlIbrf0Gvb6k3Qf66xmZuk249EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719560063; c=relaxed/simple;
	bh=c3eIqQokn5a4Zfsv6LGZcEb6G42bzTiuQj/GuH98/bI=;
	h=To:Subject:From:Message-Id:Date; b=aKziTfM1ZeWQKIwSikng2AhY5WilbPTt5UaDGpWm9GR69MrbYVV43WDRRa0o68kkp/wQRzjiLV37S4aMdJIwo2eBrFRBP3Ygan1Qbc1G76pWfnReJhgLcJcVC2JfqIb1MA5Jz7mHXHE6I73l1KlDZb4jmGuCjk/Ckl+jIOnJD74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QqbGn7NT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QqbGn7NT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0723C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 07:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719560062;
	bh=c3eIqQokn5a4Zfsv6LGZcEb6G42bzTiuQj/GuH98/bI=;
	h=To:Subject:From:Date:From;
	b=QqbGn7NT6BJ0I6lVK9b4AUbi61SlMS5Tfy108aTIMIO078t6ASe8RTNzbLtR/lboa
	 cnP0MbWGKv9UrDi+ag1IZ/Yz7CrpDeoRp/asksY2jpwO+GcZ2m9IWDXm5pwUcbr0if
	 eP756boHG/8G0xMPgjK1eYYkTCBO94XgG93mCcbR+2l4NwU7O42c0Am5puUb5mNSQm
	 354IprP5Yo6HDTCDNetJdJSGgK2rOYP69kfckPUZr0AxEiyVe1AXl3hI8h1xk2BNmJ
	 8aUgIpY1BD3RJZVmqlPjcqtdikXbmVgoGJwgNZJsjTc5od8tfVVdXQFvXxvGoVMzwS
	 EjrMgWmHUgNyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1199C3064D
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 07:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171956006278.8538.16269488295345540731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 970976d8197d64ac6693ea80078ba68453ce8d12371c22811102f64d54c230ef
Date: Fri, 28 Jun 2024 07:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719560062
