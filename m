Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF413B7750
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 10:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780050154; cv=none; b=shRWb8a793wZ93IpakROcHia+N6zG3uLujbDt7mdrOiGxgSB/U3UyQgO+9XtQLDFmnroeIsnP5KVD3DoquoybXZl0T4q8wH+6DOAh7BpULRHNhKfvloBHn5BC34uCQQBQl3LBd3zg//onaLhvsa/EABB/YUO7ukFkH+JLUFXKdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780050154; c=relaxed/simple;
	bh=RoQsQb8PLMVQRUZnscgt9GTYOM2d0CPokhG3A8gawwA=;
	h=To:Subject:From:Message-Id:Date; b=aSv/Fr3dq/B+ubLsoD7VnitX8uc5so02TDbVqzWKwXZg/ordwDNLjtiQcIiQBxDbskezFR0K2ZXShjdTaC/OOdpSefBbdiZRj+iXJiqjtT9LOwmvQqp9DCNWK60k4BgZYthJaETU7v+M46TwJ6hcxk7hArY4ViAbTaVKNbwWGac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cs3A6ZGe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cs3A6ZGe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E95C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 10:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780050153;
	bh=RoQsQb8PLMVQRUZnscgt9GTYOM2d0CPokhG3A8gawwA=;
	h=To:Subject:From:Date:From;
	b=Cs3A6ZGeWqpLY/431+kskVKjFL6GaxHto/uu6YxrHjKjD8V8twrk5dMNsQ2Cq0uoc
	 WNeMuxD+tYeGXk4dIUOGA0byX6EMBLsAsifSMROu7i3mWlBww+Wei8Xi/ONiuuB2cT
	 D4Z/It9EzFuZY5zGit+cC17fUf7K+SbkufTGT6OSajPjrUDVhUFkUJjMK+d9OEsQa2
	 mh9+XuCcE7KOik7IFFtFGYZmgqNdCiLQr96AvxKQHKrljeq3NoKVEgNu3pQyeTPMJn
	 V5l8Xyga7J3lH0n0UwtqH//7OR1XJM+mj5SQXVLZSvFe6crsgeL2SJ1ve+wf1IE0mX
	 bjHPzW73hIIXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3E0CD5BD2
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 10:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178005015368.32075.14563341705074751462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c2c23debb4b211a5982d8b4580d20d6db8bcab44d222a340de12b183645e345
Date: Fri, 29 May 2026 10:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780050153
