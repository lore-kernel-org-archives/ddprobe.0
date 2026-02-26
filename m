Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDB937418D
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772079294; cv=none; b=c632T2c1oqjnyZFqBN0VcxlUNoPVD3pdvdym5xwSN+IuMWrmIxAT/Qlha/KCB9kPXS5v5hkONdjxcMHztafAbSdJIFuJyneynTrrCQwi54fsQCarrALB9Ke330ye1wZWm/G5KZcHStVZDGnWvILlOB8JmnKDbHvezB09KfQKadc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772079294; c=relaxed/simple;
	bh=5JnLRDSf6nBpGga/RiDbhY0vN4GSaDubvFMbf7kdDS8=;
	h=To:Subject:From:Message-Id:Date; b=TaSHt4dr/GuPyWqvNSJp9GmizPn6xr3dM2iH8nEaBWxE8xXc3C/rApaHCqJJZLxC78TXVSbtXyWeVmb1HsWYBNZvpxooEJToiJ2XcxPkB3WLcErKBgLBg2rGrCSu8pMfWIZzxcdo8E84CjKG9IjpEU1ObFnZ6cjSOb5HdQYVqxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IH1P+DkW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IH1P+DkW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B70E2C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772079293;
	bh=5JnLRDSf6nBpGga/RiDbhY0vN4GSaDubvFMbf7kdDS8=;
	h=To:Subject:From:Date:From;
	b=IH1P+DkWb/V/hZhoFp5nl9d/rZYHY6lDPt064bPEzHveszSWZpvJWMmfP1v6Kzl15
	 DLnoNeTxP225nN+XAIh8oPele+7IRz+MfYFYRLo8Vx8YSQ8yZdbNcNh+ZnrsX71agQ
	 MBASHOllZ6hdjZXWoQJ9rt4pcW+tBggw4Dw0Xa2NSWXs56r6VlTOmOEjE/WkCrSDuv
	 DdULe2rzbP3SiGE9fdiwdwmxqTus/v6TtAgfekuoQD9gjotu8qF0ZfbQU7gVXQ6ySr
	 yBBzbdiNJpXSAtDuQy7calszmlue01jwkCZd9e5pBaeXx+42ozu8hOF9jJuHU0fuPD
	 VU7qu4Mx28c2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0909FD4615
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177207929362.28103.16987619054598771899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1847a531d3b51e7d77f9128c3e70028008f9a07bfb90bae8005ee78efed7a73d
Date: Thu, 26 Feb 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772079293
