Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFB92882CD
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 13:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777383454; cv=none; b=E2cNGcj5UmvX0GTdOSbNDc//sZ32XEMsePtaCqI+L4IF9x07aSDTe0WmJooIEoZyZfcdNjMAwhRVf1RV1FiE9XyMQsZJJIKC+3HROtIN1Ufb+clzVC4PZeXgQZXc03AH1ZhvV4UtDUp+se779EtMQvKTnbbPwZ+xhGamV2V1Urk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777383454; c=relaxed/simple;
	bh=odkeU6+1Nbt8QDnoqHdLYs0Ib2K2IJoLqIdmn5uaveA=;
	h=To:Subject:From:Message-Id:Date; b=fl9da4DH4I/I7OIl7ZQh2L14uQ0fgc7X/9A9rKp0P4HU8Tc6bXqNbN/ZqEQjp3SFX2TSxTIEsD89qhMsDoPYE887KTYyy6SirGgYc/G3l+mwyTVlltMlAblwGt/qWbt15ub66uHqhjaKdrB2lkkOMkYScqUwxRsDVP8dwc2R5Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HwhpHCSt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HwhpHCSt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8489C2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777383453;
	bh=odkeU6+1Nbt8QDnoqHdLYs0Ib2K2IJoLqIdmn5uaveA=;
	h=To:Subject:From:Date:From;
	b=HwhpHCSttRv+CwVxhKNEH+kLvbajYHx240Qvy2uTaFzHPmCht56NgpY2OrkSlrXoq
	 kd6qek6BlJgqYaW+4f0zELW3MC2nMqdrq39YGs2YS2+y42EVlcU6hk/jNuS2Toe2Bs
	 sQw+r0zb0wKedK5p/37J9mSRWm3AZdikZuNcIbGgTTSp10x37B3zqXwVn5RT9qS0+U
	 Tr+7aI+MhgOPTgo8d9Rxu8yj7iTp+ZkENhk9WIENUMS5wQ/174d58afies30oPVD4A
	 ptM6i290R7gfvH21zgyrsLOZsZy88xMq6zMdJk7BeefRp+mGPNBjh0QeSItd70wtrZ
	 ZAY3ZDeUE2ziQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9678FF885D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177738345368.5483.1918212189509308717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98e2181a22024d09d1ebebabfdd65d277477fede4c2e1b1436224e5d0b67c53b
Date: Tue, 28 Apr 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777383453
