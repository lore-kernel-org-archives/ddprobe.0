Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2C622FDE6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785203434; cv=none; b=CfPCK4UBOhnF4NEw8XAEfc1APxQQHsSPdc1DhbKCObs3Vt+lGIyhJqLQu/v2uTMSKX3eC84hlu8Lv1MNXj65/pOQUbD0Nq0ak+5Z6YrumOJy5TA82sUu8fkXammdQyPfZ57SQbZck8316EsYFzcoih+hUqLTvQYy/Oi0voIdjHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785203434; c=relaxed/simple;
	bh=4I9YgwE17Xpf61qgUY/o8MYlCvj63GeVy4Z7jaw/tAQ=;
	h=To:Subject:From:Message-Id:Date; b=KnzcAgsUlcTshTX/ETW+nzSkfeymTUlamz1qt3bTld2/jVBA8p1nDKWviRoLSRWkb0xDEwh9E//UQeD3oHR8o0t6Sv+YGUsWHrCrQo/E1KCCOZuvrv3QHwTiWgwxMxaZMDOu2fWCbVBjGGVXUQuWd80GncY474tnLrSwHrEEd1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NMGdpqy6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NMGdpqy6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2445C19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785203433;
	bh=4I9YgwE17Xpf61qgUY/o8MYlCvj63GeVy4Z7jaw/tAQ=;
	h=To:Subject:From:Date:From;
	b=NMGdpqy69UCA3pV5J1DR/glZYTz0lns8gRdFtCb78MToeihjqiA5ZO+eP9N02A4kV
	 ywzMkcOPK5jd4W+hxnRRjh03gsh78opxeIk6Obt//4yyovya4Scf/uV9pBbfsOVtbp
	 MSeL6AkyWXW9c7l1OiQ8YGg4876Rc4JRMTn0riJnNdddszVDOaT2Rk292IraoraNVo
	 QwVl9drCLO3/vkmke8VyiffNtuaKdpX0P6s4QQJV44HPR1H2Ft6o5vaSXicB4KFU1g
	 bZIVGH5HcdGL917+sXOAYl2+8TuqbcsSyo6wTgazV3dGNRniFlY8IlhMZT22i+yA8D
	 FyKxk3n5guW6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCD2C531D0
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178520343368.16014.18154019370203097537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 369e8c2516f2d6c454cae3fb8ae0156d9b0e1fb5fb7f85615f5eb63c89b6c69c
Date: Tue, 28 Jul 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785203433
