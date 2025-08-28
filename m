Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395BF149C6F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756417794; cv=none; b=CKUxY5D6Q5XIUpF9FXd43q21MwSscDRShqBcot50P/I3DAGEJCE6e3TKChDU19iYgHdhsAaX6AqpSQOxErlqNTtfNUiGcks40/nqlHK+j0600Zzj6X5IqlW0Jp840TOUyBjLg6M+12V6SVCXKVLshaS/K6r7lenqWmRuzzm+zI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756417794; c=relaxed/simple;
	bh=8M9hO56RK6N2kotHVE6f2QGLtlY0PIL41/h8QHF3gEs=;
	h=To:Subject:From:Message-Id:Date; b=rNb01aOaUqp6PLiGFccYV6FQa+H2GJuZMBAyTr5iIJz+xl6K3REVlRMARk4bPb4ySiPGBDvcLOgH8S2VykLGmFyO6QGCEj35K+gjgNvVJPJW1JIlNmz8dvKALbyAxH2G4g6D6dIAx9fhU+uJB7Kx09K2S5zssK8CW7Jq79IL4xI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8gC18Y7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8gC18Y7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E0AC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756417793;
	bh=8M9hO56RK6N2kotHVE6f2QGLtlY0PIL41/h8QHF3gEs=;
	h=To:Subject:From:Date:From;
	b=B8gC18Y7yQn7GPG20MndVRtqlCfYhaokmop0ue/rrMTXTzMCWTuseVQoDEVy4E0hp
	 iLeHe5Y0fq0y2+KlTX1SSJtLv9+IeTfJdZUcbs8gDlm66T6hzj689JdOgpxDg+KOHw
	 5gqFdEiwPFaYMTlZ47H3s27PchObS5oKr95jQxCNVMzafuXfqYkQRMc/LabkpF99eq
	 o+C5kAPNVa1jcUmDR051r3abIaI+TP7OtxrEmZkcTC/679h7rI0XlYt6WDhv52bdv3
	 ZPlaTzd3zVOGaUVG2n3l5Zcc28/cgAv41Pjh17F2pizX6KRyapN8fUzJNnuHvwupMc
	 y+a3VZizxGBNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908E5CA0FF6
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175641779358.22168.15804783523297176468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a197bc31554b5f2606f3417ab751e2d5dc9fb78645dcae98056d34c996973ac
Date: Thu, 28 Aug 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756417793
