Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58FAA13213A
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 06:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720508183; cv=none; b=nk2MhnjWv7LvdUYIoEzQAfEVz/Koz6l+sPWR/Oc3gm2yBOBgjynKgrg4faBvRHE/BSnP65hOFDvHU17lS2jt7/bUd838TAHzBRoLdIWfWSoTHUmyoyjFQ9apR4hh3jKEZl1vQv+uhcRDNYIlyw6Ksv3j1tBrTuy79f6NVgPV0xQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720508183; c=relaxed/simple;
	bh=V/lpvSVqBUjjOHYQSSp0JW1D8KTU9xJqWRIntaWW29E=;
	h=To:Subject:From:Message-Id:Date; b=X39fS69xKSwdI5pHFdbow6bwslnJQEp66ycxBRlzjKmbLFZOguwQv6dDQW5BTr9Wi49+j1JrHSXKTZqHN8Ib2eAB9XCoaF25THjXzZXgk9aNH5zeo3xz2DLp/2bXqzDxrUkw1TesRctcbvNYCvybtfkF3EIC4j3WSu2AAmMT+EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+rttbA9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+rttbA9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A30C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 06:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720508182;
	bh=V/lpvSVqBUjjOHYQSSp0JW1D8KTU9xJqWRIntaWW29E=;
	h=To:Subject:From:Date:From;
	b=q+rttbA9FQhi9V1ER1o3hGlE0gM0shbbg0rrDXmsSELlLu0ysQjMEAEQGBU2Cs4mo
	 0NsPqV627jPNnKBlKEy9uHQMKmPBWEFaYz7B4AGgqNcnxcvK8ItOZP1uJ3LScRs+vO
	 ishTXCVtYXojBiDM+yIz10v1SpoatFjC1euHP+EMIwJbRZHgHmTdehu8AETisnHtBb
	 cAvdZjavtcCxYaIPnUgHNjXw+7GxwQWoVaU1zMZSBg1DVQND68qY0AgAiblMNpuC4P
	 mr8v6YLRpXuhL9F+xGfRqZOtfd3/Nbs4fMrRRKPUcMEeur4NbXFYWp8yABBioPrhvv
	 I2u1jwXPInlOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD40C3DA41
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 06:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172050818277.1513.5522096507609082288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b19b7d2e4c457449b314a67725c617b6b58f65f855ac783a7124efe377456f3
Date: Tue, 09 Jul 2024 06:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720508182
