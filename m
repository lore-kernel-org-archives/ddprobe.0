Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAB02D47FF
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759151994; cv=none; b=Zarff/hHq3SHVXjJolDnwgdEUTkmgkMwNHmy7nH17+ePqW8MQQzGIWhimR8mYsH0rRVpIXGBHk+nGIp/J4aO64xn5+ZhDHUwTSRKQTZE3YwoF4Ai2k8kA2zkj4qKlUFKgiBiESRNhwchYbj1iqyWOfn1vj/CCL7GJgOEL0BMxkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759151994; c=relaxed/simple;
	bh=5Fj36PQzg20c0pGMBxbNccXFvMaQYH9pC5BAnSwL6I0=;
	h=To:Subject:From:Message-Id:Date; b=UZfmTPcO6pzgWBKHCecPf6wB44fk5+bTtZt5qiH+4P4Db9RN4aTttyZuVEdvD1yOYovRf5AejuK30wRbphpNJiAnKZu2InLwRbHlFPM2GSvqxmOw+m8zeSEb4hFixBsL2tPwf3JMAtl9fahkg0RwAbKinyjQjIsg9OPC8oOzUAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqBmyKPe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqBmyKPe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7B29C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759151993;
	bh=5Fj36PQzg20c0pGMBxbNccXFvMaQYH9pC5BAnSwL6I0=;
	h=To:Subject:From:Date:From;
	b=qqBmyKPe0t+Dmt8/aaqjK4QPs4dFzOKIvK4zqRQOdOScxXyofK7MrBU5dgL4Iek6C
	 CsPB/zCkCBPcn7dYBphYHJHHvn6dgc4dSDucjUuC9wTC4M5h6O2MSpU2ZrglODTlb0
	 F4a4PrN44cnaqIlwSccUtJMDGA8/AcFsoJnpidyMy/DYbvm9DpAHIeuYhl7tdVB9zM
	 hcFZG1pwnZTNRCw9zrZ+AIHgEftU9oyGKP3ojPCkl0kb18mvlFezTUmYdmx/LuC7Sx
	 l3T4Ev4fpwv6vjYJrtey+3p2fFoVxQ6Soq1O4ikZIheIAhp88nlD/hh4Gx5xhREEzN
	 6MZbL+R9oYoaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9E4CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175915199361.26833.8287859982627154925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e941614cf7d7d43f27d21ea5666a2590febe8b37c5e3b38b8b3bc05044709c32
Date: Mon, 29 Sep 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759151993
