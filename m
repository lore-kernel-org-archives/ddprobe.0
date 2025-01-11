Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0C11632F6
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736611554; cv=none; b=Ft2dqgy5p3DUWpf7CHWZGp3VK/TNP04otYN/+ZQNKdYGeHysAWWGEBrEEnL+PxOypaV2by1upUG4gEkqtpho3r8/RT+q1/TNLyGa53xr190qyqNqGrID+tJ0yVEm6GAS7bBCDTFdxcsK/X+8XduOy9G1+4nDfuAOWRHL7T//b/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736611554; c=relaxed/simple;
	bh=Cua4xUy0duDX8yBNNJNw2aRCTcSP4eftse93V3qn8nk=;
	h=To:Subject:From:Message-Id:Date; b=h9vpLIpd3VHuB4wO9yHicmuD1w44RUxmtA8b0Ur18v/ORyqiCgD0lOw61bifuUploLfVcNzQDCizpuEQ7cY0CXhZvL2sncIcTKnef4mI/E+f+mjAJ0G+DbYdX3rU7YUg3qv9iDLIrWOKvrpu8Zx3IVJyNc0Sc9xygKFSrFaTJ2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OH1y+MZM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OH1y+MZM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A22C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736611553;
	bh=Cua4xUy0duDX8yBNNJNw2aRCTcSP4eftse93V3qn8nk=;
	h=To:Subject:From:Date:From;
	b=OH1y+MZMJiAj66UVIclv10WW1KwX/AI1Ac0rFeuV25/6r+rjB0FYeUFb0TyIoRyZH
	 KA/CYU72upjLdiv1kN/WEc5tNU/fOy/4opNq/O+cKdTOpJzDRUNHjcW/JJrCcmG4DP
	 g9e90mSkN9mMbRwDlZ3nDoQfsTtgfo7sTqIlOor/T7r7AXvjDe+UaYCPiiDTs8pmJE
	 sUouLfslZTyS1Hhs5vtUGGGUIaowuspt8Tbymb0vdWct1jF0DTM+fEluqjBDKCA9ko
	 5fNaceIKNDjqY66+K7JoRV7KgT8wAHyS9EUDvN4Oyy+pbrqsAftLxxr7kKALuEjLsp
	 h99T8y9L7SxAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF7BE7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173661155358.1011.4963186644836719536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a35c8aa0e19dbb4e46b3bc2077622d035d50ec48d76c5fa4cca0ad9c4d29247d
Date: Sat, 11 Jan 2025 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736611553
