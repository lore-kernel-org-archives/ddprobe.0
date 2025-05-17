Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46288224F6
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747459794; cv=none; b=K5uFii+DApxxiMGi2eJd3KO4L2sSRnMJF77xbChac2PGrYf3TjBZZTxErWLMJ6Jn2ppKN8MJQ7i52wa+eX678Iv0XSE7W9mg3IVEDktrb+udxPVi857HxRKsn9DIGLuQmInbcjRlFlw/VNDXqL+ke/IKcgJZDpHxU3EK95233o4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747459794; c=relaxed/simple;
	bh=unAFXA3o7qOu1IfXz0vAY0cCg/IboZHJyiBJ2t0NuYk=;
	h=To:Subject:From:Message-Id:Date; b=jwEzxxEZ1JSZUUVT4AR4KGuE+ybWRZuj6uRu0hkJNqFZAahjMAdunKArNnVHsb0owkG96ACyTG14EljNAEx7t8jL7+djnefqCLr57iFFkHul472xV2pOaMfqkPb3lWchLwd8rpYyooRmmXNqDO8zOb/Lu39GtXVMishciy+HaD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kRYINNia; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRYINNia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3455C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747459793;
	bh=unAFXA3o7qOu1IfXz0vAY0cCg/IboZHJyiBJ2t0NuYk=;
	h=To:Subject:From:Date:From;
	b=kRYINNia00UBdN+XQxnb0mZXhEPbZyaXoml7abwSNxxsSujRy3Liiz3DrQGGiHqh7
	 cvf0cHJCbwMfCnBNjW/GkAq0jS0HyOgWPbJOzFY+dmkSXkFSd5RQEb8XIwmGZNRTWe
	 CCoGuh+qNE07MaPZZq5EuIiurdUWYZCg5+TUc1PXw1FzC4gs3wA/kFcRBqlmuxcpyS
	 jyqRM6Diw2M0Luljc3dnPSE/Uz7rRGewcxY0cCtfbRPZ9DJlqbt2BAv4A1kKuE0nDj
	 Zh77sP5KVibrsUy8pMcyushBuAVSqfvhio4goIoL2zhchJYc0PtA8oNGIpBh5if1J8
	 FO6PBxj5xY8Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D163C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174745979362.5723.17127955494790899736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f60af6592364c659b886046864710d1be31d16794cc06570652ef788a4066ebd
Date: Sat, 17 May 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747459793
