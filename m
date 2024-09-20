Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2427223D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726796154; cv=none; b=h2m+MzfhneNMexDKn88QjUXPHDzgYlRJobVIH1/rukp7S52mRQpXoD4VfkjvKNI6162+YmdlHnkxnjiVAudwGrfzIBXrI42edw6/Wc3dX0FoQIjmaJIfukb+sIU5hDT+4XKdpaU0RmpD+47LWWvZLPgpVRsExu74oynmGiNCi54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726796154; c=relaxed/simple;
	bh=b5tMer9AfleFFdAum6N2be8G2Z0O9bB1adQYpUhDnyA=;
	h=To:Subject:From:Message-Id:Date; b=ShwImxitocXxph4jU+eBL4d6WHnCFQzxYkB1qqEgCF6kugO2ar1BwsnfPUSmJoRA5VHkS/HxcmqlOCKjcMLPMXyJYilokXlSTcU9l5sNgv7ODOMISFo/I3hVFPaTAURZ5DiFVw4UCUYsVWJnvJs4GiWoRrb9oM6H6x8aMAw8VAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CsNP21AY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CsNP21AY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDFDC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726796153;
	bh=b5tMer9AfleFFdAum6N2be8G2Z0O9bB1adQYpUhDnyA=;
	h=To:Subject:From:Date:From;
	b=CsNP21AY6lauhFQD/4MAEEMOnrhOhJOxzFA6nlHDuPf/FcwSJASiTghAIb4g1PkGo
	 zcK0WLWAxPFCktm9hajfD9SPPgS6Q6h4VGTfaY0WYsh4G5ce5GURvNTitnP8X52T3j
	 tF5XRFanv9VqXr+8EuY4fBa9HrsTGZLT/i46GbwTMxejfrJmLLmq4wiaSlGR9ywTkS
	 jM6qEazzfu/jt9LkJgV13Lc81j4Ta5zv744TILuUwSZ6sq6HeQ9qM3CE/GKGAl6Fly
	 5VqlJO6jk1G87ofqD8VwH7lgfqHc7qAqM6FjYzR3RGHLehAjeZ1UDYgdg4sYJowDW/
	 NEwnlP7wo4tlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E03CF397E
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172679615359.11475.17626700221610016543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27e491d17d3d89f32ae4f899e14693d34c7fb833b5e8b62bf79ba25b56e38d97
Date: Fri, 20 Sep 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726796153
