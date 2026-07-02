Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45DA8433E86
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 20:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783025914; cv=none; b=SeJ26Ua07EyXw/tTCYG0m9dpM5lchVQtXGs2hoir4Xe1DVWosVR8u/sXqjWzcmMrbq1ahv2e5FNypVQ4xXaBlif3JTEIjMufRB966uE0K8PrCU/twuLaQxD4YfoAxoyu1ewF226axjCjaHu1+FSCjhTaJCW3mTFlohl/wZrCe4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783025914; c=relaxed/simple;
	bh=DnvFGI5RajQ5ZRBCoB3XnCUvTwDdZeC3h9FermZUIM0=;
	h=To:Subject:From:Message-Id:Date; b=kv22USZvrGifnvjHseVsrUsYWb15hEzXvx28M9hTkyww8/h9vymHcu914RkZM6Q3FNcCgUtQE0Zt6yTAXakFJhW/pyVbMc9hg06IPq02rk36bu6qjmZaXtX/CJ4BAv9jFhFs6V/kDX8YAM7bhhk43j5C/BCH9hbAvvVntpLmCtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tz44/pE4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tz44/pE4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF44EC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 20:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783025913;
	bh=DnvFGI5RajQ5ZRBCoB3XnCUvTwDdZeC3h9FermZUIM0=;
	h=To:Subject:From:Date:From;
	b=tz44/pE4SxiRz7ZeXeD49MDX5Qwm3GBMSPCNKjMiml9e3P4BOPp6JK87M/yOkrDAh
	 kbCeVPDD5/D/i33hYAkgxtdHZXA6rg6YUrbcS918qYG11jwF3M6uMfVaIT3lSfl83V
	 HoqprA3KZ/icOzoBpAQXvyDeTKLgEq6svqesF3Lr/vaD7cwuuh+OFonOdmITDO431d
	 3/TAydeix+MG6yRFDNcDW3669sCL3DLm3QMsi5VZUxp1U2+H8Ap2nQVvFvKMpT2UfY
	 LR9B4swl2zzg5ZbwW3eWBkZsJ6BN1y7W9Ad3oePS2FStqbS4hxU1AvzqfxTGCV6R1Z
	 y7h9SVNtzKy5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BBBC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 20:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178302591368.19574.5217209748010943106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57ccd73b8ef2358df264918e3e581f741fc72f6d0ac3dea263e3a3a8495b89aa
Date: Thu, 02 Jul 2026 20:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783025913
