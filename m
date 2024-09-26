Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2A62C18C
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727313354; cv=none; b=X4lvVT4AvpMmh6AaS8aN4ch09WiA5inDgke6ZMhubT/UhOM6hDS+ssg8pNHZS6nTMQXGjHYDB694mGgfcOV2vqEbIrCuHRcEpFCjXXU57520d34uJmr6JXxS0eQ9kX0kMYS4ki2EMauO07bzH/GidqbTugxC4oYi3GR6f4r7FDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727313354; c=relaxed/simple;
	bh=kgORCoNX2qQG6xIJvYN+1IPPUBeKT5mwS8DrH4g10pc=;
	h=To:Subject:From:Message-Id:Date; b=Vx7vc8uNHw8YL/7yZz8KVrDnRUXh7CUNzCT5i3ZjMdCWVp23fgyzIohFYJWHngRYeUJtKSV95TJ5nJRmvHz45uNuuUwR1z2YUDmdqw94qvmXgwdZDKP9p1Hcq5a+dMsgKuZ1TO/ksmmU2bHbLTCoCOOINwvP2WGnqlO0Oo3l2lQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zo6tIN6G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zo6tIN6G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A259CC4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727313353;
	bh=kgORCoNX2qQG6xIJvYN+1IPPUBeKT5mwS8DrH4g10pc=;
	h=To:Subject:From:Date:From;
	b=Zo6tIN6GmL49+IFrqTCJFsmXzvHhlsNeeCU9vOYgPDo+2GXNXGV78wpZlRrjNMjGx
	 Vgf7ILnJH3IPdbnZGZVxfrevLlwWluXN1zp/pXv7RC3cxro5ThnH3QJG/dPiSYh7PS
	 uUa/eXQPCT819K6X0TuVvlG46sRi1JT/b2s0Bz+G9+7ni0c89utbHDit0qEn3hWn9e
	 DBOgJYQ+MCXdq2Ftz+GngbciwYQojx0dChDxZDdpmaXTDhJWVB2E3Wk4YPbhMvIPAA
	 yanbldFLoLzfpIcmVDVIxtSFWqK3OEu4/Kp+385uG5H5gfW9dw6QIWpQLYNcEm+iaY
	 6IIm4YcV8H/KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920C5CCFA10
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172731335358.25045.12281605103978831385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 684f98bb3537ec73c2c24fda75064e10532ac3de662c2faa7c0b65483ccb08ca
Date: Thu, 26 Sep 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727313353
