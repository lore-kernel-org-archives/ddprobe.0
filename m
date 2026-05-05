Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DB3386440
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 04:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777955854; cv=none; b=PQBz0LA+4SWYSHjK6Py8jdP/qe2M9vNOEIAThZf+P+AE5Ek651D/KYZPowNUKaF9cE+Ey/hDa8Emem3pWNo1rDxRij6GtIw15x4Vx0fXU5DGfvPet+2cejA5Xqqm16uzmyAiQa+wKgSPLLJv2phi0PJ0T2cjKGHd0F1xgIHGoxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777955854; c=relaxed/simple;
	bh=LKUXvpzKtCWSfbvr/cOngCedDIl4UdMv0Mx/yjVWgHk=;
	h=To:Subject:From:Message-Id:Date; b=IPlAVSSlhNtwno8LsIwAWMIDFjuRg/u3G0sGTyF3lOoGro/6VEAQPpMVvMwEeIWIoAjiuXIB7fB+9hLnd5v2ZTjwHt9fXSOj4lxT9waiiqzg6FP15RhkkIOYRfgbf/N50c/AiSflzhIpDe/rDTc0UyHs8J4aKBQrg8yn6G6ik4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XV9Q0U1D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XV9Q0U1D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE510C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777955853;
	bh=LKUXvpzKtCWSfbvr/cOngCedDIl4UdMv0Mx/yjVWgHk=;
	h=To:Subject:From:Date:From;
	b=XV9Q0U1D+Wcl1cMeF2tuGFzuTxXCY897qrJQjLaWnEVAHYqECR9l7CrHCbwyEep1C
	 vrAqH4BfYWI9/POKzY3ARSz8jFV8NL/oTRjRfgvX1HDuptisXGP2gUfdCWOrlRKcT4
	 XYQUspqR/m0wuFljc3jZIX/PHvwWk+kwEb4cx8E8SRsAXeZ0EmG9uSQDCnLqKnDN6r
	 qh+CEZ9Dpw79OR08Ka9BrUNWk7YarmVtlq5dhPmDBtiCOZRqt6FYcyPuMLvcpzqKzN
	 G1xqTn6Po5DEWABxPohFYYTsfWsi5DjVHfINdA7+F4LOMuzhM9W8Sj7jgWH8WZTvPn
	 /b1F9/4Ic05ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFA9FF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177795585369.2242.6555338779681767542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2a69ea653d77220f14c7795b1ffa2ed8ebda72ba9efc29a8b3b2396d02bdc91
Date: Tue, 05 May 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777955853
