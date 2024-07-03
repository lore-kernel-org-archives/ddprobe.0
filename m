Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675CB621
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 01:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719968723; cv=none; b=MySkCsCm01YGAUBDs+dMgGiFQdPxtuHB2hQiAi7GKj0gwyYJDnJ2bCIBTtcfZ2QegTxRjuEl3yNrhAv648WRay90pU8+Cyd7TkivaeufyspFsibfo+5bCqRjr38zcwa6+l8D+yAEwGwyIjoFlVwbKQifbG+ka3RcW7Yyvo9ZAbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719968723; c=relaxed/simple;
	bh=Kx/HvejOkzNOpEcD9pTysmzq3b3JTzQJFhPEI4fjqQg=;
	h=To:Subject:From:Message-Id:Date; b=ZqQs8xefKDP5xpcCFezl8b6mkbOQs7LmhUbMeDibZ+SXDjVXdwtwRFGlkIsZ8XOCx7uq44xxZDyh+OR7rgzX0qi83nWude4ZzTPH7IjFj6jSQiOWsAM5TPuqW31U6BzHXXGmE/gA4jQn+e8+/Hvo2YaX0uUho152O20meI2uokQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bumikdcy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bumikdcy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDAEDC116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 01:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719968722;
	bh=Kx/HvejOkzNOpEcD9pTysmzq3b3JTzQJFhPEI4fjqQg=;
	h=To:Subject:From:Date:From;
	b=BumikdcyLn0VUiQ9ACuw4fawZd0QohL3mt4r5+9jXZqLSc6ejmZxd41sXYF0t1vLp
	 KjK8bgB5er2KzyCG6ibv8p8bFqSpcvy1LweJmsmMAo5VaI1W6LzK2DC+FAI7iMwrXA
	 o7kFacOz3fQQNnzUAZe+44c5/I/hVLuzINAkrDwRwLjENhtfU2cVGGIY0MNfS5sk/0
	 LqHSB6J6KWZH8vCetlQ9YmkzwQx3xSRN/5G2w6sDUNfG0+A3Npc7WPGkFar0wV7ESw
	 gtPgzPnW8DzQIATdfEqvDCsYhpYVzcjUt4GPMx4DsK+11V0JQV2hDcsWiDfO2poJfe
	 Lw1Y9TxjSXpmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB94AC30658
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 01:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171996872279.11028.8295272136719054732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8234521de1ced5f598a6c09d2aa501aa99be4d39b3aa98938aaec57d4aa6a86
Date: Wed, 03 Jul 2024 01:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719968722
