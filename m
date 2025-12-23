Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12981214A64
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766452434; cv=none; b=n3oiQjBCrOWt0KEnq4QLzgOAwEJOtPHZAJFN5I/O68H7cSF1H8XrT+epkmE4UDEjrzKH8BX8dGzykpxkZnGJct5zLf2KkRRRj9qfFTt6nRNh+VGybJveBmrl5knYNkdbvRGLL910B47sn5ouw8kmltamy66BJNMc2FtosWIxHhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766452434; c=relaxed/simple;
	bh=KbW3WGE09nMDgrpD0x6G4nF2EEqsc998Sy+SareF828=;
	h=To:Subject:From:Message-Id:Date; b=hU970N9J7IWu39oRhExKoDzcYBtaRaLS5CVyo8VbHz/OQ4VwhprclVKufiLdBcPrrLMFqF7g/NYYuDHhLBM7tJXIenGZOybVE50ileDRsYoE9TjUv0pjQAmWjOLy1l2Wln/2bZYRs63iDr/JM5RqM5fUIKgAVo2bgIPsZAWvAI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHAKtiSA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHAKtiSA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38B6C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766452433;
	bh=KbW3WGE09nMDgrpD0x6G4nF2EEqsc998Sy+SareF828=;
	h=To:Subject:From:Date:From;
	b=gHAKtiSA9CmVs64NVaOXNjN5uwAcG58NiYX96TSHlILXCJKMLdg8R4vcOUKRj7gJQ
	 n2gtYkERzV06Ip4ovCoJrkUzP1IJvINicCVCGh8nwbFQRz5qFPjjofSXMaNv1Lytb7
	 q5Av1o+dIGdckiygl74cf7F2MWKuJHOaj0DyeuM+TmcyTTLiNyXtiCMiCGLdRH6wBs
	 zqWKCAbXDv/9SkE2a6sZgJ1tC52C/B5bVqJA1VzpkrITrCd03aBh2dPxDLjCopWVuk
	 Ba+g92i51nA0npzlmDAYLGBiJASllfwqg1X4tEs/lwDEVF6+lprnW64Yxvy5LUsAgt
	 izyRWsF38pONA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95ED5E6B26B
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176645243359.6605.5858512945746582240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f4b5605cd11997a6a93b4997624b3631a6682beb0626c6c42a999d86321d7db
Date: Tue, 23 Dec 2025 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766452433
