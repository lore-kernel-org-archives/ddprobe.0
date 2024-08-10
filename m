Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1713CC8D1
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723330554; cv=none; b=EUpGLWlvGPhCY3NfR+cBiPh+ftYMoVCaa23NQWxeJx8nVN2fY/c2dCOdUMNjA9/1q1Qupp7YVA+fWFj0r9GLKunAi0JzeXtLtWSqEU/CdyaBCd3AVrsQm7oyqj5E9yqxsSEutN1dQQoBmjdOtL9Ot/rxQqGOTCbXBPm+56PrBME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723330554; c=relaxed/simple;
	bh=TvPuWXpyTfJdGWDbHm4Ge9nFViCahRRHpBnYW7RDdeY=;
	h=To:Subject:From:Message-Id:Date; b=KW/ou1IpPNxqzl08NBWkGO14/BETqNG6QT82IZYa2afds85+Nu3MDp7AYkucdmmvxwtMw+nDzsfkK4FdM/D9Btg4fCtNxa8RCEc2fEfpa7zHJlnLLZi14vl4kJ07MI1d5g1x8/pTsBUDjCm3wGay8L2iNRz4N1qBsX1MYTCGff0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=octG6JDG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="octG6JDG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0D4C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723330553;
	bh=TvPuWXpyTfJdGWDbHm4Ge9nFViCahRRHpBnYW7RDdeY=;
	h=To:Subject:From:Date:From;
	b=octG6JDGfh29KRosLA05uQg6FjWe7f7YKmdp8jZZJgDYG+NvyAtlliQPw6aYUS1Ym
	 hpGAalAQklhlWP43GoC2oNF2JdDXb/7IEMnbyWEqpfyTRg1YZNoZWqFpxpjd34dzRL
	 G3LE0e4H4LJPFrHDI5wpeag28WyyAE4wJ+nivUyc/n2VH9YMEDMIv9mOa6J5q4Byv0
	 LkeNHEMpksYrzlBaYWkBlaaeWeXiKjmZ9cE2BU69HaxUcubt9KLMVg3F3hENNnvlmA
	 i1vYE0hIuSuVWe1BcVCfpBuHNJy38OBorLCORlqvW9sYCx9l/4HUzk4BNoyPWQEky2
	 /xxz7cATL8+ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9897AC3DA7F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172333055360.30608.9056404366238308915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0130f9f39b15742270bdfdd88c27bd5c0295a82f18e067398350b2693367ac9e
Date: Sat, 10 Aug 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723330553
