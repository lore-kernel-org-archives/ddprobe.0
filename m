Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367702571BC
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758409194; cv=none; b=q4mqu9stSnqvzG4PGvQs39Q0cPhHUDvCvNDjf9dY067fW0JTOmeJdc+nDP3+fNB4D9jK4g10UALkpOKD87OesxuoucywEl3DkQqDk2o81YigZJGO/oSqjhE/uHJFfmn3wWco4mgNnSx/mMHxgCeP6OJ5tYyCG4vu4gHho3//KiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758409194; c=relaxed/simple;
	bh=3DEo/B74MptrY7XG6W7m4sPukZegQxOlZ6HgZMKyfoQ=;
	h=To:Subject:From:Message-Id:Date; b=uyH5bppO+H7CBOPmoXd1zSN0W7Qo80lcf5uvjjfVd73JYPT46nggghsb9p8EM14jMu2k0ut7pbN46rCgQEygbQnE0heEIP/5RSjhs2zJbzhn/gMKwgFzoWr/ZddDi2sext4l3CleqfOwKwQSIf1tozSfaKW9AURSvTJBS0KxM7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P98EHB7Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P98EHB7Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98EBC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758409193;
	bh=3DEo/B74MptrY7XG6W7m4sPukZegQxOlZ6HgZMKyfoQ=;
	h=To:Subject:From:Date:From;
	b=P98EHB7QUb4aIo/ogtCtVnhwG5zydYei6W80eTrTE3UshkEHBhnDQu7ZA4Mj8lYSI
	 Gpe0mJWTy+snGfJFCLEEamPQyll0N6SFrpQbE+wDCBP48sg+au8wtZwauCX6+EMfZJ
	 d+n+8Etg7Iq7fPiqyLHIwhEZ7z7tnu8LDNrDroD7TtGx+YTNY/7tnar+7NBHFAOAxi
	 0P0jwP4ZLybTOumfgiwEkNkJc/dOgM7F4y/yuEcpKib9H3G3g0INCiAl1lD7ZOsi8F
	 Ti5LRN1xMQ/ZIAAp2BuRoepmqx+wsZlua31D91wcw3ywxWgv3UjQsITADjbIuFpXzO
	 EWSa1Me16ze/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941A3CAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175840919357.22062.8643032251681124047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c044148f798b171594d2fb2e5fbb3c83c387b7379c564f793c9e1d5af905485c
Date: Sat, 20 Sep 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758409193
