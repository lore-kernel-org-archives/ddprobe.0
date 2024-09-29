Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D43D98F6D
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727621753; cv=none; b=WpCDvjngRlsTHa6L8T3NwY+cQjU8UWdpwjxPqowjQx0UbqzcnUxf0XyJNWUqhy7Osur58C+XIbMXb0bZYkZCGtRYfqMw928Vhd6K8y2m/HFM5OwGt8gGbHubC0Un8OV7IA8TPkKm/nkD0VXpNP/04HmfWeacD/TDvDeu4Aij1b4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727621753; c=relaxed/simple;
	bh=KIbyuYV6/nttGckYiSvF6BF7Ma/w3JQsXRBOjz42cYY=;
	h=To:Subject:From:Message-Id:Date; b=SjaO9LP8zLlD2JZPmDb7UH7P972k/a/Hsob/PtKvAdKvs/fQ4m5pF6XR5NqQJXdFxnjaGC4ZNcYhjmuEVbjxsErguY1WV9tdBTKFFKgaeJt+vsZAjdNKLaRnsuIqSEpKqM0MrbeyHLiXQs1CYxx439MURjEs0umrWkkQ6s4sB2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=or4EAN/l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="or4EAN/l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B109DC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727621753;
	bh=KIbyuYV6/nttGckYiSvF6BF7Ma/w3JQsXRBOjz42cYY=;
	h=To:Subject:From:Date:From;
	b=or4EAN/lYbiAThoAWUukYOt3fZP+ODkGMiTmaeZJK5shryDRG04ZgI+lwx+5cz9AU
	 6tVu+NVZ0VWyhdOUt1sZy9VfJIvTuzPSlQL9nv1F197NI0aNOxtrHp2vMIweL6nkjV
	 sqFQeXBf3IuJGjazgXu4cn+6TJ4qaNxOY7SE5zRFsBv80ONk9rBMIiV2PB0LGL2kik
	 dz3ONiV5AmwWDfp5gAsZJx7ss/93OOtdFqeBGQEEy9SKHur3bLiXjCXAXDkNEEyEXZ
	 1sSJMpN1VqewBi/HCCc+RRgQkjjzinC8KW021IyDL6gKDXqPsQYMDtgmGm2gT0Ga3j
	 zWyqk5slwP1KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB61CF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172762175363.7664.8432974132407152005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ae9ce55f0a1896fdeae74ddd10c5da4909b488b7b6f6c7d7d663e4d505ed780
Date: Sun, 29 Sep 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727621753
