Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE0B48BD3D
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778678434; cv=none; b=tD6ZoPatqo0w3mOvhKnP/X7hdbxN5j5+zFv/FDewPNb8MjozEsaC3rjLUsdSvK/1v5tblyih03GeMndTcc8+lxNk0+3DLdNca8lCtwdorteyu9cVJHGcdkCYZy9mbBEu45Eh/VV6y95Zva4lXvGkRV335RPP+BJj/evlKqVntWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778678434; c=relaxed/simple;
	bh=UNHXmvDDcv1G2MzzYxVGsrIyUKHV77aK/7vFTHL+rUE=;
	h=To:Subject:From:Message-Id:Date; b=Lyivg2mmIjnMVTfXvCWrOKNGpsWehG1f/07tQIVBva2DEqSB6PgMfJIFFlxNfB2CVih0JdhPJ0BpjWn+aVIpK4+xSG+sHP8ocz+ItaTFCuRWCYhw4e5Y1LDyCOzqVbtsuqNgXOfEnyd5lfhjlY+YqS3vkSLos3Un6lXmS9WuciM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ee7pf3g3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ee7pf3g3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7842C2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778678433;
	bh=UNHXmvDDcv1G2MzzYxVGsrIyUKHV77aK/7vFTHL+rUE=;
	h=To:Subject:From:Date:From;
	b=Ee7pf3g3LFBClMFeR92GK+YCPqowqXc+tRLK1aBuEKWNfiLet3PZkk3hKQOr5Q340
	 07u7MSYh/wNeLW311EsFomg0vDtSUtBjLhxiM14phsPIzglnvb1P4QBnps/U62VO28
	 /02HVdpDfEED9I4KoPlnP9Piueh3AHuw3SaOQWvK63RlNPriM7vJe0SmxsojROhz3n
	 GOtXoXEcc73fha3jPLBgAmBF2DmLdExTjrq9k1ZM3E4rlA0rvKKJZRjjDnvRNhQ9aI
	 dMg0aSvrG28+gjeyRtypx2X0RpNUKFaLs8qvy5f71Z7nPXDM2U4rB4umAD37/USMeR
	 EKjtxQgnQZStg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE2A9CD4F24
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177867843376.471.14459264349778951857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf74f76a32ead917ce9bb23868c5d622ebd849972543898cac205176b41d4ba0
Date: Wed, 13 May 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778678433
