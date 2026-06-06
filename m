Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5112813E41A
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 19:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780773874; cv=none; b=nmGuOA85sRjSmNNi1n1MnmPUiIA0Bb/XZoohYWeIJs7vdqILSRLO+ISGtVMLNQZVvVehWnQRRbzRBKStEvCypi7B+VLMYDE4np/qXW8nXyL3nB0GPBkz1yv9P0hhN1STsVIbQUkibiee92TiwtFlHSvpgfry/2vwwvqcIoCWzJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780773874; c=relaxed/simple;
	bh=cZ+lKaMxccak8LUZ1UrdvEdbYNctLzKWcVcvMvb5w2U=;
	h=To:Subject:From:Message-Id:Date; b=IHGSrG8ahme01na+SqMA9VdTs4LoB7Pbi7tSuNUKuoJHdRmX2nCOm5qY2mQxTi9UhJu7W0zvMMTvjFRxNegiEXnM2BfoEi+9gdxc8dHTwP2M9U4ccwNa/mkAuQ7SCmBmO2ZQ3LE83vTVofoenus3ISqo0AxXeqggpstveErUDIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOnSLXAZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOnSLXAZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E25F1C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 19:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780773873;
	bh=cZ+lKaMxccak8LUZ1UrdvEdbYNctLzKWcVcvMvb5w2U=;
	h=To:Subject:From:Date:From;
	b=pOnSLXAZ07nxiKt4Sg1AellEodatmt08v68MOtXwJkw3z9pGc1MzFbmMva/Idp7+y
	 oZANwQiIwl45u5XjAvkp4c8UfK3kPv3XjmTQd3O0puo3yqJ+BYXqiq40t924FpQU6b
	 rheZWG3+LkQ9KWf0k/FC77d7YX9dJoCOjMW16twaUGf7hti9T0ecc0KDU0yKMdrZrO
	 QRwuXcoXCBUQXFZIIJ9bkQeZwtnycKipva64fQ0hN+sopSFxP9/QvA73nbDx1M20/s
	 /il0O52jTOp/lIdFk76SI2Dmosu62RciHhBdN1brOVdXcZ+g7xmD5X3acxMWQvTkR6
	 zUBy6KLrMvTyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC13BCD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 19:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178077387369.5296.9162722885334607715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7783f882a4937fbd14ad4df5a42c22f97b100b05c8f889a071110aebddbe6b90
Date: Sat, 06 Jun 2026 19:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780773873
