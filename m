Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1999A2C08A8
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 15:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777821454; cv=none; b=rg1nH2g2pGP1DUsDXWHCBKkyFBvTf+1cCzjO5yekYDVsCIWtbn3Rwya1uIyu4Zse+Npu4rQb1SSTfde3NB0Q9dAo9wmi5MwR33pCgeVS9smbCPtRamu0UZGlcdpJRet4TmMUfPQA1XBmyKcpizdNJSDkxV1i8RKMiQdpJZtsY24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777821454; c=relaxed/simple;
	bh=6FVFtXvWAH3itRcroE4HzbDMVwyy7EDQTpJ8uUSVo0I=;
	h=To:Subject:From:Message-Id:Date; b=WlI9WYdTPRsqLlLz9qECU2kRc6fyt2Wqt/mN1W9JOZvIw4ROnNze8GtR8428/XhbFnMgqJnAjgxMVn9YLZOcX1F4uGtuZ+wl2TdY5x89vZqrrhfw4UJ0j2/3mQamY6CgFHbIBzBBtotrwgvI4x/hpTg8t4ezv6NIhkIW9iZ8weQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CwasNtSa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwasNtSa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA7DC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777821453;
	bh=6FVFtXvWAH3itRcroE4HzbDMVwyy7EDQTpJ8uUSVo0I=;
	h=To:Subject:From:Date:From;
	b=CwasNtSaJ4+5OAf5RLscVaJFW8hY6XJ6l0Zm8izJmkrgOheGgmGT3OSUdUad1fZ27
	 bVMx1w0MHJqkcQcVS1GeB9+UR8gmrD5viMyPd3Y2umcmhVKtGr1YFqF7hRRb+HOveT
	 O0dzqy6ym7AwlzdVrN0AcB9o9HmD3UphZFuya0nLMDPU0ZgofAb/VXtjvB4AsirYg1
	 fcYF8rigP5O3u9TMvYtyw71kP9KBhZ/h4SoOLeFrGC/eFWni0d8BSK6ZApY6bOBOSU
	 Z0CfJlPv+1uFHQV+kMWTqDZXhuH77SirE1h3gYz+doWp8xKU1HhYqTFp6w/ZKFduv/
	 ZXx8kpiC0H9qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF213CD3426
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177782145368.17664.1853355610191576930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db2be6e3c95de35441a017645b2a9e9361aa3a08e5d2ade84cffc37249a0ff8b
Date: Sun, 03 May 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777821453
