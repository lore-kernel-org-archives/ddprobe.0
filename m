Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46624282F30
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788837034; cv=none; b=iG/ybRlf1JHpz76Xb2IQgIbNVqUQzLaLxpewErrzhSXxutDRbXf10344D48FwtlA4mfD3/xl1S0VPc2KYhtJtZnD/0PEhLNbJRYZOPhHetcs4RQYqH63KZhIQPOl7QV4UyiwG2wpysQBJnVfZbI4AsSvmnG5ZkifHwFmx5AmcmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788837034; c=relaxed/simple;
	bh=kA3BxyWOyXcWXlKYu9vY7HvxKYranKCAB3sEcvtCEkY=;
	h=To:Subject:From:Message-Id:Date; b=l+vkcV6OppBkvid0x2NE2+V/QZoH/ZCFf/ahc1x+sG5sgQIr7pEXuy6xHBvGlxFyRZEwWJFAcWvUoilXtjpRF2G3jF5NvI0/qmLjBHRCovvNiAxyYF8bQJ/aEJxoHYGyN22ETNTotOdv4PmGAxhHyKEEWhWsS0oY/3pewPtL+/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZpLP9zcp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZpLP9zcp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC5EFC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788837033;
	bh=kA3BxyWOyXcWXlKYu9vY7HvxKYranKCAB3sEcvtCEkY=;
	h=To:Subject:From:Date:From;
	b=ZpLP9zcpzmxQ0mPo0Hc6B9snnU+44GbdtxRMIy6BlHUdUwQVsabg7yfEmw4PA3GbN
	 xlAMI+F5Ut6wifXAuUJkHwYWvvxrjxJvb8cjiXgKR9gjE+Wqvxvg4vcrGrjRlglZom
	 lSkXSFJtU7rTMbf5eORL/tyazUY24Q40cB4F/+WETXCpBOQVy0OOH36oqWIA+abu6L
	 2x3oK/qEvBmACaXsOkdHr60FnqQ34jJZ92L0NWsnd1NfEZn2pn/KCoNfX8Lo/Eg+KT
	 cBlWpPvTTvAkw3RNKJGMF9r2LNTJCz6irCOtvUYD9xjj03me1FoERJaTnoOQIOxEYn
	 mSAqx4KRTLeCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B738AC79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178883703372.10493.11029220911384645325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd1fb23e0b52e76ee99421679e7e9516b10466d91c127172e6dbd9ece72f70b2
Date: Tue, 08 Sep 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788837033
