Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F373D9023
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787688634; cv=none; b=Ad3eiV1FE09QMwH4n6+eXuw5gXBsnESyxJUTaVhwykMVmi5Kxl9P+ZV9LPdhVUj7dEQxzJYfsspboP0zVHoS7t1uOrZFP8Z9GSyPu0LXbCVvXqcgf23UPMYShU+ZY/3wW6uKwvuw/LM16qEVspttei88CGZ4Ue29mcCUO1mJglY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787688634; c=relaxed/simple;
	bh=3pFXGl/Uesz+AxFxtr7L2Tcd6bgnhRtpnziRUJ5bxQM=;
	h=To:Subject:From:Message-Id:Date; b=gYPoAIpOu/WLzDiA/m8Uj1/jSWU4P23n7n+KzGx5JpRMtMoVjcP4j4UudRPIrFiZRUs9Qav7CVPfGGn7ZBZPsXpIcQPKdAdprjzp2lY4MIguqdaqDsLrQYJyWvxeyHUDZSuC5MLH0lm1htVXBuuM6sm199HYEZlKvCm/XwXZLbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hk19YboM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hk19YboM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08BEC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787688633;
	bh=3pFXGl/Uesz+AxFxtr7L2Tcd6bgnhRtpnziRUJ5bxQM=;
	h=To:Subject:From:Date:From;
	b=Hk19YboMzs33zCeelG7fqekXrqhUNd+2kSROmEpHW7FozZ+7e0SDvSzVu3KghrfBV
	 bQ6Zlwtw3pyzNwq/h8oCCuVkvWZKFVD1zGRoTcxJ3OTbAe90iXn+WklN6Q2zh9u8FF
	 vH4zZtgSdkPgV8myWeUU7i+3T1Rph3rNU1bQ/3ajUG7AeyvHUHt7FblPt4bRQAoRQ5
	 1xlWlr2bklaEIAJopxtG7eOzIJVtBLB5o1WhAAC1tpiNspb2XErfw3GQvx+/XzG2UM
	 d1uL4VBmsbG180UW//TMNq04NPJqf8ATCLuO1f2PHSWP1cpmad4OeLMrmYOi1tgg0B
	 FiHJglG6QUIfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB97BC61DBD
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178768863369.2654.13484609721777855083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6c761c44e49f5565f3ac8f5f8b7378aad0024d656d05dd2660eed27391e30cd
Date: Tue, 25 Aug 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787688633
