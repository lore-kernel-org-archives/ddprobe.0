Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8342AE66
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756891194; cv=none; b=O2rdwI0u7nlTyipUIIlgR/yRy90Zoil/0ReM/9uCGVsraHBvZj0SQqh8slEUgl79e5IHIV/1moJBqAGOUi4+ezBlawKEbnkBlSOi8CyP+KDxRiM5ijOTSJMBcnP7ciMRbsLzyMsGkXlVApBOLBcZYKuLnsy64hVIUM19urnsjh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756891194; c=relaxed/simple;
	bh=5I+QEJxcTKb069Oj6ra11sLy9jwONOjjgd7FE/bvIPI=;
	h=To:Subject:From:Message-Id:Date; b=DqSmwwNTONiIoAdttyJq3lg9XiOJlaQno2uZgNPf3rRflEyLd8EEZigF66GrpduY/eUpWt8xpT1q2VRpXwwlHbHlt63o+e+Gyu2LNCc2lm13fw7RpUZmZyZipW8kRqgReANDNWs9B7Wk2FM02fE7tqWEeQfwcaD6//k9NnT4EjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNGyIj9f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNGyIj9f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5150C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756891193;
	bh=5I+QEJxcTKb069Oj6ra11sLy9jwONOjjgd7FE/bvIPI=;
	h=To:Subject:From:Date:From;
	b=XNGyIj9f7LDAeWcn2Z7DAIjdWsT6yLjeXrF2cXfbxOqFDh8exjRcGTh/HiBVn0TvT
	 SkNbKWvgB2PJJOL417Cn7u4MIV8X0fgbptcy1j1l00kMrGhvswrq+arqyx8Z0qlS5S
	 fhUS3SYFFlw1vm0Skkro4fHY+ypgIUbCRNqasN/uNmG718mRHQjvinEOTcpL3bwn+J
	 EOvash07/Dj79soy+tp8vLZnS0ohK3z4GEywzqwyzhpfClBM0txx4A5hPXQj48in6d
	 7MZN/CpfYvD9umF8CtedL3zroMAldJAE+XeKIQgjhRELT9UbGMJdCbOTv1l3oIRKp/
	 GDNEnI+hTH8rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92631CA100C
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175689119359.1507.9108778994985785537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5351eabee32aabc92c27f313860800f000132f1502af9b4701b78e7cc352f82e
Date: Wed, 03 Sep 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756891193
