Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E26743B3DA
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 07:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784620714; cv=none; b=IBPMsFjxq+IHJ4sM7YJuJinpKyCNj70lwApsVRiW3LQDKFfT1AT68odY47LdyNBAeUKvW81oA87l5Y6O4Lfobdow9eEv+m/NyGk/q8k9y2IR152nAlNol5BWGMjbXX8T6a47NkjbtlkIB342dp+2zp/SEiI02XLqFmMcxx48vS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784620714; c=relaxed/simple;
	bh=8Yc+ilQ9KzCHGOLDm1wNsI3ektS8quAsV9DmLERFg3k=;
	h=To:Subject:From:Message-Id:Date; b=sM/9ak2psADVwJVxrpSzo5xPZcca336GEsPwJNOl3vUyGCW8nGou5Eh99y4jJ8qaKqOlQFKRc4ElT3LvmbXOKG6lcxkIecB1w4zzEtdiGagf5lCOdH4dLwN7Ra+hmIzxeR2U9Wxp68e//iggvDqoh2/75qnwOXgsW91DowEgzKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dxqRXaPP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dxqRXaPP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 17D10C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 07:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784620714;
	bh=8Yc+ilQ9KzCHGOLDm1wNsI3ektS8quAsV9DmLERFg3k=;
	h=To:Subject:From:Date:From;
	b=dxqRXaPPi2A1Lb4hB4dT2IU5C2hArmD0f3w2b38/U28bgo8EW4MDATpOcHZhP/tY+
	 RqDW2Q0bwhj/BcGHNKqjyI23PMZtxZsyNyRfFVPY5qcfmaHsvp4JwuBfsz+f+15U7W
	 DMfNup6iJ0t5r0xNseTbXbwDEpkJZrNHkcAdbYR1YsKjP3DKKiCXVxBe7SSPrHQX95
	 bRHoH67sn7BG+ajj1xRlP0kNgmlSi/LOz7E4DfBtXm3Zt2i+EwdZQydJ6oxw+3FQw4
	 1MMA/mdOpI/JutUeRGolmbuAz9A7wtkHAeELK62VqA7SzfmlokyZTSKuHDKKZAdtFA
	 BQZZyJ4IVKyyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4760C4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 07:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178462071377.27225.3930616777732549606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2dbbf0dfc45047f4c8522074cf38a5493c07a18d652ffe2024b27f852b5e735
Date: Tue, 21 Jul 2026 07:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784620713
