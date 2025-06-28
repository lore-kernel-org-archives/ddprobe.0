Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D061AC88B
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751113794; cv=none; b=tSn2iT8Ube6j4EZL88vTtpymfSFWhuZE3bqJV/I20yt2wgTqARaBu2m1d38Xpx5of0MFPXqx2g/sNPoJ7neXYSeshMaRRuDLd1ceLvfZiaiuTF/kiVEWZrlhUcnxoxnjZx6K7GNxRoPB2bEmTJD3w5l1bjEeSm8DAQ2WQX/Tqps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751113794; c=relaxed/simple;
	bh=6ojBnxigIW9KNEceqUeXhws2ZSvJPsg/pqCQHutWCbU=;
	h=To:Subject:From:Message-Id:Date; b=NFdalB1Ts5C/RvETrU394h/rMa0GhMVBukvO8dMjubQ8FOQB/vsi1UXbT62KEBIpuUkrqF3SbQxcTTqrs4A8HZryaH5YCHbOhl19d1rADZDPNi2VX6bVrcakDLUjsApnQt4b4xAB3ZvidVfKMY7QlQgcnO4Ny6O1+shcNSavgEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdvd6JBi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdvd6JBi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E79C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751113793;
	bh=6ojBnxigIW9KNEceqUeXhws2ZSvJPsg/pqCQHutWCbU=;
	h=To:Subject:From:Date:From;
	b=kdvd6JBiksZyFr7MsS1SWmbNHBmfXUUXk9qhMsTaz1eZ8VeCPcmT5fxQSGmXqBL4u
	 XqYIGvafEIe7XBlEJZe87ONtyaCxjH8irLj+hVXXFyy/pe1i4FJUPcvLkYXoJ9eSaf
	 p/+PiuSoC9CS9173QxB7uuMRQmhWCTBW83ovRuvVmGy32iXI+rIEfTWK4Ob0a9mrbI
	 cxEr1Ur1mbX7WnRREa8mJbiNnSGlRDoxdQVJtbh6UG+zXFk+g7q03Z7bqkfroidlQ3
	 S9HPICQyTi0X92QZNLzPurylLQzWblOAfD5RwIjonD8u4NKtbixSQAvdctonhemzDS
	 ak9mtPP781c3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F55C7EE39
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175111379358.5233.2709045054004875161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b03a2d38fdde1d9e3965b0447d013c7e3906f180ed64b4c2b0b50890213fe52d
Date: Sat, 28 Jun 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751113793
