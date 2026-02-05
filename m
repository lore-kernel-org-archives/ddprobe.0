Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CDDB30DEB8
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770319434; cv=none; b=XdaDZ/3bsPCoLDYW0DPAakLgnGI/QWEnv+IFrl13mVkt8ruNCMJ+Tuuumkj2P6SuMoiHz2XPXDQnMARoEIL6f06Pqume+8cRNE+eCE9nxaVWtPj4xBa//fK1r/QP/u15PlWxFatKwC3UkzT2lqBl17dLG9PPaK8/ayakhOGfQMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770319434; c=relaxed/simple;
	bh=gHitxPHwT1kyOZH36IO8CGjrwtcAwa8fX3i9j2FFDUI=;
	h=To:Subject:From:Message-Id:Date; b=VO9qSJyUPijh24WHheg3ricAVOgOb92vlfmwqVhjJRwxSmlRdJ2PnLVZxPLm2fGTunKrMuEKcj4x1wzz9bFW7XbZNzVH2W0Ln0YJZ4y/bgX/7uUCUzwn1T7sa72CLoWxambGTuqnPXke9MwXwi3t1N3yNo8bLBhEyssHpw+EkSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDhhFQMs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDhhFQMs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DFFC116D0
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770319433;
	bh=gHitxPHwT1kyOZH36IO8CGjrwtcAwa8fX3i9j2FFDUI=;
	h=To:Subject:From:Date:From;
	b=nDhhFQMsC75rwYEX3+n8/ApSXncGwAAdSfjMwePxAs9wukoXBzHuEbwqw67XDFovB
	 aYsmHhocZZ4dvrLyBG1ZuJO2n4F4Una7tyUGV5H6KuEj9E5sMN1n0kLIcGGBLufwU9
	 R9APmocZBBm59aC1UuFQoA4Y+4a7EZL+Pv0S1Huh3uq89ejCzh9dggga/8ijwSVOp4
	 MpIFsV5xJoeMcCwVkpUEJqhKf3Dst3JqcewOka5SMzbW8ZpsYiNw5aTDtM9BZx7lnO
	 rpvjz2BjCNYYb6kpGMLqWJUa/uDBgUKWnSXti4SVKvt2JgX2I+0kkzNBTYWlGc/6vi
	 FSglL4Lf30QjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938D8ECD996
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177031943359.19324.4286257071957343655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d6a350d1eec3d8ef43e7444357573c13e8a1ee55134cd1f6798cdc8a1f08cc8
Date: Thu, 05 Feb 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770319433
