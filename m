Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DEB219FC
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 09:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772788494; cv=none; b=MAQacL+vGv49RYUmvgHwQ4Fw9apUZXiRK3+xEfNb9wUlVNN310KQkWCGXeFwxOIJYTxa9/5jHiXN8TiKahiZqgSOh2xCAZibVCfr7eY1CT4km/B22qr8nfoYOeIsU74M5uGvRPolx8evKr02tzKdNljykwC1coIcbOCQd1cCGpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772788494; c=relaxed/simple;
	bh=DzxH6UZPKf822k9AdvGzcX2wyF3W0UFS8i9xB3GooQM=;
	h=To:Subject:From:Message-Id:Date; b=MUWyUK5HLEIaA8ZFlHAPf7xx8XS99XrNRPP5Bf+O5H0J4HTirkIjXh3FNit4eyi5+SxHgG3lVDkCE8DqmmLD3mwGCGFsKFiJhvHPZE9n8fkVsyACGudnvCpn3LSrLS0K+7PJkcLxB5+Dsrg2cdkVmuZPSXgCDip0ZJMLmqyifTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AknvT9BR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AknvT9BR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B209AC19422
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772788493;
	bh=DzxH6UZPKf822k9AdvGzcX2wyF3W0UFS8i9xB3GooQM=;
	h=To:Subject:From:Date:From;
	b=AknvT9BRz0GwbzrTSP9ZWkbY6IkjKlYsylyqWUDPsJultiOQk3Ym/x4jnXdx72b1u
	 Bo9c0JM5VYrRFoGZbMlrk5F7H9YIjZH3nbOqAb92w1Q4qHjfqQ2gEPlVNeAidb6sC+
	 eqUGVeDCBuxA0fDwoRlR+cBS7BzpfDET3FOmbfO3FCUaDkd8wgB6Eai7EZIWifhUtN
	 JP1fnETXCkrMNpTTjBYHxiGO5NbxRyGcEryOJE0xyTieB0H6C9xHQv1XOPywNRSRAZ
	 le26gTR2uihE6FXzaLTtn5BvLqNqxA8mPqoYPe8pGoqapokHOAeAufJFKL655o+atH
	 u3kFikx+h/jLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F98DF01815
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177278849364.4953.5084402175550338253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98f242e59f72b466c622c3d00fa73fd1f24bafbfd269efbc46a1bd656b3344f4
Date: Fri, 06 Mar 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772788493
