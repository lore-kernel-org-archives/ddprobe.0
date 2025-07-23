Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2275426CE2B
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753255194; cv=none; b=L68k2QjsGHNmZKj/ervcVYhJlp87XzvfFjmmjliOmF8oecvjN+A27f3vDF5l+WHX5sD16b8rBzFq0ks/f0Dk/DFDscbXFDs7Fttn3t6neM6S1UNyN/QW5xgMdaGg/QQivHhknmu5Y5wB5VBpRWe0qrrM4+/pE2TcGMEDnMvWkPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753255194; c=relaxed/simple;
	bh=bxIBYs2tuy7BxYqt0Fd6d8QXmA9jcpkx6xTUY8mPLJI=;
	h=To:Subject:From:Message-Id:Date; b=N6Jyqyb8WnMrCTDHFnxEBV2MT5rtT2Z1EoxWna081OYKW4nRJKohQgt8o5IU4XRz1bDRNUK40wXRwfRNIweZcTb8NBQFLmENn/X79pj8kXlV2q1AHh8RcAMj6FQbKxroTKvUBbq3fJOmhXbHy/Pm/N+ZGWbHW7FAJfURbC3RUSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q53UbxP9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q53UbxP9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD4AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753255193;
	bh=bxIBYs2tuy7BxYqt0Fd6d8QXmA9jcpkx6xTUY8mPLJI=;
	h=To:Subject:From:Date:From;
	b=Q53UbxP94uif8z/nHbwFPo0G72pYHRDsPYdBK804abzOkfrB0IMI0PrZ5WrHtCk2P
	 4FdCfKdtxaClFzCzMfdgecgPonHxycypC/npniyOhqFEql73soSEljDCdPDMgSZyM0
	 DYXjZKNEXKaKhIHF11GhI5r00Ky4pOppEw6CTAj7N9yLIdlXylqgnsglZU6+B85S5K
	 jwRTJmGKZ/9DbomdrWMBnBKwAp/xVRGdML01wZlgn4WJtyo1m/9t97DGojRKSD2nRA
	 AimFr0sIIHpucH3tsvlQK0/eg19v8a8upoMwgcuhFSSBIMbWDIxuuuknKxu6CXeBnQ
	 Canh051tt4aaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCB1C83F25
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175325519358.8493.17638701534369690082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2427020b604800e256eeeefa0296806033a76fa3a2882e2c995e3d5425e210a
Date: Wed, 23 Jul 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753255193
