Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BE836D4E6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770403434; cv=none; b=R6NsjGg4HVw7cgHyB1vqP8MbNXqx0lMHKDA9Hg1f7pFBGk4/AFTakooCOzWCqKNTC975AjUJNhlLCyMGM0AUom23nTnkt1CeVKOoJFFO5PHK4hSMA2eozUZRrO85+ZvF/SmzHw+xuNdws0+2rIBzrt8DimQ2GjVMLN2bvNjDSwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770403434; c=relaxed/simple;
	bh=1LioXAuOpZRBuATLR9FGns54t/BK3n3Ck821CkKDJOw=;
	h=To:Subject:From:Message-Id:Date; b=lkq54TXr7sNClK+LdwtQ9it87rtpGdOJKe1jVIzU0HLmwYQtzvOVn3zBGRI/XtK76BdbzYPUiEVwe1YOewxL57UMd46BYXSpLwFoQSCiXi99It8jprUCogGhwxezdMMlYDMxX87ex6SivSqbY1wbrwz6KJoNffYNM9KIsLDrfBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ld8AUvpr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ld8AUvpr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9861C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770403433;
	bh=1LioXAuOpZRBuATLR9FGns54t/BK3n3Ck821CkKDJOw=;
	h=To:Subject:From:Date:From;
	b=Ld8AUvprKdskAwbhUPB5nxky/Q7+xJrR28cVBLAdOFasBlUlvq9IdPISItRpZeb/f
	 X2KjRzyLAOYGYS+U2uPHOuoEh9TD2a1HL5ldJFsFTgkHwat7CS+lxIo2ZoS2EguGLP
	 BLMHWRUYia8ltDZaWaPXr9qjN0LdDQVxLLthruoHjglU2GrWSxfvvNzmB2MJaTDazI
	 X+oiq5LwvzpzKIop3OerIIkK99UsbWP4MsKHeCdkD+ozB5+d4G4nH36jdRSNRtH6xL
	 NNiIjvxkMT8ZahzAV+IyL2s65GXna8X4lAQ+ZH1006mHW4frPE931pU1aiyvmAoAAw
	 0AyZcZDg/Z0og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D70EE6B4A
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177040343359.6121.15475725827146376614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3858bb1415a24051af0f433803adc4696f885b285e94d40636034c2b9a5a105
Date: Fri, 06 Feb 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770403433
