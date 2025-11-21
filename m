Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC7A207A3A
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 23:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763768514; cv=none; b=kXGzP668Q0jkyCI4fI07rKQl5N5KlxdRQ0R7icRZj+kpcq4A+r8Pa/ziRZsl0MBZoiUEke+7KwetTeESReoL/eawGJ8kL/Ves58k4wpcj5pEKFqKe1NNveAMtfbUNnY5TcPA14UZovoAO2RjQCbHDKS+7zjPx5uXLXlfcW33OwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763768514; c=relaxed/simple;
	bh=jN6ibL3MQVIi3dxnrsj4Z1la0iQPy2P4YGI0N2kiclo=;
	h=To:Subject:From:Message-Id:Date; b=JYNmKTA5yp7++g5Yu01rI1APpDoMltA3mES1dtlHefpE/pNgeMvH/sHUhwe/L9HPlkHChY9v9KpB8PcMdYIg8sGF1PQkfjDbVZBspr1WAH8axA+JAni9zr7gLtqrG1Co4dfkF8Ib7Y//z07T/cZEDxvVpOEKJ/bTlQWA+tyXur0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pajPWP3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pajPWP3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFACC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 23:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763768513;
	bh=jN6ibL3MQVIi3dxnrsj4Z1la0iQPy2P4YGI0N2kiclo=;
	h=To:Subject:From:Date:From;
	b=pajPWP3tYB7HKCgmkk0F8OdES1qvOGm/wyf5Hy3KGOSoLQVP/YfmGf407rStIxK2K
	 W9mAoRHKLZtlDrS139qATUeCTJKU7XS6HnT5Nr3rG1nKcbOniQIk4zLEnPtl7vlENf
	 TBU8jGPCg0JLJcB1iZ91IOEyr65aLB+NQPdvcc9hczpP7g93Zob4EAN+cEjq6BMWsZ
	 spcRSDnwmy8fQCvbMG2E/+16xEXxlVvStuI/bTU7gQOkbFaEpuupRSGoiDMIbYgH9Z
	 tzUfwGf1T+jIf2BoYeF3fzZVdVZeIJ1aFUFvtxE0Y2O3+3P7ByYTWBPjFe15V67fKi
	 viaJ2Bg17W6RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF97CFC512
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 23:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176376851361.21635.17503452767420806924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee76026fc15fcf4aa42e1378d887faa30ec5c09da45048f078b002b8fc2d3379
Date: Fri, 21 Nov 2025 23:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763768513
