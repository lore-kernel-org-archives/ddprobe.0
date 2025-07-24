Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0E710E0
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753333194; cv=none; b=FFiF24bvJeZg0dTJc3Vc7KWQ/a5oxB2HIc/iHphaq9EQH89EXsLaioYgjraP+a0dLEaBVrSZsX7g7jO5rqsrkxcf5zowbRE4Ltof8SjyAMZ67n4VUkIydyllH2NzqreiV3gPR5pvYLjctOV4F9NmUecMZmOP7bCGsubeijRg+RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753333194; c=relaxed/simple;
	bh=cvay0gwtOV441KUDMNXi1v0n1a/Fp0Ew8Zk2Bit/lkA=;
	h=To:Subject:From:Message-Id:Date; b=UIXVg6pI0xpjgRmEIEDCpdZXY7xRbB2I88tZ3YFTcEA96edOcaUAlrvG85WCACuYpFaiFk3+2tEw7l0/NgjFmTkhhyUIwD0wcVDIFMiD/bbwjYKNy6iGbxCWZcuoZMmDaB6LwpPPQ5TNmuditLm+TgUsNFriZ1z88CaUR1lGj+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PtJzC/7N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PtJzC/7N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F272C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753333193;
	bh=cvay0gwtOV441KUDMNXi1v0n1a/Fp0Ew8Zk2Bit/lkA=;
	h=To:Subject:From:Date:From;
	b=PtJzC/7Nl4g6AVn00eZ7vaiQVgkxgeYytHrBVsWx6IWX2c6MV/mEnmBjiwUUKSJkJ
	 CcUkfx3EoNR6/2usfqzJU6fhBb7C6zupE+WmCMjBIwoyMb/hvD2m3aNap7vsLw1GGc
	 jojzEDG2tsufxLq9trU5MmcfkLY1lgc4+m/G8DXUHqi0XbpoiIjuWrcamWM0ouUCTU
	 8T9lYwrYCKNUmcjF/9GtwiisRDjQYoyJ9GU4G2fvj3NAN/O8HJX0RpHqKP53CsSkAm
	 F5EQzp/lbs2FkldNXiV7Rz8cDcusVXObnC+aor1dBSOtNy4c/C58wSdNuOowcoVfeB
	 5b471Wb0QE69g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF40C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175333319357.16576.10587465711620090667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cf871e1f15f7c1a61166f2376db63bcaec662bb9c3657b00bd29a5b243bcd90
Date: Thu, 24 Jul 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753333193
