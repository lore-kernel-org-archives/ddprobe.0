Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD312F851
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 16:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763742714; cv=none; b=brKL6vpkvufwZoZldHQ9OyQk9UpE8riWljsC1lb2BUt/lNbda/jWTyrgvmJS8cmQHKBA/bTaBsDKT1JNIltNGWOBMkUHSKCr5ykoF3MZSxxudiFAaqzJDd4S6XwyLkKlM0M0uHvxK2dP2lUkQKNvcqzDC0/xZBsfOgTGsdOPeYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763742714; c=relaxed/simple;
	bh=18+Rkxf9dpLyhQM6mjk/C/q02dkr++mlsbtx8fYZ/T8=;
	h=To:Subject:From:Message-Id:Date; b=K9KX6EBSCHcPHcmZ44SBE48NNiorTOdwlgqACWTZtUAYeYLkxYr8rFxUpgFxye8QXfU4c4mIcmFd6tKwc8H/zffYocVkc3wYATSBD/fdJsbduQZMxe6gQfjKkizNioQTiMptL4/Wac+1F4qMJPljV5cWlUuSQGzU2Horx98952Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tysvt3oc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tysvt3oc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39B8C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 16:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763742713;
	bh=18+Rkxf9dpLyhQM6mjk/C/q02dkr++mlsbtx8fYZ/T8=;
	h=To:Subject:From:Date:From;
	b=Tysvt3ocBsro/8yWAcFN5KlHSFrJI9ag8uSaelmrhNzv4bM9gIjLHy6dDBVopmQ8C
	 AYTceZc7aMwkZGf7bI2g4aMhVoXZwqF5XAsjMcEzMevbv4hmDrCXFjFsTB2OkZha8I
	 qGkSYAdOrpLcNdCs+CnLzqbZdwfDa6XHDAFYDBmKvYqi2vNH3B+Bg2Bd3ViR6hj9rf
	 QooIdDDIZdBzdkLUp85jXnQBF/fiJ0450qT6PhpPUjFXdA80bWsnnmFPmVduDhA5nN
	 fp96uWOOVlRhg10b8d8G9p0FTJoxU+jS+CejF5cfIGMMGFPrgRj6bVb8h6poT+7AYL
	 Jc0rob9csj1hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E3CCFC28C
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 16:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176374271359.24240.15030733221069248822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9e758921ef4fba286e7a84e91010356c100755dd7c886512f53ca4bdf76f430
Date: Fri, 21 Nov 2025 16:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763742713
