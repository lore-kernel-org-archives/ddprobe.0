Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C523215F6C
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754546994; cv=none; b=Hn5/7UXCkectl4AuDXfurTjRuu8goAzLUYUfuPBG+GSp3HWTBpHPGpP7E849Sgy8yerIy7sP4WysO4nbXQNhoNt9kpEp5qBnKgMe1wb5KgOJ1BvjiD1/kaIYx3fv9dSo/yqrXenFo1etAS+lloyR3gqWalYQwtKYXUUDU3tQ6GI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754546994; c=relaxed/simple;
	bh=yoXYIJOxT+EcmFWBLdI+jh0d9NzsbR1xJW3e9QCaR2g=;
	h=To:Subject:From:Message-Id:Date; b=cFUXewxLV0zNgnNCalK/fqSr8HBzIJ6UJNRIwdjWujHJq2Wo72Ax4Gs0Ma3XGkDnxc4oiM5a5vtdSrxcE1bn/DmKjq3kc40xCFIBgghUCJdd1s0aoB1oBaubEBc7stmcdmz/qUGhxbGwgX9P5eb5uLgQKDs/XkP2UvAj7HFUtPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eaK3L+Ma; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eaK3L+Ma"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4000C4CEED
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754546993;
	bh=yoXYIJOxT+EcmFWBLdI+jh0d9NzsbR1xJW3e9QCaR2g=;
	h=To:Subject:From:Date:From;
	b=eaK3L+Ma3PN0npXMdQX46J/fO/iwIaery2Q8/uluCMK8S2Xn2YsmFGrcym312nG8X
	 QrB4RE5XsbgM/ZfInsN1eq1pHwMO+KCut+9IN24fviQo29Lfx+ue/HgMgbwp08luHy
	 xqHQ5EYEsAplkTT5ebxAaxSWDSAoelUiIll6xXEaOS3795HV1m1eyG6L6J1mJW5AH/
	 zbZJ0R/6KKp/06l1GuzOFGF3SDLxbzRM+luo5rwKvlFSL437a65R9yRwQ9ZGvdDT5C
	 drUCgtziwek1Py5Inxm4vETYBESAA0sPfkFn9hoPtB5VVdRakjFOdceY67JlnZ4uGQ
	 wyRHRgeXuJflQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914ABC87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175454699358.20019.14985932742139399472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3928a2ca2d4c29a15c2206c5a6c919f73f7a0d1467d2563c94f1058467388863
Date: Thu, 07 Aug 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754546993
