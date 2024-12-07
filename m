Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BF461FDF
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733564754; cv=none; b=WHC+aQ/StV0ZNi4CY6tZYofRC92aO7ehGXm35Gn2/R8lSEHXwSZhybgAeykO+Tk0Iq5dUcugn2E2aTWJTl1JWmnl0nlKCtIZAPkpFzW83H1JEpPdNRY9qLkoT7PdAPLhd/BMWWZs2HcdkPLsBYU7HLg1/OpXmG0RQvqsrwuC3GE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733564754; c=relaxed/simple;
	bh=M2lfpOqjnVwze3kf+YjDFr21fmr/Bf41/Yc1RgGcwM4=;
	h=To:Subject:From:Message-Id:Date; b=ZV1DUQqMaWkgVJlDE1AaCA/3o2YcUlspszI/8bThA2/hmxUUwa7h33P5f5eLKInJAUNssdi/I7nmEWxx75/4jE8eLWkpPbul7ia5z3yREXRxu89YvwmGlVQmDPDseGUQ1QAY+8Cq+VxHM3UhwC2FPGk6OP8pi8+sk5z8UnGKqmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SlXweTK4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SlXweTK4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6FDC4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733564753;
	bh=M2lfpOqjnVwze3kf+YjDFr21fmr/Bf41/Yc1RgGcwM4=;
	h=To:Subject:From:Date:From;
	b=SlXweTK4N5Dxl/UVQDQNH/R8P4MMVl+WhXKDCmSG1xgXkHP9CbPKY6CeGpSHVzE3E
	 /jCMCJAYtlafKpvDg0F57Ggafh7lQ0QQEnr10rmzRqVUePbWKz8St/5Lc0NqYnL1Bx
	 zKteoiEThEipoZ5DFaIjc2PxTipM+qGvs5kxF1lZ/g7h2fhR7cYgLE38bkq9QrwnsU
	 86N+T2MMzWrQqNgH9bjqW4I1J+3EYNbS3ODax662P8NdQ2agD/uraV0SQUwYS/uLIu
	 Obra5M+xFxZB4cWnTeAqUgQQRIUsT7jGoYBnNboy25chtlNmaZDjzWTJvUutTkGxuq
	 OwZsJTB+sHw7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E94E7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173356475358.19233.9117415023745030145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4294fdfb8e8627f1bae5c848a2a0f3293b2178da067507df463f764564d8ef0
Date: Sat, 07 Dec 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733564753
