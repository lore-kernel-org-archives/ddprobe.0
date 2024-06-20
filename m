Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E08540875
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 13:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718890823; cv=none; b=K9cwCqNdv7O+o2nKh+4U0sH3BRNfT4Rt5na19ytziiJrILjoH00sf0cPrc/sYnlPznIE6WMuHHBmPM23Jr1z1utVcj3AHvRFZP8t0lgtUagdoBHbJH953tIj3x+GGX8IwbOubA1U8WDZ1xwhWMex7FL6kPv2UAYQ5IYd7JHyHvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718890823; c=relaxed/simple;
	bh=LLb+tD4FAzRi/4kSpBse3G0WTKZQGJRamu+LTr1aPUw=;
	h=To:Subject:From:Message-Id:Date; b=u366E5P2EpoSoVJUh8nesRgQneY2LAWq7b0HPEO35Y2eZzKbBimOrqVjmG8+kpjBTXPvtLujSrJjPArqfuIvEl5mP1dcDc5v9WBaG/rdZ1FwQZn7pIucqCdIf7devWesE/2gD/BY9bgTuxIcLq/dqmLiVR3vSTTdDuLe+iZ9MY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rxiAaDk+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rxiAaDk+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB7D5C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 13:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718890822;
	bh=LLb+tD4FAzRi/4kSpBse3G0WTKZQGJRamu+LTr1aPUw=;
	h=To:Subject:From:Date:From;
	b=rxiAaDk+2vu+lRsd43vx9ujz6jHIlI79ctHMdghxxnw87DnuYfFQjCMksUyHhEHm8
	 iiAn6BLmkbh69bH/pMJvyT++CkJhqoh6Y3/W2Od2BaqQiElDloRTwHIjhyKjHPMu1s
	 fJd3z0QfWpjSWNY/c0C5UDrBPODCM16SMdVlSb2CVg+SAi39a2PzVpEHiQh+Ke8Naf
	 UZXneMJcjkRk0AZGi7Xp1VP1SU30hd/hcd7vZFEukK1tuX8Z0cD/STUotzzhZ33Wg4
	 iBP74vNeCBxm0zRkzvcqYrt3hxnJ1EJ6y/OCJmZEsI3UAy/Kam8BzbUyKTzgZPBimn
	 84e9Igori4Qqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6158C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 13:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171889082280.1655.498260191883453275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72f227e3c33eb36066277053dbffb695c9b66d315077918ad5b4050f7bda49ef
Date: Thu, 20 Jun 2024 13:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718890822
