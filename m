Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 834D964B
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 00:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717289723; cv=none; b=V0YJFvcHdbSI7+ljocYjcrQVq/k/QW7ORtuL7anevePkMExlMCsPcqqCuG7+TQ8gjXc09xdpIPr6zolCZqDZL4mHTK5ACtGrSpvXQON9hfxRrMUehNkXeW/pKJP4zctt24NdImdfOgTzU/rd+7v2Vsf6T2HtKD+hXEuEXHGW3dU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717289723; c=relaxed/simple;
	bh=w3m67ltEGf4zaZkO5H2KmWa8iEXWd33HiqQY+raUwuM=;
	h=To:Subject:From:Message-Id:Date; b=J7+GUZt1lW+uKs26jx2lD/NEBgWBAjoXCyihkwTSbYpIGNH2F6XCF3sEDHsA9LmhlzhsoIXk9Lw+i1uaWxHGOvGff4WPBjosL2/mA2Q7bN5SURiLzwadHA89eImbo6ii5RhfAecxb5OaO3W6FTWsD+jj5O/BBRVz3JGrZc9I8Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2MbM/c4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2MbM/c4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0058DC116B1
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 00:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717289723;
	bh=w3m67ltEGf4zaZkO5H2KmWa8iEXWd33HiqQY+raUwuM=;
	h=To:Subject:From:Date:From;
	b=Z2MbM/c4RKKK+XslrwXme9SgWDj15PYl1C/fiUVELPngkd5uKCpIrZDaKGZRfj0G3
	 tKqS4BO5PjdworzJJGv+xmxKW3uxP9C+n+25zITa4F3W9G5SyyNJOvIcB2+7lwWB8h
	 o46cjeY7eDJJKKAZ3JfA2mxi04EyPqHQi3dDBggqkgZ/4pvidpFBkBwJ4KVvvfs28x
	 TfZv14b0jsQLGSka/P4bPMrv/qGN9lH+byIMKiDKgZw2tbMTcuKAVDTWesFJ3d4Aux
	 tBlBM0j4AyI9JlSTYena1OibsmxArpBo/e17YHBFt1JlL+BfDM63mp1SQLpcsO41aj
	 qLIee11RlxihA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D177BC25B76
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 00:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171728972281.27715.43516167721392714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4718c158284a53ddca80679e968eb82f49e7fbcb3ecf7c101178ccbb602bc34f
Date: Sun, 02 Jun 2024 00:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717289722
