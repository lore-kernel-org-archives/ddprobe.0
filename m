Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F001B27D
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710598097; cv=none; b=OQWI01HulJ9IWlSz7I01bmmnKHaVZxbgmL97VbY5+BYI50vsOIou38aPaXrXUfPzHSmZ3v/ELPSdMMyxidKbSnofe6cqhrFrFmwnr7NIAnjP2rc0vdwWxVtzh1lkCwZc7vHnhHUApRMItqsfl6Zul2rrxYERaJX4n/VaxG7iu8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710598097; c=relaxed/simple;
	bh=k4a8MOQh7MoKtCoJGAoamb9tWSmZb4fFWw2O3z3gduA=;
	h=To:Subject:From:Message-Id:Date; b=sl8RKnjLigN2cCqB3KeEkP1lOTRtiaVoMgx67XFiFghwaQ2RyAUXDwMSVajI3YeLshiDGMOniG0HJinT/dsLvAh/cm/SLT8e0KqYfnpgn0M3sh4vzNZHqWlul8/DKYdTsS00sn5ICp7ME/ZHMm1eODzjGnC9vra25XaAT0rOuos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nD0DClyL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nD0DClyL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C67BC433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710598096;
	bh=k4a8MOQh7MoKtCoJGAoamb9tWSmZb4fFWw2O3z3gduA=;
	h=To:Subject:From:Date:From;
	b=nD0DClyLQHtPEvXGo8q2yUomCozelywbJ2P1m6NZ1ovhP0iqIC7K+AUIpWW8+mQ5x
	 i0KUs7Y07cqeEf2wHXWB4RwLxPAMclvztYeJr2Vx27nsSSYhtUeUi1mF+BFs7hpuWv
	 xS3eRZ9vHV+yj19kbMhB3yC6F9iAwYtfiLqy0pmpfTikTpWNMIkmCuTfGkT5UQXfia
	 wtqW9NXpVvtRyDcD84q1HXNiArKzqSdbpZK3Px/IMxRPrZ05E0Qcgt09UODizVeWfc
	 n3XqTjk1Ak1uEnfYFs/36AO8oHAuG2yBJ58rHSCUXyJFIKG8P9w3zeHfxUlqtZzPFj
	 LbglkzXzIFMcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6737CC54E60
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171059809638.1451.11382412059814946625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38c93268c2223d20e00ab7267e8723089e5cc57a518d24481f00b634e184fc6f
Date: Sat, 16 Mar 2024 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710598096
