Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BEDF2D320E
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754917194; cv=none; b=dPBibtatEdixUon7VHX4XxSW27nJjx/4YMrl89dXg0ArbZ4wVGmDlOIZg472+N6HBu//6y879kJ2lTb5N5y3JvPwaI7v1Dt1ooM7dgWA/4zBk2iIgbEvnK03IjLu/KBlFuS5txgGVyjmrnB1N40/4kpPo2H669wdlAKEijSbk/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754917194; c=relaxed/simple;
	bh=p+YRuqpWoVlIp+F37uNKM+TI9BWsNGfQ6SXaM06nzTo=;
	h=To:Subject:From:Message-Id:Date; b=HbCiAc3xUyjzt1xbi3WBd1iYZIyxa5Nr/jBME8zORnDZy3E1gOp4fIxiBcTPgRBtarflhY/4EE5ygjEbmzWGs3mBTGOIuZ83J7hDZyCaqdB5L657r335saQfVrEgZ32ICEunkQPTsl8fES8ZiFMD6Fy3aZOMrEJ7c3YsxTQYQoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QgiHuJFC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QgiHuJFC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A098AC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754917193;
	bh=p+YRuqpWoVlIp+F37uNKM+TI9BWsNGfQ6SXaM06nzTo=;
	h=To:Subject:From:Date:From;
	b=QgiHuJFCT/8M+cRpKauew3KVueQONBUXTcwhLhZe2y+8rL46WF+cvwaw1N805MuRy
	 VMNuM+S8II4wUGs0tMvVJUHetFQR/chuKEnkIOx/ZEdxi1mVwUc5MfWEthlrwN+cJt
	 LVOTDyqxhiYwuNDp5Jd+bewgkYV1tSDgEA03EQDwX+3jy3reMbJohZoDefIcYPhGbr
	 7rLgvrMrirNbQtp8uBdmS4CmRjaA2roEyesw3Vl07A3rRaBndi3cwExAZjsgOOzQtE
	 4YFV3c46X2elyKA6mD4FEYxXILdS8c/RPas8iHT1xHpyOk/0mJmBDpu21FKW/oEytX
	 8Hklm9LTsdzbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEC4C87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175491719357.16139.113254161729303575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b7bfa3d008bc7f09ea56823640b0d392fc4a1dcbe7861614969e68d4251d2cd
Date: Mon, 11 Aug 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754917193
