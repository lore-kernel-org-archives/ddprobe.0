Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAD4C72613
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760526593; cv=none; b=EYm34lqHvreAbDg+kXUg6kG2KLfOf66YgD93aPepDSTEA+2K8yUy3uojurahdfTA3/n46KC+XKkPfB576dA45/bme2kB7Nn476P491AicYfsHTQ9gDumBxPLawFuH2Uta9iYctjuXBk1Nta7CCHXrL7MqmnCyPt3BTV42m77UjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760526593; c=relaxed/simple;
	bh=L69p1r9JHJ650VMRy6OQ8I9ZR9Zh3PMDX0Nl/yGnXrI=;
	h=To:Subject:From:Message-Id:Date; b=ezqgJVzn9yv2wemfThe6aPSsV/D5CHKtj4RyD+pivN5/D2ottyKyWB3+pu5+XUmHQQCglkHcc0nXcM6QbHO+Y6lgxS48upl/vQbE6tPvx7kyVw+2AaATQYze+k6+NGzZ7/qCXogMF2cxzGGgJmDlUtKEnvqehloqre/CGHBXMxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cPo/aBON; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cPo/aBON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2EFC4CEFE
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760526593;
	bh=L69p1r9JHJ650VMRy6OQ8I9ZR9Zh3PMDX0Nl/yGnXrI=;
	h=To:Subject:From:Date:From;
	b=cPo/aBONubhPZ2pH+/KJXehWORpQZqEJuv2aJZ23m6SfcFg7G/txHP2KK2u7/b4Mz
	 7yeqZqNnQU4hN+swSMsM3NLMKKg5N4ZVQL+MlTt0LPP8z1Cuf2Z0wfxtXTd0qCqHsa
	 87Lh5m1pAprLTOmk+f0ryTW00k21vR+u9NK+6qFAFDogacn4BYhzY9V+7nd1VbEmjd
	 rXaTTNLHu8Hj6plqNpbl0560S9uIHW4rF/OEFoq8prEtHMt0pGSxvx4yl6OGn17yGy
	 JudpdTg3EjVMoy1ntWuAIO76hnxy6/aNi3cSt9NxdW+GBAL7YFJX/zrEyBxWR8sPvy
	 HBZQMhoLQ3Ukg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90645CCD193
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176052659358.13156.6630385864723653629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 350e672ba77579d2a1e3bf6b471345d703a1636ad550fadeb697cadaf2d79f59
Date: Wed, 15 Oct 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760526593
