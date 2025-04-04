Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EADD2E62AA
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743733194; cv=none; b=fA2AosfQyLKImrle3Exxuk9H0R9SKirEmE9pD/r/pBm9TAdTVGYYWCzZiIJRs9usdZvdk+GzQBc97sN8PxI4GtW0ESYtyEw5nmXMhm4nQ0SfgnJ4icfLMQ5t3fVUbX76yoOfL3If+ceUSFqg8KV00VHywAhUuAmZzd8mXQAc0Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743733194; c=relaxed/simple;
	bh=o+tKzQE3Ba1RExne7G3u2yhOgdf5qxATClqMl4ueKuE=;
	h=To:Subject:From:Message-Id:Date; b=RBnIgzdnR8SKiZU7iyNdJ42hx4X0Gsh8VAIPbAeDTq5zLNWiVCZKOfgDjNMFwdYOJlmSOeaQuVfMR1KzozoCirW3mJ287peLjzVLD3BpR6PGP0L+yxlU5MwMwKfcypgTXzXuhia7Fr2NAJGoTVDNh1LIJbOkXVH7lyX7okrVupA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UH++m8E+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UH++m8E+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4672C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743733193;
	bh=o+tKzQE3Ba1RExne7G3u2yhOgdf5qxATClqMl4ueKuE=;
	h=To:Subject:From:Date:From;
	b=UH++m8E+LanbqunbGbIxgUpKByhDAMhpbtWkqkZS/GK3lGsDp1bo/uXSeAE/xeBBP
	 ZWwo/kRnEORLsEJcfB/FGr56+dqxf5v6hGPnjRlDwyeBzrGlIl+qmBsQpLw1GAjbxl
	 hMapEW6nWbJsrhDCpJ51Ebli8hDC3LYueFyd0VPSaWRP2P1oISxjvR7L7f8/OgHTFa
	 qDQbJ8IDWYnCMifPvM5t3vglPcCGRDTeKSkt5iNjSFMNCCgajxCUlEZvQIaC0lJirn
	 D1t48mI87hBxx5e0+BA3U36T+ZWVq2xe0cynWAi6oRBWyCJae6p3etfsU4hDHhy++w
	 MYSUxyzqej7kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF99C3601B
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174373319362.3436.5464160161814259106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f82108ec3145d57f2b49195794c8e0ce4da8ef528a2516eee29bd28c7b528fe
Date: Fri, 04 Apr 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743733193
