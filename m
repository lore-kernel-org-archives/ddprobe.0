Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6D6296BAF
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 08:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780130014; cv=none; b=rMUFPvXYbmJ0fksVqtqBjA9S0oOZyvx66HhSAW6dDidboDhgEiXWTPcI3SWUnHf+mXZPCVOcp1dP1Y8BQrUFq6a8X32GFnFgeLfzh0O+UFkys53Ud2vXDSWnG18oV7tXyGKyC4PaOwch81eMPLQqPpNJlAeW4vClIw2MzXDoxIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780130014; c=relaxed/simple;
	bh=RSQOKI8RPXovQE16Oem0SXgxW7luoijy+DfSOJ4wMeU=;
	h=To:Subject:From:Message-Id:Date; b=YJp5UkibDzKZw41pAN3kC7KgxhpytDn/eydL+V342EY9Zt0gsW1wP7dxeRo4iOXRSWa8WaQYNWqRhDgq6QudHV0bpoauEd4LANCO2zCYG2+2XMmZ3GIcIF5Js8HNZW2KjjgBkjezeGSCfoc2+ZyRib2korKDy/deSVCmsizuixs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=teYFXSOw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="teYFXSOw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5594C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 08:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780130013;
	bh=RSQOKI8RPXovQE16Oem0SXgxW7luoijy+DfSOJ4wMeU=;
	h=To:Subject:From:Date:From;
	b=teYFXSOw+w/oQebhtlhevJ5B2cR88yeqdaBfmaBrsri4hw1u8k6a5AOqRdEOd4Mt5
	 5dT6Ae1BQ+iB/atmIltFPITfbo5q5uP8WG0VW8vA0tDid1vH3GCIsGmguX6Z/647/w
	 q5EF4ysGK+UTXOsUJxdZq6g7674UIo64VOBd6xxwl6JL0HeKa6UDPjVjMPtuNJt9B4
	 yJwxQZL0JTwQ63JEqhCAMTUaiBeS2RkbDvGYHhYkCjM00092SJ6Kt5MARuiulNI4sJ
	 pDIPbquQKY/wbOo4k3WbDmb6MPDpsy/3Cf80qiUzI6/QaWaKfZkBtYi3QPs37xEawb
	 eYdArtDW9afBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD65CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 08:33:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178013001368.18184.17755961153824094830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 478c69ccee90cda654e17fb3b7d096e7e2b1656b75bf8f31377ed4992c59c227
Date: Sat, 30 May 2026 08:33:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780130013
