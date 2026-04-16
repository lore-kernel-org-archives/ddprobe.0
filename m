Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269EC19A2A3
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776320254; cv=none; b=AN9eXfwmngdOOPhcn9RpaKgUCy6dEPqvmg1wmpBQDxEKRfnpPvUq2FWFgGYkSaFtgjRMyYy9yZ5vWD0h6FDUgUxK5qLfBjeaU1sHXc4p8aUGpRhr7zA2l50elZVes+CaKuMmg7YKa/pgppX7bGS9Tyk5EwSmLPy3f2t2Lf/NB6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776320254; c=relaxed/simple;
	bh=Zdeaj1TTbwa7kPIG8mWFogTm17qOPvsr4R4pU4j6PiE=;
	h=To:Subject:From:Message-Id:Date; b=DJ2lHgJsW3KYq6nciR02myFLwiLNph61AVWS+joe476zSKP9PfCHNF6Kyizc4vWoLKVGfJVOKon1AvpmZ7VM+f/2ngXvcuYCNSnQo16O7VwFI/ajEvVKM6+EDup/eazleU2/B0cDIdQCUC2q8xWPyKzOOXoSv7HhN9eJyl5sBYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lnawfVU0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lnawfVU0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7B56C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776320253;
	bh=Zdeaj1TTbwa7kPIG8mWFogTm17qOPvsr4R4pU4j6PiE=;
	h=To:Subject:From:Date:From;
	b=lnawfVU0u45khJwQqCwuLTi/6QTGGEi+pc0jBnmDYs7FZHSjO21I78VIAu1AE0qcD
	 o+eaWfVpyCriQOjC6YoNQ7e5LP69uDi5j2+weaoM/jPUlGZyf6TPrwi6UCdyctC5Vl
	 R8bVJJFhYQpNYebrroUl9r8NsVY578DjIBrh+EKix2iiFu3nXFMAvljRnZM9DYGnbl
	 jefTMIiQvFeB/itKKdlwD4s5Wh0i5LyNVG3nn8BI+nMBcaUUSf//zN2Cw3vM32tVii
	 O/rxHvsdOm5v9b0+zLdXqn/DVL0qmNhxFKLSY4G0KazAf+pVilIPceGghNhlqG703m
	 lB24YQHjEi8rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A970FF433FE
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177632025368.24018.5254600331086461630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49e72626c33fa2245fd31d7495d429cb24bf4b7a331da64e07579e0209fde7db
Date: Thu, 16 Apr 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776320253
