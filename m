Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D153655E4
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 13:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781357194; cv=none; b=ODmRKJuoJ45jHsMlzHNPijqMmpa592+/PFyPAxEjSElhVC+D0EPu/jCiMxSICiySvwQcOyib7sbnQBGlVCYSVt6izgvBj53sioZlH46Tm72k1EAjjwy+iukrU5OQaWPV0r761Bdii8ycMlKTd8Hw3RIFqnr+DQkqN23Fz0Dd7GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781357194; c=relaxed/simple;
	bh=leoGRF7YMWZT3Ik7PIdXtGQ9z8ub1ISePaLDsEQrEeY=;
	h=To:Subject:From:Message-Id:Date; b=Xpm7el/cSdGxRMicVYU3LtS2ODOHm+jpSaBjyEOw2LaPK1nmClKxMUDNTV7RP7QT3LnPEL3CL9bPPtWkwonT+qabfjgKzqqIrgbSPcioKsZgUT3a3YdTCaOdqoNWC25izSYIGvyHvx7K5CRlOpocZT0gbxYvLIMuVkcnJe7emD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HsRClPNO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HsRClPNO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6880C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 13:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781357193;
	bh=leoGRF7YMWZT3Ik7PIdXtGQ9z8ub1ISePaLDsEQrEeY=;
	h=To:Subject:From:Date:From;
	b=HsRClPNOhcghiMpQoNpiP+rplpJku4znvTtaOay6p5aFtwqVCDd4JiluNKvRztkiW
	 yzI6cIbnos+1Ac0Be1QwLRmlY6drnzFiy3dqQjzA+xRLES8E8bLuc7ALZXm+LvCGXX
	 AI+jN3L4nl92L53zblwrcM6t9NbTLF6FsPIHxy8hoCrDWzdJQXAwyCf9EY6dnbHnxY
	 bBxgAYKaLEaUxn57ZMDQmk50+09c3csvJ/6we+RA3DkpWQXjxw4DVOyxHIpp0gvWiQ
	 DhSUnmFcWiMMdYJhGe1Dk2EE6OBAOt2lBfoCKpb/Wo9g3X07BQL49rO2EEkwia3+CG
	 JyqlSICdEvgrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB4DCD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 13:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178135719368.18178.15935266688101624833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9710cc19d82ed04ff9072aa5b484a7ca23338dddb0ef4c0560f467d10d4d01ea
Date: Sat, 13 Jun 2026 13:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781357193
