Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC596341663
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756285193; cv=none; b=uEoI8KquI/rfCPEoPJ9VRFZmOl1QsO7CHvRUHnRKyVmzcKdZYzG6cEYD4tNPuBzu3a2uGVfpZuzwP6ajoqg36h9GXFb4nh/HJZOO8G4R5Phs/5z/7a8jVYVzsm9qw6ETd+TpYCsCOnTj+bJUyK9GMB/qgX3pAIZtXWduJjzOoSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756285193; c=relaxed/simple;
	bh=4znYEs1jfQcfc3AAAu47IVhRQHUQo3bAMNWePMYUSIs=;
	h=To:Subject:From:Message-Id:Date; b=qesTVCL036RiG8EYD0kf2afDz0ReOWseVpHVK0qKmKKMjsTrDjHSXXWsVEbo80FZ5zyOV1Xib3sx3ThYm0pWl2BxI80XCtoehD/12zOq+nx8lLdgvFz4YSmQomO72PKl3Wnu3d3CVwc6cAPbPUyPd1w5ebvuGtabr06PVCRiVNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPfLCGjJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPfLCGjJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1009C113CF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756285193;
	bh=4znYEs1jfQcfc3AAAu47IVhRQHUQo3bAMNWePMYUSIs=;
	h=To:Subject:From:Date:From;
	b=IPfLCGjJ75jFNLOQv6onqCYSJ/sAZUQirQNhYXDiqM0ISjoOdG6L+6Jdm8fKH+J+m
	 dkiO7ymR7LXS73ycfGX3fSowm8U6K7hB2ClNBVoeJjWbtlR/+Dmfjy0L2ZgIvVEUpM
	 uQVx9MNowPApLLKpD2FIFDMMLBuk4pB5FndXDSRuWwImfSOFHvOqdYnEZM/R8ZElAY
	 EGUhb0zL1N4bf8UboEZ7E8xy4+eWhOObmUW0iUFj/gU7I5yVd+B/uDggG8gH6HrbPY
	 7y626vJifvkhEEdgPcaNK4vIcBz+2FdbpwL14aLzSzJ0lU+JIRC635SGIAcjFAmPbf
	 xBoryZiLi8EDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F93ACA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175628519357.13891.9715856232902025328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 751e7a43ef3f71a6b632fc1d223839e0f57586f68cb092ff7bcc476b40079b69
Date: Wed, 27 Aug 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756285193
