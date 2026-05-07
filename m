Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FA83382DC
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 09:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778146654; cv=none; b=c7A3roU0m4Kid8hF8YHsxGshq6kQ3rOkOOoWN2eQM7Gvuo+ioN1UjUtKE+MlkGA+xN6udl6QLyTBCSGkio6JXK+nB/nhvHTwfEfjhVQ6JhAIgtjE6m4s0Aqsj8RkGy45FRuPDy3rPwaP3mRKUCNI2vgy0b9qH0LjhvNmyZ3zOh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778146654; c=relaxed/simple;
	bh=6NfwSfVWqemQ9jzNCHcPPdpHimr9ACM21ISk9LS2Wjg=;
	h=To:Subject:From:Message-Id:Date; b=uf6nvnNnx/W5+cp5aGM3s3qqjb1/K4UTNgc6Mwv6Nl3kjgaedbIM1zZ3WNLdRMexrf99nE+yxNkcI/AVlKUQ78r1L/Br8cuyEA4BuerhtyPlyId+OWwg7HDEvRdvqvys63sSseJPqZdOzeXf7sdu5vLrxvLI97/ySC2Q+dFJWPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vEzvEcVK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vEzvEcVK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEFADC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778146653;
	bh=6NfwSfVWqemQ9jzNCHcPPdpHimr9ACM21ISk9LS2Wjg=;
	h=To:Subject:From:Date:From;
	b=vEzvEcVKCPP8ciHeYffS67reyep6rpUO14YB8RfdEd0N+C8IvRhneAf/iZfTePpiH
	 II1wVvEFEnBK7wnume/TQ9llDZej7bfKN7G/F0vFo9z7VQ4uLak9ENs9ESaysXcrPi
	 er1ol+wU+T9dJlBZQjpcaC8U6etLVtHx4CUOtPecTgbF0f2mNUPK4AcQBonyRZIbYf
	 oLTcM9kyzdDcCfDCt1Lar4etF1BfEtFrSAOsr7ob8Go/Sz/hM3jaw/LqHNyShDVG76
	 pp8BDamURHx0ZAqw64gBHq+LbRs87g42c8FvHESOQd745H56yVwD3DJWVX5PNl0+8X
	 l8/BI996xydwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB255CD3445
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 09:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177814665369.23426.11136355463297151825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0208aeabfa2e43e94287ecc811b69df3b8bf02bde1b8be6ce1bea00f30530b92
Date: Thu, 07 May 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778146653
