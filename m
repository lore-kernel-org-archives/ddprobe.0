Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271F91C831A
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762102794; cv=none; b=LWFXPoX/ZbgbgKgrnZML83hQPtOTSiOFLWBmHpJutEbGbWnqLwulBPO9DiuKyofNuUovSMmHCUL4FG+Y9Sthpi+7eFc4voJff9JaeJsQgCeifCzXk8yB01ZgYQG16zP4uTZ4DaPPVw++D4dgACYiWV0KAs34odmDGV1HDcodzIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762102794; c=relaxed/simple;
	bh=mAORYTmf2/i/fSEqtI75BpTQKfmAFVXLRxLRe46tEyw=;
	h=To:Subject:From:Message-Id:Date; b=PvVqq+yqiQvKsZIcrt5feGKxFIS8ctmQutkYcM1LfwCS3BL2GtwzKe12RegegkKb1Iiv20v2OhExGBI0zV6ViuGnKsi1pQrxlP1974wU3FnVRw3AfipH5QsGg3MPYgy5l6yVz6nV5345dk1RXn1r20jC8zfYB1kQf8cTzwogMQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppq2sH65; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppq2sH65"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A253BC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762102793;
	bh=mAORYTmf2/i/fSEqtI75BpTQKfmAFVXLRxLRe46tEyw=;
	h=To:Subject:From:Date:From;
	b=ppq2sH65ieOTW1SHajbYfb86fBfdCup/Me27ilzoZr/PNzfCNNmZro4GANfJ78ws6
	 IAxUz32e/yHlPQz+K65aFeHE91Abta/dAcp9WmgbcZ8Wmvok+k+DgwgHrfeJFzQF/P
	 r4ZZQrFj1xaWPskB0Mj0OHC+2PrWtUUkU0vX3rsCBsIyel87s/X2J4qb/h00J4iUgr
	 P57VdYlQH/IirYmdJcT23L1ZOsQNtiyDtbmh9ryA/0ld200HWRp+2H4jA8EghjuocU
	 0z0znVbMMqGWsiicHF18F3apOipEyHTRy0n59my6N5cfybldsWUdZzv/Tx9dV8stuo
	 4xwQb3VpINm+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F992CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176210279358.5894.8875887452839418679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fd9f2561ded47a2553a0270dd3d9c5463fbdef1565ab9bbedd3ea0b12bbdaec
Date: Sun, 02 Nov 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762102793
