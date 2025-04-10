Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A51315E90
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 09:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744277394; cv=none; b=Wx7RAK04XksylZzxSHBUFPSNO0Rcu9KQTS3biNQeZwXOoaDVvYRjPZaVD5CHx+CCW/0uzffOTaFp8872+OUVmemt36npH+fYsPxJuykKb0I39Fy8VC4/CmZMPDuE9jM7kH3XdGH0YHS5++W+dciWSIuatdqhNMfU7nQfVCELNRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744277394; c=relaxed/simple;
	bh=YdZot8pmnclmqQeS+kGhX68zx9aG2CyCo//FQWvlK9E=;
	h=To:Subject:From:Message-Id:Date; b=Rgf/pZptyE5W2SlJC03jOW4rJiX5sJOjGNMnB2TzfVHsIXg9DVVuIKjalPqwQesDM4jSmVyWLYSACI2k5Vv05tnJcqWzUeANFBMjrtFAmURmuiUS/FIl0iO1Ggf4s4/KoJxy2jTPxbrZAcXGeLg+uV+SQrLPw+0KmbILsucT3Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tLX7Qmjo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tLX7Qmjo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FAAC4CEE9
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744277393;
	bh=YdZot8pmnclmqQeS+kGhX68zx9aG2CyCo//FQWvlK9E=;
	h=To:Subject:From:Date:From;
	b=tLX7QmjoP8mfEL1MApwTTUMtc+icubdVcJ3dU+c5A4PHPeDXQIbVTdX2HQbpmP4Qy
	 Iztu26KmUyGvUUYrynMFaCNUbMCLVKDtHW3fR8J2/45LLobSGbxl8hRGg3b4wJO97c
	 9LyzJYveT0gc36Dg6FEn17W9qVLM5c2DnSd9Wgxs6SwrcXesSdW04/r//88v/TStWg
	 s3y2J4y8pMoDxe4WVlOjyQ59y3MD9TNvTim1dKA83AV0c5+taLcz3KVO0FXxLcLNt3
	 HkYhaHtl+E+F0gsBaQcCelL52rI0N+2goumDrDON2lDSdpyfZFq3i/mSjOUfSlYGBY
	 Ne5TANBwitakw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC8AC3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174427739367.12363.3764161610576279749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9d5ae808c6cf91941b680d80cd5803db5bda83bec0a8967e91f187ee0410b3b
Date: Thu, 10 Apr 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744277393
