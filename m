Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F52C259498
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787475034; cv=none; b=bxMXq6nlk5Nz184439n3YDlIXIctCtIR/W4lreqtn17Dg9+ntLJPEClSokIy643nZdkzeYC8NsArAMDPOD+jiVl2q5kDlQ8vWmjs++MyRdTpoth3z6G8IckESWzCdnMZ1VZBqY80o849WMNupPkro3H+QkpaRcMW3vZBWsoPX3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787475034; c=relaxed/simple;
	bh=WfDXsWOyYYAFC2hi2YR1bLL9EX5+hc//s936sAGVsdM=;
	h=To:Subject:From:Message-Id:Date; b=DFe4nUyVFMyhzbDvxAjHpp3DITxI57dqBBdnAHgr+VPxi/7BBYUAqtCaYIy+frDA9fZPeysGXZtDsjwfYDMd9Y8Hua/qMQ8xSlujsuHmjStYDuBZ7grMhz1PyrRmwyqDA0iGF7ER++XZDO0GyAApVCyv2Z/W2/Z6oz1ibZnXF+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oI6PDsha; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oI6PDsha"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4144C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787475033;
	bh=WfDXsWOyYYAFC2hi2YR1bLL9EX5+hc//s936sAGVsdM=;
	h=To:Subject:From:Date:From;
	b=oI6PDshaRe+0QeMq7c4r4Xezhixn0fmI7YjeRwk+EY9y/CWMMiT0Afj6NhvwlYy4b
	 SfRAywzBVrqCtQFg4Ro0b3O9EzDvR+p2pGwAgUm77cdxcrA+woxPKaElyAV2DThpcZ
	 LX9PNuuOsjWE2khX8RUBAHk7n+nducSbMsg7fpZs2xow/jQy3KHRiMWzpLijQZDq8l
	 KbWcpr14AbEYl1q/xrV6xWhywduCY/48PZnilcomNDsquskAww78LEOs7vYgFWjIrM
	 xy01b8j6dQNFckHY28enkQdy09tyJA2d0JLf/dbb8yFCOg/KUarXYg8mMlKkSTiqtx
	 kKLoY/qYUVeOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF275C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178747503370.3576.3667043327555240656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bc2ca4f3496cddbd42781243267107f00b83102f3ce781fe4c9019f6be90d68
Date: Sun, 23 Aug 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787475033
