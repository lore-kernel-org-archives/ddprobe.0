Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC08286A6
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 15:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715526743; cv=none; b=gCiaZLfK1gyaVee5PE9rHZM959ceBr3n3VO6C3JmoeGpjnvW8swaIOoGrFS0m++fHBC/okAHs61MQsp64M8Uue2bK3uQrPKL6svqS0pjWtXHC8gbXzHk4qrd38m/SiCMxdfFLeB2h7tGUITptCeTAVg8W9QBvcdpKKySLSvC/0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715526743; c=relaxed/simple;
	bh=pAeRxL4/N5dYgd11OE5enSlKMUCjhOASZNeyGyyiru4=;
	h=To:Subject:From:Message-Id:Date; b=lqISdqKE+ZOaUfmQ5sPVOcDSw8Bpr5E53RupTpst+mrydyJY437GHf/LnCDqMqpAgSF3CS0u8qe0WrN2Kh+K1+8oOWs4mn1ga52dZBcekXkDtYP1A1vAxUTaffhKX4CMBKJvwaRQNMG2pTYg5i4ArfSiGs0n1LgaqUuwdregStg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIQuEKmI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIQuEKmI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD604C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 15:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715526742;
	bh=pAeRxL4/N5dYgd11OE5enSlKMUCjhOASZNeyGyyiru4=;
	h=To:Subject:From:Date:From;
	b=XIQuEKmIlHrWTPXUku+1QmeWhTRANu7mxItWNs0IppWgLGHNDElGOmVSPIfdxGgAT
	 xlDkWIrFErOnoTy9omh1yFEqRkTqpSr0pQw5Gyv+dQjL10fEfx2m+R6Zw3jcQ7TbMm
	 rzYi80FtncN9o2Vtvy1GYb0jfYpO05qT99fIf299zCtR/exsc/Qj702ZxC9IFqzJEM
	 zsatNWDZD4rNLkSnq6bhle3SNcjAoQpRAcMe+2FfrceSKxpJZ8VQb1eZTwLH5mtxI+
	 uM6QsG3UZt+rycy96WI+1SMhaGWh3hYPHsaD1W0xSR8mW++ayn2bUTxCvjB3kkoJ3G
	 TZlLPC4haySzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9D53C10F1A
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 15:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171552674278.4717.11931346558112699154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04bae424fa6e9c2e484723d472f3dadf64e9b49f6e2c668e62139e4080293b41
Date: Sun, 12 May 2024 15:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715526742
