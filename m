Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DCD2D052
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750984194; cv=none; b=KMXkhWlZNieCVZw0leUYKENpoFKedXphhGMPxBGbR7W9H+3Wen5ZYYyHWsGItE1RzAAaJTuwsyXirDhDTi8x1t+gvcl9ibazlBZvpf8Jkollu8lDGl+T4f4Kgb51RSBPNWiT6cqT3Ur2xmt/Dm6215dxUrHc82sJaX6EzEmpapQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750984194; c=relaxed/simple;
	bh=Z2Bf66OaT7tUjBDpWAjMNk8KunTdmu4oJVvU1wuW63Q=;
	h=To:Subject:From:Message-Id:Date; b=UGeohw4OMQH+9UGX/krKSqjgsnrfTE+AOwvYIjKAMrDHceEJWdHHQscirKblapy/CviRuIT9YMV/A3bUnL6jm/LdHYPTf6qYmb3w2iPGMFiMfYzFJSICEgTN2krCjsTp3hY+iGp0WT8mmibr5TpoNEHF3Bf+yo4rtLNfcfoeweU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bunq2MYo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bunq2MYo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97A0C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750984193;
	bh=Z2Bf66OaT7tUjBDpWAjMNk8KunTdmu4oJVvU1wuW63Q=;
	h=To:Subject:From:Date:From;
	b=bunq2MYowCvj4gtlmnkJwVclPN4SOJSspHVJI4+LSFEedbY1ZFOMztbQT8qh0OAS4
	 96SbIMKoGQb/9P3rEZ8vV3LLdgOs66+pPbM8vgPOZrTTdxXrrGVII0Yvwt/wtxsuS0
	 TdB3+2tTN/KjdBLyljeJCkf+x1lkr/vEg8dMaCZhPcId9j3tV9aXxrVqe5gh3ULe73
	 QhQrh6/9t9GxXGwxr3UcYzjrCSZIM3DYeNifxAD33c3jK33kuT/jpw2rZxNzGAuJbU
	 mXcxZiTnKyTC/Ycujw1ZDbuTA/vDdcZXsvILa4aKwaYcEBs/ZBt9cQc1enPNgeMors
	 UjDlk8raVozYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97796C7EE30
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175098419360.28505.6186955688424326045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48ddaabdbcb275b60118ee25e9352d7116b764de02b3140e5138dc95eab54fd4
Date: Fri, 27 Jun 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750984193
