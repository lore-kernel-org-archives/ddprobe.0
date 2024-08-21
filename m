Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DAB2139597
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724259354; cv=none; b=e6FrO/pUAx4C1nBTxn9IPzcmjGRzqrBRTAJQYumcQnI2uKW82NVbAI+1i7WLexnea6nodvWZJMOhQeqvDfZ4ypfVLfmVwmlDJymNxkHr40miAVUGSZ80llyIqZA1apFj2bG/gPXIMARulw0YeR3mloBD09Yq28/YoUFehjB+808=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724259354; c=relaxed/simple;
	bh=YhIa8PfE37voZYkUhPljBC44/lgFofMKh57WfpZOnrg=;
	h=To:Subject:From:Message-Id:Date; b=Oy7JVk3pbx/qy0FpAK46RKSpQ25sFzAme32anPKPTc8Tw9PuOhqmSzGK/LHltc8rg6R/SGTy81UPzAzOUoeNs1cOkNi9mWDf5q066soVGobp+LmGw4zD8g4EOLCWgW6KYGfXaIj440xr5N3dOWEQ3fpNSNHo0MsB6pewmT2COUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uEmV3bG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uEmV3bG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7601C32781
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724259353;
	bh=YhIa8PfE37voZYkUhPljBC44/lgFofMKh57WfpZOnrg=;
	h=To:Subject:From:Date:From;
	b=uEmV3bG6sCaP6jyW0fIg5Eaw5AIEkxd03i9xYEMoSMUhJmT2GWWX6WYCxshZ9hD/W
	 2JgGuJHDBhbc6VRwBPpNY/xE+ZJ15UhDcuVPQ7fXy9swxb+SKYNsH1gQvyugDMebL1
	 m0GFraqNCwY0fudEg3AVF4aACDhTLnd8XY1aNGxgGvC6ARvalzveNIU4HMqiCEZoqZ
	 viaJ3BqJRedxOg1TPeBBMn3P4QKEUX9Np8zwSEz2jkR03jbmDtxfxtCG1XcjwI3Po+
	 9Qvu5wmKPzBGU7Z0ZsbRwf1bltlPXULPV2pIyT8Oh4NnocMCuvvrYvqURoeSk7GfxK
	 ib/GgIXvk0xLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B96C52D6F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172425935360.28962.4872872986463137953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20d8c39be53cbdcd2acdeb1e425d6c2f57f12ea5438c02e70d086b8e4d4617f8
Date: Wed, 21 Aug 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724259353
