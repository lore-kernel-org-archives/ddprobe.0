Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E3098633F
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749409794; cv=none; b=Hu/woA3El/GjiFagWOLitQKhc55bx2UzZQRuwwReBiGPt8Kv36aBLmkNWY7fGSPsIk7jSqc/ykukEgchU+ciVM3kE38rHeup1JOLct7AwW9xlTC1j09LerA2FSK/ZE90+jm1u9BckNMh0evVruUJrqTE2BVEYnAiYpBXfObyWsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749409794; c=relaxed/simple;
	bh=+7km8myTFe45cIizsgRo78XdAZPD1OLxqVeocwOI8dg=;
	h=To:Subject:From:Message-Id:Date; b=nH4fgxdMjtHnNbc9VBIsY2I1L5Z+mWWtuYnR37Sj97V0clkPvkpghd+LQsrlfbDViipYWwhhE7Mrk+XdPoKffTEJJ3axcxgrqrux37JT5Kl+/U4xCrgfVCmR8jPO9hZAD7QXsWd2Vg17LKbPMn2/4Q+M3W9+10Iyq2V0jV6e0YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sixy1u7h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sixy1u7h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D008C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749409793;
	bh=+7km8myTFe45cIizsgRo78XdAZPD1OLxqVeocwOI8dg=;
	h=To:Subject:From:Date:From;
	b=sixy1u7h6Ln2SdECPexxxG1dI8Bdp1rDZFv97ma109FcEMxKqSub1841exTlKf10i
	 hiCf5WkXrWpD0j6BQH4dzxCFrYgHCcLU5/5srkfyHQbjshUIc4HdzQvsWOgUFGFhWO
	 cYL69BD1CfAVzkFshKJtbCTcuaS4IuoImfy+3Hx+NYyDAqFdu3YUjgGukH2x48miuh
	 3nyT4c4j6I+SscRiCn0lSOQeWBVU/M2wWI1Iga4EcK7jHMreXtHLhs7Y4+FwgHQJNK
	 3Fdtx9P0hoSWC0ngQod2sldvAmlQ93CcZnoo1Z01B1EW1CjeOvCBq3FkV08ye76WD5
	 P6iv1MCT4EB/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA45C5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174940979357.17196.5361490935997544051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52a4347f342bd25542cba9d082203932e793e821882f4d019568d94386f7d8a3
Date: Sun, 08 Jun 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749409793
