Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5242DF13B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771166094; cv=none; b=ZN5ztTDQc3Xr1Ze2IwqIeG3tbi8ctx17eMYxJRsYYvBMXtM+zA6a1Dt9B8CNheZTsuDdXAOYJQyvf70x619QabBUfQV/oMjK03EAFwp1HmRxbjCRiP8hTUQXaG8PzZiQelsR0hWJqqPY8bHZpyuh52G7tc1i9aC7HFoQ6SzLMVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771166094; c=relaxed/simple;
	bh=HPTDfbo3JWBo3wKZETw6I7g1xv/6gI16eum4h+BOezs=;
	h=To:Subject:From:Message-Id:Date; b=kLiY8blzfVrRLgJ4ArZYBS9OUip7X7JTM2dHLCos75FoJtoLDtJTeTbvHTZifsl5/00QbguWaIfSHo0iYnpA3L3Gw7fcLO7HrCOZgkB6M6wXvyNg0mgzz704F8tUbPLQDIreCSNShle1LlwtN1fV2d9kQfrKK9izMPY7ec3+DqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hednC+PG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hednC+PG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE869C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771166093;
	bh=HPTDfbo3JWBo3wKZETw6I7g1xv/6gI16eum4h+BOezs=;
	h=To:Subject:From:Date:From;
	b=hednC+PGSDSa3FvmvE2q7tAbXhg/D8n7qfocddyakYbMv3VjyWynqNIaFW4ndXtLg
	 +YUQmQkOZZ3uIqFclRylAbGVNbF4AHKm/ada/9EvcDchi+piqg8btSoDYWYmNY3OfV
	 f0TTA880Km3K0rVs6FxVPYsH8dkkfhbDbSFGF8Cxs24eK3J7c6Z+z2yjwl1qNpUSeg
	 gGpr/DVIIxeHA0aXu/psKYsrazRFQwf5VemPOr8HNe9hDCK/fbIE8Ku9F+gGIk/YSW
	 3OOSJKqXcFyZezI8oDgaaP/5/mcOzgs3uh9exsL7Qm8JpaINioZclL7ZCrJKMXsiGc
	 uqM+aBaQlRSHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CA2EF587B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177116609360.21998.9665386240320575336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d16ef9f428cdb70c9c9d4149e238ede1af9971cadf029d22860c4c32b8adea5e
Date: Sun, 15 Feb 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771166093
