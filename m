Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2197A41A8F
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753429794; cv=none; b=Mbr4jI9ajE9dehKrtg4RgDuX9RkFoCRYwL7Ygvqe4W5H6851Yv4Id6Z476INuKU2ZSCmOxLpNa4jM9O6/FYlj9x3tDIyccTd4xk3sk47GJHPvr+XjnMPgYKQHPlWvif1Pa8l+AAVvhuIraSTdoG5s7JKF1bREqtkM9791It2GzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753429794; c=relaxed/simple;
	bh=RKORI8A5BMSzrlsYZAgkmMH3MF9ayBbrO2GyJOBqsU4=;
	h=To:Subject:From:Message-Id:Date; b=rYHW3Ubh8fqXs8IqarmZzklTE4gwG48yIlFNDbwnSFzwEaj6kV4FMHDE+O0TJwv252WXex68lGzrPTHk2BsulbzgeaRbkpI3PX8AATEhY5sUHtgGqveyGtKfd1aCi+O+tRtjPpAZ4SxhkkiuCFgQ7DG9wlWBAgtwttv4nsYKisI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDSLfrO8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HDSLfrO8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7A4C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753429793;
	bh=RKORI8A5BMSzrlsYZAgkmMH3MF9ayBbrO2GyJOBqsU4=;
	h=To:Subject:From:Date:From;
	b=HDSLfrO8BHjPKU60TnnSRhdcTW7A00QkGKFQNSj0wb7ZwsUq0ePGw4i1MRrp3N11m
	 SAW4R18/4arBml/n4uFA8H3rHkSPnUMUvvCB/b1j/Sw+2trfp8HdcVJuIiucA/4+dS
	 diWo/UfX6xG2n5EhGtMtBAKUPRj1Z3/xlTi9cFKNpk+LteiHJG9vZ9UlBCdHv0MX73
	 QZfgkPtC4ubCe4z8++QjZD+bUxOx2vCPMzXUj5Oh9VpV+RLRi97cYiMYI1iRmkputR
	 DGQaN0ay6d0ZF+hyEqqXxGJGoGMpRa3OSlzrGIXZY3G2vte85R2t27DsciwPo2S5t+
	 LXJ6cvKscUaDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AF7C83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175342979358.30216.10228974497739481312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 336968db81d3532d550b36177eadabb39402d5b501853035fcce9f20320842d0
Date: Fri, 25 Jul 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753429793
