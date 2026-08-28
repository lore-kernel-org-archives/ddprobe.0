Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D6638B7D9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787889634; cv=none; b=C1TXExlXBdwXr/qvv1b2/3Ag/eN1Rtdon90xcBxdUQ2j+O1k73nAwH+r/tGNZJlp6bN+nLJ34+SYfsaWrsDtxqMYyVwZRLgmG8x9IIKXILaKKl2gAqpLjDXP4fBLUc2owK1O2URZqR2ylcfPfrwjtqViiOkpVS75nGIwMgO0AlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787889634; c=relaxed/simple;
	bh=5FYnbpdEECaq2Q4rflfVZe/HdD05ERrdTCYc41v1Dso=;
	h=To:Subject:From:Message-Id:Date; b=uYNjPUR+fyAahjgxdyBUMF9g2ZtV/vNzgeRu8tlHuhfoMPky41ZTySHkHBTBHszXu+z5gtg/QZLFKXDtMxljM7mnerZpZBeV4rfcEQifTWOIchbU/crhl1evihD348gEPYPk1QwrLHBbcQr4gyP4DtBaiR7KfSiVSCRC6VNEdlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U62qzPgS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U62qzPgS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBEBC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787889633;
	bh=5FYnbpdEECaq2Q4rflfVZe/HdD05ERrdTCYc41v1Dso=;
	h=To:Subject:From:Date:From;
	b=U62qzPgSBssRaMV2CdK0FLpbx2mu53XSzIGOLLRO2r927rDenUU17g/zz7Vu+qwN5
	 EkTTLo7IecZivU1yFYIAjI/fRjcM06Nd2xqskB8omu0F2xis1k25XlUD47ARIhHuDX
	 nc6f+0d2oUUil9t4L8/H9UAz9t+08CD7viUnazO4eoWnrPKqyVlxeS/m94I8K71Iy7
	 IkLgAL8HitLo3MJOR4ppnLwG85ipgBpFGxbklFPfezOHDIFuNAFQyALnWnOGIPg90y
	 kZmXnQ0Yjoxjz0AefAyD0FBxbtu+SCcmKrPrKqL6aE2gN6Az8wyEE7JjTjJlONLTIH
	 iahvsc4yoLkvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0A7C61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178788963368.19604.12365125082291825241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6f54474baefce7aad882ebe3e172cd6a513e8c6978813fd5e1964609a597bdb
Date: Fri, 28 Aug 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787889633
