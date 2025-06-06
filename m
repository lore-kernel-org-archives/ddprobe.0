Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F573596A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749194394; cv=none; b=GwafQWozqd6KmXTHCll6IpgYvHw3tlJhgWHy+xABkhYeQFusNl7v47q0Nf39cLCBT0PdBip4quDDZ4VF4wSzPG8T+hOnTgMYwlt2b9ori3V4s5lvunRR+NiWn+4IYghXH8ktUUKKtVK7XAoFVQxLxPRhXdljwwj0Si3DbbTfM68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749194394; c=relaxed/simple;
	bh=s6Ibd/8m54udD4PhAjhIM0FDBYzNDFfhJeSyapVEpTg=;
	h=To:Subject:From:Message-Id:Date; b=Bu2jDfrDsI7Xi+levQrSqk3ZdZ+VQIroYylnuUE7EpsssFFoDww4G4juYJN1AuTPqQU0+KlR1/FDoGHMgq2mz3NMWHQD52WeGx1mQJ3mBxxiuOJBH4ED8oKbGzpLhkzFjv+uaHcNih3kFqiI6pxIK15JMlWKUW0o5NY51hwMQaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rh9xGDa8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rh9xGDa8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39C5C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749194393;
	bh=s6Ibd/8m54udD4PhAjhIM0FDBYzNDFfhJeSyapVEpTg=;
	h=To:Subject:From:Date:From;
	b=rh9xGDa8C3Now/spjVG3TpdHsf7ERez8XEbyDrULj8YvHKUx9+uSlrVeP0/eM6z6o
	 lhECET7VywuJeyLxeWyOpqCJ1oHeB4a/yGPxYCx3iCu83UIs/N+lfmUtu7U164BMuS
	 iNiqP8i0raZMQvTxWNYWYwumVSxXjDa+QUbXBAmBv20d2ajadjq4/SRbd2Bk6gQQqJ
	 N+DZRnZjBuvg4wKXd3oiXUoJUOEsnIoXvsJKom/i7H0u1C6hwk1+76QdDncJ1S+nz/
	 +V2iPJRN4cGLg+6cWpEH1uVC5vd4uqPD7wWZYMbz3Xo2D9RhAcUEciILTE5k/sGNV3
	 q3/SX3PYIE4wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9128FC5B549
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174919439358.24063.8419410683108340282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aa35904b3184976d14167c6a2349b8810bf794aad94c42351ebc3db465e2eea
Date: Fri, 06 Jun 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749194393
