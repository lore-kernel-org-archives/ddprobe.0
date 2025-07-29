Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E791DE4CA
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753769994; cv=none; b=npWs24byb2spbmai/MzmXJrVkxMnuAlPs9wZeftELORJdj/Ht7/VQu66ewRLsvzOAGCFJTOe+9IwoHzQMOqP7PNH3ZK4Zcg84y/4a90+WfxRnh5E0rPYVoHu4opmNJMK71eesRq/rkKjzrqiL4pfTVvHlrn63jWVpkQ+lBKv1Bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753769994; c=relaxed/simple;
	bh=mpW3p95QXtFz+UzaVJ1Od2HRsa7/7bxZGqoSicsMFfA=;
	h=To:Subject:From:Message-Id:Date; b=fOYaRCaqNIU00pRNpLcDAcTa3eNGYgL9zcJoPhVF6gmfqvbq8ti9yMSc/GZFtnJwpUpzVaCELBhNGhHLmw+hacFpWn07koPvDp0boZf3bUmu3lfrruhffihp3s+TpcmmpFrZG0OPgA+r6ZoBpxiO2/V5ProegI2DxFx8kwYVLNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNlvk2Gf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNlvk2Gf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A804CC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753769993;
	bh=mpW3p95QXtFz+UzaVJ1Od2HRsa7/7bxZGqoSicsMFfA=;
	h=To:Subject:From:Date:From;
	b=SNlvk2GfL1FAYCvQ4lgoSHZed/ZbWh97qmVTDtHB67zVOcus4ubHnl4ALDKUEdmRU
	 BuZQbXD4epzWosqU/vFhLsYU2o1sI5ANu+IFRXyVKFQZUSYY/z1CCezG6HOBPuZ+Gx
	 33FWjZwdtVOARwPvDgzSRnkcIAVW1dxWvNFQ1bQXXxhWZWq+aWTsF74N4t+5huZ7I4
	 r9Wg3Vob5RH1gpJ/i7+04DmB/yJy00RxLLh9V70pY6YOd5oXsIC0lZrMP5/1Hq4sc4
	 JXQ2jz0up+WnH3mTIijFygG2CxveXTlBn49Clb/yBYUjfylZfWboCnbLcgFXZWdEnZ
	 NLunK4A2Aq9wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E83C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175376999357.19263.15093229250927717334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f31fd6ce6f639ffd76fdb304cd1fe3b41ca9967e0c89df6b4a00df835a101629
Date: Tue, 29 Jul 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753769993
