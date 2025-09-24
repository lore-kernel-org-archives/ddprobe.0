Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1971D1A23B9
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758709795; cv=none; b=hK4PQWv6238eKtSyolkBDhBPHz/AtL6cH2DX7phh2Go/J66suPD2QA2BlsQgRDA9xkciicK+CH8StoU7tSp6UsxMxOuFtNMN8vsYKKOGh/G9BU8IHx9LzI+OgTxg9Oy52swYltBmNBDS77v7mNIr04fPCrA6SlAQXnQxgwaKwIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758709795; c=relaxed/simple;
	bh=YXx59xSQRbL4gP3hILFTQ2FnR9iyG9QclyKnyUShcik=;
	h=To:Subject:From:Message-Id:Date; b=LEdu2gkuWI8T/W9UtF8qoKGoHb8BCs68geiC1fI5IOCwvrt2I1KK/a4d53jokCbecNSgdTW+AukHlwZ2elYUSIoMKJUFScMR5QtO34H5z2MUqWMQfNw0HDuujqNxAfOaVfqXGG+JbMtMP4yM+V/BjgSsEJT5+6s5sR0pi16jKSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NTla6BlB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NTla6BlB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6E5C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758709793;
	bh=YXx59xSQRbL4gP3hILFTQ2FnR9iyG9QclyKnyUShcik=;
	h=To:Subject:From:Date:From;
	b=NTla6BlBzDOxFRFqH2Up3iZYCXEFeNrh/LnhSDc78d2+wMMh/43oFG+N67o61wrAx
	 lvPLn0NrbpGNbppnOZvnJfpgmwzFZJdpBu/KtwOdXx597Q4s+rIGQDF2/7Yf3zzyW5
	 FqxIj48wYsRFH5FXkpS3NQa03fjWyvRn7pSrRDISNr0AyTrwmaMVc75um/1JCriNOE
	 IylIhuk5pCrFnLsilo50uWAmJmGrBCfXwv1VGzNP4xhkCnf/LEqMh80ZUlHq8dmAux
	 WKMetMvMIktET/iUcYVqySIlrr9r2N35WaAJjhbxGY664hbmuFSPj9OGUDm5DOgU0t
	 EI35lxDQ2Wv5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98767CAC5B0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175870979360.6082.17355321415771872375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b58d0448792a9704c8efa189dbc733a4e56ec5db53bc672d5e082a465969926a
Date: Wed, 24 Sep 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758709793
