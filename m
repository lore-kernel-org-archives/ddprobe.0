Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372562F3B
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 02:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740106735; cv=none; b=PC2WsYFpdm/dVjqWJbuzyzxTXqyFmkJHmd3ZEetz2cAexLEGvNnEzNqx/rCCpLOjRjI/KkpKm52uSLvDjtTNRTdFhKqLt3w9+FphjoOCcMe1Et2D9rPK9iWY+XOt2P3VgJu9y/ob9nV1d+z34lMiXssJDh1utXdlvKgV0iDqZOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740106735; c=relaxed/simple;
	bh=7abjGD7fxWxtyqxaimR7xtzOIRZjg1tTYKZNLPAA0vw=;
	h=To:Subject:From:Message-Id:Date; b=HvjjHyT/Nu3bsoIcPYPxiiUi7vI0IzGt/rsYNu3V/7WVbJqLYUVsJCA7zo3Sh0q4t2d1I/6CH1/tZykNnsozJEVE3zhaDYQpDIPvfa9uQYU9fnzW4ypG7nJdPFN0IzMLPmtwFgU7dx6voAt7XFaI0LC7d8Otoc8rTNeseqxXkxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sWA0aC5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sWA0aC5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F89C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 02:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740106733;
	bh=7abjGD7fxWxtyqxaimR7xtzOIRZjg1tTYKZNLPAA0vw=;
	h=To:Subject:From:Date:From;
	b=sWA0aC5ieRM8LUjtp64SjIKkimi1n2o8fC6vNPGRuVmjcE9FKYX8nCbaDbytCXovA
	 V1iNaf8mJrO8Nq+XuxN0jDRRxKEGmbF4hdURxl/qcH0YjePmID5KGDWGdKty0lQaLi
	 1cbugaKCWbUcNFXPsfL1VvMZI0qpTG6YJYcrSBwM9erHwHnPkh3CChmwoM63cm+g2O
	 WOzaW7e5L/MoPpVSqhf02E0ucbq156NnoqT5htbf2rZ4hN85DjzmI9G6A33dFGB37v
	 5W6q1B23cvVgPHTa/q6sB3xTLTf5SgLxHZhDK/Xp6qWfy8VAV8RnCx2BzEFOPHYjQV
	 JmIz2sLx3tEPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92954C021B2
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 02:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174010673359.9473.4852520018253007461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2533ff5eace85ba90f8bdc4c2206f01b95c723f4e20c6a18d60ff471a22d530f
Date: Fri, 21 Feb 2025 02:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740106733
