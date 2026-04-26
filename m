Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262831A317D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 03:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777175254; cv=none; b=oHuIMxjCG95enIJ4XqpfcOlsxRaaR09I1wpqrBFn+myXs6rGG6ig5ykDmB8aKM11zwN3rIC6kzVzNLfjfrOn0R5BtgjCXkZqLDmomur4NQr1Wp0pdLXNpgBWhMHwc/oFpcX/rTaGCStGldti+N7PRU+0J0zuRZUCCFwjDl2e6WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777175254; c=relaxed/simple;
	bh=EgOsHYv/NtoihI/Eek+UeDDVi3pmU7rlyPtK50nq32U=;
	h=To:Subject:From:Message-Id:Date; b=jkUsOqj68IV4SBeb9tPfeFUZtj5BLHLHha3VI7E+J1a3Hv31RHeCy++vvl8fFua23avE2zfrI8Hv6fzZAQe532c+QFCfRsuXvXzZ/j3tdOet0bn1EizbcPKYkDnMx6dKRSB39sYnYrd5FlNPog1muSuYP9jeYlpmqpzc+JDV7dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qyXVjHIG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qyXVjHIG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C31A7C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777175253;
	bh=EgOsHYv/NtoihI/Eek+UeDDVi3pmU7rlyPtK50nq32U=;
	h=To:Subject:From:Date:From;
	b=qyXVjHIG7KbW5tdXsLfq1DbIdc9h3WMdKhjhvBUlQVC7L0hFVrrK5EBjADXrZI2f8
	 GOndARqlCOHd1a9iV6IyGF4wi4RE5ClpVY0kMAN+ZyC0IyrutbyKW8oyZKYinno2QV
	 lKb3SKKWKdB3F+4irsZIYtoJK8WBc50ijd/uB9I3qlKWbjbQ8/mOzj9fhGzmFaJDy6
	 bF6Mjt/H40rf/KTFNRx5SiZlaSBkTUMkC0lNEV8iL7ujExDSTPWSvhzdsu6zi6IPzk
	 9mPssMtzOkvMmyMUPg3QREabzVUmCulGCzbZGrlIBsIVL8xIxnzcjlQJfmcUJ5CBDt
	 7Tgl3MifV64aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0467FF885E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177717525368.19535.13175254095577893973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd9b2891a44e81f513d8fc530bdd0fcb163c8e08de8add910f143c345710f17b
Date: Sun, 26 Apr 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777175253
