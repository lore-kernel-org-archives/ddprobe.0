Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347313644A3
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 07:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781163394; cv=none; b=XNrrChoHSAiXKbIDcnfntKIO4Bc4g2LAFA/rohhz6sLdeVc+EIo0Un//g3Kyub74rS6D8V1CegDPAg1ZSymOwQM0VnkSLl6+nZAs0N1W0+qfthjzGp3PxAty59jMeIU1DNE3L4yzjm8UOXF6naqQ38YXbcIasTPUUhphxSdOS9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781163394; c=relaxed/simple;
	bh=kMPdlXrf4nT/wblUp1D8m3E5ngPv+HAHgENqC74/IYU=;
	h=To:Subject:From:Message-Id:Date; b=eLNJ1Anfs7SqWjqoFnezF37ujwNQ0r1zvv55mR/tX0SRERYyWhOvS70iTzqA0BHG/8mwjhYWN7Qo/LWjKZF2Gz9ZSPesoIry7UG2g1IwDaVWHyRPdrgAUR5DNTGEC19CCunBW8+kjqR9v6nnswGifR+fsYNmACRPU4tqeuWrpMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtHUjxIN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtHUjxIN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4C0C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 07:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781163393;
	bh=kMPdlXrf4nT/wblUp1D8m3E5ngPv+HAHgENqC74/IYU=;
	h=To:Subject:From:Date:From;
	b=jtHUjxIN83z42vCwuB8ppHzDlGnt+QcpBykAolFsPc6ECR7qcBKH4BvB/k7XvceKZ
	 Mzwc9/KI5FyYnhhYeiZkgtWR2Ll2jo3IlIr/bR6AsYDR1Tn2PnRPWCHLRtay7zZEQk
	 2UYAp7Vwc/eGxmleRliOGW2FWU2RN6bWg8RpNOKKkWIAJZIcCRUlyM7JJ3t6m1nyTE
	 i4xg7ke2uh2t0ynfIFbnE6XvkUlLe2fml1r/zlRtppjNc/8TOET8h4L5CMoiauuFtD
	 dvypXbU/kEYEoDtlZfRz+yhWBQGaMBnSfgoIGTSG85kD8UC3kHxUe4bvGTTaRehXJG
	 FL6p4C5gLYogg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF074CD98CC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 07:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178116339370.4197.12643169743883096694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af8a97bac88be18096c485d68613c0403295f9a161356d25fd4e42df68c36699
Date: Thu, 11 Jun 2026 07:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781163393
