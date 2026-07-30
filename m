Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E2E3AFCF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785449434; cv=none; b=FCidHVHUK62ofxKOMb82UmqMjxpIGqWso0EeJF+bjqnq1PJgO27I+V0RxIiqNdcvNwRoz/h61cwW7TMyHmJAKtxygj5teSBIPEjQ96Xr/inAiZ5tvr1Z37GrtXulYBMg9ir4FwzPZ9Gb2nS4BD/FkqJCPXTjp8byfl6mzYZpYKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785449434; c=relaxed/simple;
	bh=5Bqk+vsrZO45EcFKlOohG/RwE3mkRSiMMdLALQ0tAd8=;
	h=To:Subject:From:Message-Id:Date; b=UrcwbYIzme7iVJYR47Vo4NeEN//ulBfkhtngTrO6OiKpdMP3odatwXvSj8jFBOSAx7N1pw9LU5jDHgZqYPPHe4ZANNp1eck4YGZV8JoR5dzoP+g0a+Stk8aHHPgT68oD2fFHONoRp4d4VU3pVkwQPKemdi8XxgrB9mOjsSuO3tE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bi1YY0B2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bi1YY0B2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C95E9C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785449433;
	bh=5Bqk+vsrZO45EcFKlOohG/RwE3mkRSiMMdLALQ0tAd8=;
	h=To:Subject:From:Date:From;
	b=bi1YY0B2DzsZaEEXq5tDdIqVHDMKffa5v6kDkUGZikkwViKUGKDR4m2QcClH/vfOH
	 pvKM70c2aZ4ZRcnoFu+8MU1qMeknX1+fdL6GxkZMPXKLQqZVmIW5yhRpJMyN6khbcE
	 CL7zfUyvAI8Pe0jog0AcU9h+3AmRopZP2pl6RU3Fk3jaEvWnybTEL1tsEwpg9FkZWm
	 8aM14H/IkFzfD5OtFZPNrQl21UQrx5iwgn2O1VmhH4GFu2ecCCpMcdigxa3INo5Vhg
	 Xh5J2tGubICg0n6CiJsbka98XndJACcXEnoW5P3XdkLjVMwrTReM7Rdyq1IfavuWr9
	 lxLFClLt/eiqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7ED8C55167
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178544943368.29731.5308543391178175390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 455d597c63d83efcd6587a4429bd3ea113e8ac0ed0f91186ed7477aa29ba79dc
Date: Thu, 30 Jul 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785449433
