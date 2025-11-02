Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D180A48
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762089594; cv=none; b=qXjl09Y37PlSrmX7e0UEU1Lqrx9gjNC75M5EtUPhp3Bg/oO/Irnr4IRy9SYcmrfSmHnRVLBSL7UmGOSwtKJocF+2UrMpqgbAjxo6rpBvuxlAU45QTBa0H+6o85my0gn3LYaY9WFvMZ/XEx8JGra06hmrmBeMcmNrOM+riCF3xU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762089594; c=relaxed/simple;
	bh=Qbw/26F77FLM+rlrVKL6KkSNwjFk2KxCT0lrB681pXw=;
	h=To:Subject:From:Message-Id:Date; b=BeqsQOH+Ft16sRKNrz5Hr61FaoXeprhLQEr2qgtmn0V/hKglP7ZwCcV1MpANDJZuO5B2qWbN8Z1AvIBtJkDm5+9vSoSSLSGfS4lsFGfHbB6ps8rBGrK4hTjltBdad/w7GrtOjG2tcJR+5xcRMUFtE7VQT74ByOxgjWT+2kvm6vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcc4/nai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcc4/nai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CADC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762089593;
	bh=Qbw/26F77FLM+rlrVKL6KkSNwjFk2KxCT0lrB681pXw=;
	h=To:Subject:From:Date:From;
	b=bcc4/naitspOrx4nCkkQ7hi614OOhuWVbSx/zYWhqJ3eqQf6QOGLikGN9REge5dQy
	 ibbSz+cPwwLJmKx3dtu7sJWJ+cVlsXVaogh3+tBilfSBSNrUDL3BwLIWARrAhrMZRJ
	 3jVtU/gI7cSHDvyloBu2oizFXyeVgDkvzS3eA4wHya3pcK3lkDYmRIAOpl8u1gD9Gc
	 1tJGPjqr/Q3hW3x0m7gNg2WjfB7Pm3AIyXjhFCT1+d9+jB2K6qfWlnIGyYq6kvbWOp
	 sipQoRURQk2A5EPWyqCJmFD5TkbUzga6MWxnh8OAbXmc0DRC5JD3Pago6dnY4eJIxF
	 7vSoybYBASL3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976FFCCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176208959358.30764.7389776951240638608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b94150966e931718766d5f5f877ed8f892a7b19745abd417bfc9fdddc3967cb9
Date: Sun, 02 Nov 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762089593
