Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7DB4CDA12
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792408234; cv=none; b=WoIz/m01MvX6MCRU8UOgMW1Hu2YCVnkQGlJMeXml+xXNzIDYzg9oNB776uJ5COG3G9Y9t40G6zYlOoR5f3f9NYWsjpgibxaOd6OY3yyAwm4B0O24PWHK7KXGzK8SsEKOSEnmiNegrNPudv+aheA4PBaupElgOqjy1yxIKNQyFNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792408234; c=relaxed/simple;
	bh=Z9qQWZoTK+ScFB80UV2vPNOTqhxY9me80B2r6WefuAo=;
	h=To:Subject:From:Message-Id:Date; b=pyCJ19/dUpmXoQ/dJgRYaT6WbSPYgnzLBpvjX/wBhTL7VXFtNDdYHzot+X2t6CLA4BA4WMz9fAU1UEfxRsyxBB42Q6FGTssK9gcACxaNkAVo/0bZcqTuyRoS21NhYjSlm919IFBaOf/XylyhsxuWt9GR60SOgq6z5vOQRY0mOMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKy3L053; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKy3L053"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E21F9C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792408233;
	bh=Z9qQWZoTK+ScFB80UV2vPNOTqhxY9me80B2r6WefuAo=;
	h=To:Subject:From:Date:From;
	b=jKy3L053vzOnSbZdYt48eM2jbQQr1HCcakIvXsyqifoCzjohRY8ZClTsRR0uYzOcF
	 Rzv9gLPMXRB3HY6d1hSJCoxqWE3wXt1RTBr+0DH1Ld5KFLlAa7jQCN5JiZp19WexB4
	 IuUsFUyZNbSw/J9fl+RhbxPCFmEEcQ5gMTVeOEtiQKclqGQPC8XtGrAIeT1LXf4ZsY
	 j1+KBkSinkUbuZEetpg4TWcCf+Z9CI1TR64bq2Nu01fXy0CojCwyHsasALphLIL+nO
	 co2KbW5+AVtdK00xmue9A2Q0Nm89z6j9ziDiNtx1+O4KEV3MbyyNhJu9v1CiyVSScH
	 9M4RdODTlVmLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B910ECCF2D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179240823374.2367.3044698982221336129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d416169a0cb36a8a735ebaa172da7027974fcd51f8e306b0e8f92d2680e4a3c7
Date: Mon, 19 Oct 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792408233
