Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307294A23
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734470754; cv=none; b=meos4+THb/HXjBl+q7nWycMqxHAHdjaDOC2LznzOMbsAP10Ch/tqbbgmfOZiZOxfyXjbZ/i89D/2+bK2HGAra99jvZHGDiuBV1cS+JtxOYUUWBJaMpxsJHtMXeu0EjFomDT79QW+/m63Iy2Y0s1Zp/kzveT0ENdkGsnd7mRNgyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734470754; c=relaxed/simple;
	bh=9d2FQXB+GvEqPf8NbDfM8890NtXI/F+alPZgGgbhgU0=;
	h=To:Subject:From:Message-Id:Date; b=ExkymLOG/Z6RNuYxE34pOSdXH0YpSh3jVpQGpz0z8FyKmwIaCAiWRXRNsq0AXlZDYRobe0rJ6q+t/LeQ5pqJPIZUbNQcy4cGlBfdSRLQeNnsA1nwkqpOXtjGPipt9bcNl3w5KdV3vB9Uu33TXKWG0koYiGHcMpOpVpQYW6HIRr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jGvFhAXm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jGvFhAXm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A878FC4CED7
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734470753;
	bh=9d2FQXB+GvEqPf8NbDfM8890NtXI/F+alPZgGgbhgU0=;
	h=To:Subject:From:Date:From;
	b=jGvFhAXmgtEYCqxihJJyDOQu6K49qkmffdm7ab738a73Y51ALCylV3w/D9dRcg+bc
	 +0xA1Ifw2sEp40tCJ7+2yNJPZHOQoItrMm2GW/T2pdr+XiE0YQoiCpqVQy2XR/0w5o
	 cFsTPMCmEbZr/WNe0nS/V2HMl1EWR69CH0jEyDQKUsuHTm/694NT7f/mlKcLYYyzpy
	 F6enJ+NjE8ZD1BsW9U9Cbz5MPBDGiYuOLA3okMxG/V2SkGqfSs6LqOEHLSca2fOJnm
	 jWZc+VTPSxcbF768aXl7Jtriu4aFioDqq8h4uX3tTy/ueumcZGZnP05T+TmOmMrtRV
	 5HE2fXjHgrY9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E54E77184
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173447075361.20322.15232817256478049485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b148e07c156201d1122c9c5823a8a27efa0252f04f08014730e2509855353b05
Date: Tue, 17 Dec 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734470753
