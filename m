Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371891F8908
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761010194; cv=none; b=I5eDRVPHXQBHV7Ff9dHaRI8I2k3BH3tggS4nYBZoIe7IGN4jWH8LYuLmWq3LCJItxHMWbtBwqe+UK5ONN1Wyr0yWChpz3UwUoqT7zjewibyTIKl0+c09H0hEF8jz3BN0olaVnqjNv3xxyDZS/PODbhv5YIaCEM8qYsrl4QNN9l0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761010194; c=relaxed/simple;
	bh=rI1ZF3lwg3Zuq3GXv/VQ3vBK+Q6VCIflR68lCM4H0KU=;
	h=To:Subject:From:Message-Id:Date; b=auO8JS0ufQOkl3aiQj+LTW21J5yoIHNyQI2ZPQmfooFTexKwvXV7u+8lKRc4KzMrlScP7uPWq+L0xO+JU+0IRq+9CIKnCEUT4ayI3ayoVO9XSVyGKDGgrkNBHUrM1yJ4K0UWnl7foa3HF2To+svZqLLVuDtcGQ9YpGH7WH9GeX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uEJ1dMWB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uEJ1dMWB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD2EC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761010193;
	bh=rI1ZF3lwg3Zuq3GXv/VQ3vBK+Q6VCIflR68lCM4H0KU=;
	h=To:Subject:From:Date:From;
	b=uEJ1dMWB9j5VcUBV0jsQ45+/z5DH73z1mn4xrRbBoqqFUNVdiR6AoY8s0nqYBh+7N
	 Xu3J77yiI5ZxK75AufRLn8U3vo5qslQCVNhVm2i4NNKIPRCmXPWTRhINlZ7ENpxGsw
	 FmXNAICiwOS5fGW46xtWSNgM0VX6GxPQESG82QQCwX3ugFKSTazoY1ITH+pstO2Abo
	 /EE73Yt3D3XognsjJInLKsAkpXVrSmEqj0E984QZ0lyicGYWyCS6QTy22N5xMCzXZF
	 zVxfxRpfajczL5WfhgdvfM2PtahHu/uW2n4UCeQqfEJa4Te0nkX2MZEdl5di5cWdQ9
	 MSlIVT6xh+cPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95724CCD1A2
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176101019360.21681.8383687246915356080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5808576714422de65f0e7b64730650b0995a2edff06b9392915c2f9cd125315d
Date: Tue, 21 Oct 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761010193
