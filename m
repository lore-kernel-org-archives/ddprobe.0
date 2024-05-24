Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6619553E31
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 11:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716549803; cv=none; b=BKozkrd48H7wrs8iFrKf0OQKdCMcO8qaoYhwmzsBotipRN1h/ThVY6kc2KNaxKaIulY22pXCJ6TOfnr7ngZ65xo+PgwLsYWo0zoeSIgvZvM1TpLDVVC1TyC2UtYGRF9DCS0bDgQwGWpAdRwu5v/8clNB1lMvuhglIl2d3Mi9hAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716549803; c=relaxed/simple;
	bh=9vRq2lmq+fMEkOp/1Wfxr9HNeEZuzlevwvGmMlUR+98=;
	h=To:Subject:From:Message-Id:Date; b=ByA1LwYB0iJKI0QBSLmUBRCq+uL+FHNTUtnudp71FpthXD0KvG6UN/GhDVylBhAABQ6yB4r+HIBgXRfwsPm64wGh5yChyCTK0VnMwVcnSSs85dhQ+xdgbIqchRia/GYILwA55XK0cFkD3s0kesZXTibLIuKH60kVr4AFOD/F7qY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gz2v0TDx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gz2v0TDx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F71C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 11:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716549802;
	bh=9vRq2lmq+fMEkOp/1Wfxr9HNeEZuzlevwvGmMlUR+98=;
	h=To:Subject:From:Date:From;
	b=gz2v0TDxSQrwSWi6r7hQkloTdcrjuGOTwF80J8BK18ZODaKvF70LsFHE5QezsYeYn
	 ct+HL/nVta6uzukxQwCc28EPXNQ0P70K7Wg9+S2Mu4f999Jv2v47Be971RIRVwOMCc
	 VWMsp6b/ShI0NYtUSLgaV+/0A8f49u+6w36hQpSwAFvt9+Sx9qimhY+b0B2gTBSEsn
	 qjc0nZyRZ4Km2rEByME1PpBHepEkV0GZYrA23vqbgn9x2RllxUMA0U9CZRnonCK/vs
	 vED6s1/1Z2Vyz4+tbxxNaVt7Iln2U0NfSIeCF2WtNKV/qXNTA4R4mB5H9LrddEsW6i
	 UdQicnfVuy24w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD966C25B79
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 11:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171654980276.3578.9747889301978680991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1a5d00a3b3b0f9ba57a4cafff6d4d996b05d4e633eae6cac1794ff3e058537d
Date: Fri, 24 May 2024 11:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716549802
