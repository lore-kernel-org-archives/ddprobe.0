Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62EB516DEA9
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 09:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718185103; cv=none; b=IDdrCmecWznGH3FLViA1LRx8kQEhV721IS+d8RW2E3ukxJ/7wKfdJ0x2JNLQj9BimiAr/S2cgLXeVJbDfFmZy1LGQdvo24fUHyEuHqqmhvfSVx/3sadggcGN3lqG1EzHqBqirhm1z2iX/J3Q2tZwExQDwfrk3ZnIzsB9kNRffvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718185103; c=relaxed/simple;
	bh=o3Iu+ngkdQM536Gp0HSonm2aHohMF9LSPIkUJ5FO6Z0=;
	h=To:Subject:From:Message-Id:Date; b=XVDClF73iSwvsWScTXL2PotIlhy15AHPbneRXo0k51ANls8MS1YNrsLsDyhadvI25p+bwViM0W91XoWuFtJGI2OaiahJlR2KuColQ1ktnj30kHlvsWnmkP7dQfgY7MPHUz3aIFFv97oeIDx0JgEcxyA+v6hQubLmo2KSD0qROX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDseZ1FX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UDseZ1FX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE04C32789
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 09:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718185102;
	bh=o3Iu+ngkdQM536Gp0HSonm2aHohMF9LSPIkUJ5FO6Z0=;
	h=To:Subject:From:Date:From;
	b=UDseZ1FXIlmoNWmk+69JuD088DVK1++SufNdAts5ZJ3PXrZMjDzzyZC/FlIe+zx68
	 5nkKoAvbLPcPMokzt1fZ13cL/tjD9LQelYaQgxQBtHEb3JEaSQ3qUnED7Fu3YTnzoo
	 tHeVpvHpZeAM2OlexURVthuoQ73OnsaM0Re9r2q9/iowyxee57wUufOA6NW+wRnhwc
	 aG8dBscU+AzE9+Mfz1cF5PVGakPw80QY0Yq0HKnpPvG905lb8jOTzuVdyaD0Jwk/zr
	 AmCKf31E9BvJ0ML2NzL5Bg8vaRVPUyaAUNhlVjpnveRYdOkGQmHo4RaapqM1m2NPDn
	 H7+UKG5gB1Xjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC72BC27C77
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 09:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171818510282.9331.461944559574028926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c4bb45ad5b4ef789cedd09e6c5776e9c96ca1cad825f05db5e0b3c8c1c39252
Date: Wed, 12 Jun 2024 09:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718185102
