Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2726B231C91
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 05:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779515554; cv=none; b=KwpLqiX1KaS7jAWzCAzLRSPC6l7fxkNdhN60idsrN4trWEfuoyHiPiVeT+H5tFFbcpJtnvMWriKCsWw8hOGfdiQJkW4V+N8kdIP408P+buC+9sECJ/5mhfvNSK8qWkEPWn94cJgV2FLT10DxOGdy4MkLuuhWKsw9rN0H1UGgrQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779515554; c=relaxed/simple;
	bh=eguKvc7Kedoo8SEMHFCNiB8JpT2k9c2YAbjPxcrTt0A=;
	h=To:Subject:From:Message-Id:Date; b=XqoFpz05yhJ2/woCuMUihKo5DIDbrzWtejPUkfR7faKACqD/nw2CYyBkQ8cah1VxiJSxP/6X+0Qkbve9ot/Uq3CB/VO4nvxbELjdP9kfbrtAhLbrha1jl3mU6Ard9wuwZpOHyiG5KPANAMTuwroLvbN3e3taykz49UIUV1ppzoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YF1WPfi7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YF1WPfi7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C68F4C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 05:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779515553;
	bh=eguKvc7Kedoo8SEMHFCNiB8JpT2k9c2YAbjPxcrTt0A=;
	h=To:Subject:From:Date:From;
	b=YF1WPfi7E+6hGW1QB0Mdgn3Dk+DuhDgYjdnMzOtw2sg7hKu27PYAh8x+C3bzD4/Wq
	 NSeZlMe/++B4zD1dk9CMX1y/6fO4B+RbFa+NwqcI1eRPO1A9ujo0MhsUA9/j4ypiZO
	 OdvlnNG1gwrM+f3Qw1/1riPoPd5XIYsR441Txcf8J16K4PZrwj3q/vgqrtJZLHvsgY
	 9LL7okTI5D148doNDs2joL2k1lB6TCiFkTEQVL0kShPzTap1+TCdqb1afBDjK5//GV
	 tUcxJPeF5FjDoy/5NIGe5fAPUZqNBzd0l7UR4pd5Xu2Ahqg0kI0wwiowInfB79Q7zJ
	 6T3Ed0+h8v4mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC634CD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 05:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177951555368.5476.15045056579385663285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10db89533a2c3179c0a5a19769064d8f26a6439c331775eb26f6cf3d5d5a443a
Date: Sat, 23 May 2026 05:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779515553
