Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E761A9FAA
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758077394; cv=none; b=B7aWZAKWbFr9spw0sUlMjxrI1804by/mfR2EU0j2rR/ZJwV6WsDBSew2hmt4kKoMfhFUGSOBiQkR6WBTC34nTWKi49LpOGBB6YmlqI2kgKsFYXQsLlbof47VedGAz6lEbMfEXxvDD5ZJ8TJjIa4WfnFjQVTZeaTjQIZcFL4HJ74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758077394; c=relaxed/simple;
	bh=g9IcW0IWFGSOWeMJyCCJV47YrN7M6UFxXgpm11RLF8Q=;
	h=To:Subject:From:Message-Id:Date; b=NEHtgyI4CKCrSB0W1OXKPj3UGk/4457GjFNqugXj75AaVqof/VMg+rMt/Vi02Md7EUSOfbh04AFJHdnt1S2Rj7Qe7t8MY3D35eKNfPYa+N1G06+1uzcxQPjgYysxSkDmQX8UpCoH5+Tv/cpFVkJQDogDG0943dSBNqK8EfOlkLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FkyJOrXJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FkyJOrXJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F5CC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758077393;
	bh=g9IcW0IWFGSOWeMJyCCJV47YrN7M6UFxXgpm11RLF8Q=;
	h=To:Subject:From:Date:From;
	b=FkyJOrXJqsQUfoh7b8sJBXXqx1kMXkPZdpDZmJtBcR9S0tWyzmHs5nzrac+uz3ewm
	 G55HQO/XZUHw9wCyYsp8oqH/F7/qOMZNtpLJrt9hCQ/tgilCtKOFf437HXHoXtMNSS
	 MQcGWuUyjpONxACYIq4gg1Tla0z4YBzxawDgI6XEX1FQ46wXg7b7bPC/jzu1rda/aV
	 5Py2jUp505zhIiAi4ZlwhdjQCs4Pv3Qvt80jDKFUY9jses5E9jmh/nR16GnEF2yFA4
	 xSgwNUtc7BwCcCNDVd0++qb0nO9EqhZOA2nha4KsX4P4662ihaZD44Ak75p5iGIZal
	 RyKgxON9ueH+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922F6CAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175807739357.19141.6660211490770023116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4da9641d9d34d916e22289203d6622453666107c84f3e1b6bf6b5d5cd4dd9560
Date: Wed, 17 Sep 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758077393
