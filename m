Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D26E1B5820
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727804754; cv=none; b=RrBct1ATNcRZTNCTSjkKi67Ibk/cREl1y1xXswYUsrOW8eRe2lwQaI383lITjcDxO+AiUbdiPSaBsMd+dUOLIX+YgnnFF/wfbXZUIqSJkaCybncPmfx1ZFUQT9ca3BKGZy7YbVApPC0CVFcxS260XPg3Y5UIHYx8zW1snVH4ArE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727804754; c=relaxed/simple;
	bh=C8sj3U7/8rccoQV1kRUWvCdKh8/PD0GKcJJ1vC7lkCg=;
	h=To:Subject:From:Message-Id:Date; b=KOcfLHiF/wriPIl5Vcgbu1Uyg0knktvdWtXMkmGdaU3vFe0WRlkgMphXwTLUWzFWskHGpnXAmyHiH7SgQC5IDf5jnCvJA7tAVstth3mh9P0CFgsaF1p0LQKAc4pXvDIhhfyHQepuKunZy8wLJmrE43LQBk7BuirIw/8AHyqlBSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xpta6a1H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xpta6a1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB2D0C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727804753;
	bh=C8sj3U7/8rccoQV1kRUWvCdKh8/PD0GKcJJ1vC7lkCg=;
	h=To:Subject:From:Date:From;
	b=Xpta6a1HV3I6H1lqT8je3aBsNCQrrkBCQd52rPHlFXj7mt+Wej2dUlqpafuRx1JCp
	 P2PaVu8p+7bSawIXdex9LuXZeZ8CyTOBhz0sgWy8QP6JSpxuivZ16Ybyla/CUtNAF+
	 BojosBm9iBZzrVltfxEfVJWDu2MBTGRD4tSuA75DfrNTjJVsvitFSiR7jOBoXAI1r6
	 Aj0+b+qxRsTRsDIc+mWWjZ2ThXEeH3ncd9qOfS/aTOi0jtyAb/OYuOUl30SAtZeO+O
	 ePZcv2w3izaRi74KlCwmSoIcSu411ZdF9zEjE1Ne5Pv62mkEJ12v1D9FvlWiuGiqhb
	 kKT1xjtPKgwAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5D81CEACF1
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172780475366.16822.8375252931920812256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19dc42b0b19f16ef114105c85893444ce9db24324237a866838c7e5c9035dcb4
Date: Tue, 01 Oct 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727804753
