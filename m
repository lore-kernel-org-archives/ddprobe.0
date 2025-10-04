Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6061F5851
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759620594; cv=none; b=uD83v7IPygZDK1bKluqJWg5KMbEn17colqsuDvKu8cAEuLwdnHzF6U0oavzkuLIfPiT6uX+h0wBBKfu/BNnl87pKPHbgElyaHpxbmXMeRzDvdeFz/o4w3jpxLsvSqcXvLaSYjJJg8zvUNFdE3aiQYbUbEHCNzZvH4YFykJBfiRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759620594; c=relaxed/simple;
	bh=cVq03Qtx4uugpLLwx0XOTQeZZbpri9rwz32ErfIS0ik=;
	h=To:Subject:From:Message-Id:Date; b=PuwxYvbI6l2AfOAj+IMuUV31hR8N1mj1CLo4rc1Rn/OYKGbEZG+Aj+gdqL0fzPsgcisydyPgjFp7EdMffI45LpixaA5He7kTOBsbJ+/HAtSiiNTB0SNFs0+h4qd1/kmak0T6Txsp3BRRZDhho+fK6zS3Fq6pkPxMqDY0kD8DQec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPIgk2ha; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPIgk2ha"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60A4C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759620593;
	bh=cVq03Qtx4uugpLLwx0XOTQeZZbpri9rwz32ErfIS0ik=;
	h=To:Subject:From:Date:From;
	b=vPIgk2ha9BDrFOiGYVhFOV6MTrC46iyMzYGCCdSRMtrhhavJyzrHgRCdLPidvOL1o
	 Cm7Hm0YkgsA8kasD91r9SOvGQEMDRszVC/DRte0ctJ4gE4L916ehJqgYns5Hh6Lw82
	 Ac9lEhoaEfuhydJLWWpezbFTO1F9cBeyZ0Z74RzkhBSwdb8ftZ2oSiRzJRewGhIMe1
	 8ZHk2Y6NBBcljoymEHUgZX3gYz51rYZGz2YWo3FWCC6wrtI0WnIY90sJEGc5fu0mMP
	 EvGmWGEOzq1GvMXM/ECwK5OhjQ8e7IVHOuK6Z7UH9xr9tF6O84rpAIiUzD9iZyEFOw
	 3lgQZogHCHrtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F71CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175962059357.19682.3811498982133604884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d2ed28429fb2b4d3123a9efc5a9ec4842c3e71c472c2e50243f8ce40e92357a
Date: Sat, 04 Oct 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759620593
