Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4989C7482
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 19:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741463334; cv=none; b=QafmDWtI4KdxWpyeL94conzE06XUw52oT4n/D+st/eXSs6N3tG8E3NCOT4QloyRQ9KmcjVuvJI6Vxwu3qtMXmyDPVgyFyQa5pn4ylytx+CuLqDmn25hbjF4MYq/IfLZ/BAcYZFBOG0MCxWeFDJ+zOFXZKtV/9b6qY4wDpJuvfOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741463334; c=relaxed/simple;
	bh=tWG58GyXqOJstNCr9qANFKb5sL0fySWx8YbPj9Qwsn0=;
	h=To:Subject:From:Message-Id:Date; b=XFTQ5tMm4jb6J1FWRVPidQeW45qek6tB30iUnT1J7nzdtPrbKGLkF7siJsHWy1mG3USuAYAFbHH6AionWgJw231QmoAtYNcvQjjxLAK9/KopCayOMuIF9ZhZLWij14QSWuWyF9Uoo9tt/2cQDa9kN75GskLpZaBJOgumG/0HtZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxRY0bhv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxRY0bhv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAFA8C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 19:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741463333;
	bh=tWG58GyXqOJstNCr9qANFKb5sL0fySWx8YbPj9Qwsn0=;
	h=To:Subject:From:Date:From;
	b=cxRY0bhvNPpWoMWl0+NeCiKibIhkT1QKLpJ94B+U4Etlh8KKf2NslcWk50XgabJ64
	 X+Ag+YQU6UZU4UMnjaFL/yy3VLRC9/d3EuRK8RrbnhVHktuToQD6hiMYoRzI49mxM8
	 2X5dKMZ1WzOStv8Dx7RfAw25AwGtSfw5XWmY5LPlPf8WSArUDnY6xA7llfxpJwEHyP
	 zNwF/WAYNZ5ylJmqIYBClB/s+fn//NbyulvurS61vaRMR3OCKkJq/jriSthhsxhnw0
	 wOyyXXKbzo89LEQ65r+eLjvTEbftgj0pLkFrHR4IGSsD4wp3KWa4KugXGpflCNOwS3
	 4ADwY2JIigzzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992ECC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 19:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174146333361.28568.5183279695236677301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7421e9f01aadfac1db9845bfde62c4d6a9fb178f97120e64b9a137a437edf826
Date: Sat, 08 Mar 2025 19:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741463333
