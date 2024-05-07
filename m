Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C952AD5D
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 11:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715079743; cv=none; b=qcpElM0n2DvyiD9KqPfu8cOcS4Fil5ZM3lQmBwrVfK5Ota9dAlGFeeJChzwv/17+euRxDydRGXgH8C+wcoAoxORxRZrnHjOlDiyEpGPfD2ATWWbsnJwoag8ONvqYD2XtO8NO1TGIwmDUSPs3X2yvVMnO1C6LROqsrr7NkG5bJvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715079743; c=relaxed/simple;
	bh=ANSm2DjWeRMEAaIuQB+QJWSjlbK0YfriMa/oVdlS09k=;
	h=To:Subject:From:Message-Id:Date; b=K7mypXByF37AxyS2gXJia7VDcjOwMA5ciYPs/fTkvNyt7hJK81xPMaH+NSezS2NUFc3toCTgE/5wd3w71HAFMj6F3TVLgYOqdPsNXtWo0goNW2l7oYtJnrVKmjxoSh0ZvEOBMlOvvN3Ln7xZycOOgOkGA82J8gggl3h4uOvVOEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3YmiBw8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3YmiBw8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6863C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 11:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715079742;
	bh=ANSm2DjWeRMEAaIuQB+QJWSjlbK0YfriMa/oVdlS09k=;
	h=To:Subject:From:Date:From;
	b=B3YmiBw8rqOKuekXUqF/zXFS8QqSg0q36GhkxFmSZpvgxxVZtu18MtMkX75U/P7RV
	 EjHmgIDSGT3OJaZWKKMcnI/9yzrOQCwD50VzqUv6Fk5QTCV0vMixUWXV/mIU7ADiQS
	 LraVi+J/8pq3EuJlR57oHR0i4lzpBxt8Fy2u0sNoG98zCXkNHSebsRFkm1wE3gmcgG
	 UO6RmD3jl2vyOKvi1fdy64QWtH8XkfCORshZQUdObpCZjIem96O7iyymKLnFBI5zSB
	 xvRCEoCKqod3jx23SRfCCVkQRdEOFn7bVScauimduk1OKV3tUvKcLMj52le1H116cB
	 Q1LZyP6tz6cjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2432C10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 11:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171507974276.10077.17559856763893078509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89a8a131d70a5bff6af090f46390c9dd748b01c162b3e7721db8818eadaef6c9
Date: Tue, 07 May 2024 11:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715079742
