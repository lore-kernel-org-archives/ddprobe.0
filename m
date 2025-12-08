Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F5325A34F
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 10:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765191174; cv=none; b=kTdE0uvHJATdVMpLfxQr6+bzhy79ByZ00MeSSLf0eZ1p6iaxerMO48CxbPhwha6k9JWnYb0UcsOvI7WTA6OJGyIDb17TXQ1DU5k4ZjUX9WA5ccFnh/zIR2Sx5DuswRPtzTAUsx8hatO9BYwzi5YEHfMWHp5QdsqzxmmdFV8yTEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765191174; c=relaxed/simple;
	bh=Ari6G2fWOf6JsYQ+z48kVvt+12rFFmmms8WUAxY90DE=;
	h=To:Subject:From:Message-Id:Date; b=cUxfgMFkezbDv3S6MuK6PLdiw2op1Mzedns1H+ao4vY9pOO/fMxxQd7xBlIWXO89r3MUvDk+lxsPaXtl2iDX/E1LUoPtgYBuNrc9UUw5vbnJFSt7eZQWObamMblBGAh6I10PVTiEjC2QVqJe1rSq+R3LVleADICm/dQspTpop2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mVJvLRtN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mVJvLRtN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A666BC16AAE
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 10:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765191173;
	bh=Ari6G2fWOf6JsYQ+z48kVvt+12rFFmmms8WUAxY90DE=;
	h=To:Subject:From:Date:From;
	b=mVJvLRtNdJ5kZ75tMZ8FeSRG7i7RpFTcg9O46L9xI0uSalR4DE91mdptp/7moz+3p
	 TrnCWrt7fMu9imnUsyqSM1QjMzMHBDJvWYsEMEFSP0QVO6Vb2TW2kOSUp7olrHWes5
	 8E+mutMNj4P+WKinJ6rSpnhRUXmnTlTaunbs/CCDkeYcl4q07F6mbxmhNnN+nhMmqD
	 27FPpnBE0Y+JkG2QmXLdYK7eCdCnfbpLeODQ5qxdDeCeDZqnwMPoO0Ad9DvVXMb2Hp
	 LNon+Kx1gPZw81dAqKy+jy3mnEKtdnsjvdFzb2fPL1Q+eH9VCpxu02rztFvPLdIBvO
	 4Rt9nJ8jfbP8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942DAD3B7DE
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 10:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176519117358.5538.8626992323742354544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75d713ef2ed44271d11f592132f169cd4e550c8c5f7fa30570752f2f4c9b8648
Date: Mon, 08 Dec 2025 10:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765191173
