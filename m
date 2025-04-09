Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441C619D087
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744172394; cv=none; b=TiYWzidlQ6eipKMi4zfvs+QDG9iw2x8AEBZj5Fgz0dyYoOQLC+0DPwfNjVCjBZiBBmnEe9oHldIyR2mVRFpj+uHA3XCbr1700VvBmOfpmK/Wylwpfg7lKHZl1beuJknvp7PIbkmrUFYzlnfkiq8U4MbhIFtTsx2475cdzlYSuac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744172394; c=relaxed/simple;
	bh=nRNj6hkLkrPUVBsBL1gkj1FuuO6KqBbF6t7+BUo5X28=;
	h=To:Subject:From:Message-Id:Date; b=QE5X885H8VborYEqaYq1Qc5Ev2NTVhUvVva1QkKeztXdpyoz00SKtAUAFiJT5tL+C4mRxLfULC3IkduksmRwfKC6fhRBDaK+35pbXjor3YH4IeUCBFV8mFID5VemsVV/X3e/MctTXyCf4sOlD0Wy4kP+/eKNbCa3NpfhhUZxD08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQRh+BAI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQRh+BAI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44ABC4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744172393;
	bh=nRNj6hkLkrPUVBsBL1gkj1FuuO6KqBbF6t7+BUo5X28=;
	h=To:Subject:From:Date:From;
	b=ZQRh+BAInxPZOzIZsmy6GCWGw5ceofJEUxYX2rQLlJRMcXT+nTASXnq9tZXyDPxvd
	 P0CxMfWLZu/8vX1AorFrLMEYokTACfhgnx4REGIQ11Vf+AOIvT3DPn1eL1IEaEkFla
	 1Vr3OZLzagCuS5l1Rvy1cyoKJnlzwqxl37zDIaANUBMIs4lznhYbw2AFagIpmX+Pw4
	 ICUQskMYfFoHj9PVkrPxOsJnDJnNY24gXi9oUJ9kCcnLIYH0rRpGaJqRRnahQdT93f
	 +ROrx3MOxhpczZfUtkwIhwLfkmo3+SGCKPni7coDrFPRXHqoQ8OUoVMIVorTiAtyz3
	 hhQqVmRWT0Omg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98994C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174417239361.27526.210141412502632198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9761e59e0f41a2318e5c4ef34a7646df4cb49884440c9c6c8697453994d79444
Date: Wed, 09 Apr 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744172393
