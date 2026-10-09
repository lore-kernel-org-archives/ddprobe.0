Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E944DD3D7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791562234; cv=none; b=oBpA6rs2+NqNlogpfewJ4kP+GosFViKfJkaX1PCi6B2uklAGN0U3itdQDe68pUWBMafkC6l2yDPJuQEwo0adMfPzxJCFi2q0UgSqToEIxfSt34kJw63vfXas2p74gVJORan14wNPxaRRhA33FhUr4ucvNcdQVfvSdm+jGdaZb+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791562234; c=relaxed/simple;
	bh=6R0lLR2kGU7LrRccY77biCwoaYelzSjtFCSn04wGJf8=;
	h=To:Subject:From:Message-Id:Date; b=KRV3zzG0qfw1WQfUsnNCgmRaGjP4/cifSJKFX9eJv+CZa/EbJpnZqhAMxl/Q2sbdnwuRR28ffjESWpBH3Dh53rB3iGu6XfKwLn+aUvzuNQIkoVEvPpXRoE+kJUVcPRg4vJJCU7by63tJnIMegBZ+CbgV5yecV4iFpvymdVy1Oi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4MKMEaF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P4MKMEaF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC016C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791562233;
	bh=6R0lLR2kGU7LrRccY77biCwoaYelzSjtFCSn04wGJf8=;
	h=To:Subject:From:Date:From;
	b=P4MKMEaF7F2rAYMothLweDX6dN50+O0xjzRUt+2S2Z3/VuFPE+aR0lKujpDjBcXV/
	 GF3u6EF5oUKz5zHVmecz3ieQn45q3jFkA1idek6nVspGfr1soBcLpT+9DKSUgp4WEt
	 gqFsiJ/Fx29SSNXnhTfj6aCWVqoCi9L6IVtxGBvehoF/0qdAeN8MC3hbYShJElac1j
	 SLwr8EuZS7pJw9CEOmu9/r7wp8PGb66v1/VxNEWxtAtc/w0VAcm+DEwGea0AVQ7nml
	 NTzkI0D6dInWdgI65qCYwrL9CfM3zeRgRd90j7EEcZZPM9BKH3LxXfN9n+xAJEX7uj
	 hnSeoX6TqWUcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4578CA6019
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179156223370.8127.3058737972682182690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1dad29126ab622f6b0da44e24436e3818f1f515dce5c526aa7c02e172723ff3
Date: Fri, 09 Oct 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791562233
