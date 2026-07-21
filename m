Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F36110F1
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 02:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784599714; cv=none; b=R1ClFu0bVFoVvZ2W7ZjFDUhDLckG/YiDL4oWuigpNODTCkOvD4kqLSR7esiQNBillgv3uVRipD0/PN7IvMjyY29l/lRJ4L4cYxM4pLZQNgwTWVAO0mYoVnwPVz4DBl/j0VxFMtMXuS2/vZvc+yy/LBFLjw0QlquXj7gecyLp220=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784599714; c=relaxed/simple;
	bh=K68YIr9TtTinIN+MACDVo1ictAwn3sCqjjGa565sODY=;
	h=To:Subject:From:Message-Id:Date; b=nh5gPQHBhGU9aIq17Eh4YApQnNzBdzPHCPsaw9rfHhA651SUPShG6AqIBDQlzmMxPlaCqSKAjvx1gM4M+x76FI7DmwZh1qk1rzhX1nxSYVI621HmcRTXVQZcWD13OzSb/qziLomDGhPWmFvh+3HDnMcYI100VnCdztV7gKnt/U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPkYZiR/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPkYZiR/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55D0C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 02:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784599713;
	bh=K68YIr9TtTinIN+MACDVo1ictAwn3sCqjjGa565sODY=;
	h=To:Subject:From:Date:From;
	b=VPkYZiR/FjKZqA44ft3X4DzJ1HtPUDbk/DSzzgtJQtXPMShDmRcKw3JaVFLmGtgOh
	 uitbcFDJyaFNXpnUZcZMSvLrqycBPNSlZwbXCceodEFeMVmIXL169xYIVVGwEvvKdv
	 sPQFtJU3e6PxgthvB1pfxDRa3pqaufYYXcN7s1BkeALQIGLfJvQiMzI2pz8osRTmj5
	 Sc08DK8N6Ve3gZyIE0nm1V5Dlw8vU9hOc03xxWcbfCDJXSbXKc1nwucHWorESZOzsC
	 5pBOnmOsq6L2IvIWBpVujyisIHSRZ82DV/8pNJjjMCKNoulCiAr5Ng8WTtE1vUCWRF
	 49m0eKRxe8R2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C69C44515
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 02:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178459971369.20453.4169023275989041265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e759420b93608fe1261466c00b097b5fdb31afb804481f5038c802fcf0922917
Date: Tue, 21 Jul 2026 02:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784599713
