Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255E01C84D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790996434; cv=none; b=RO/aGCrZ15tkpiKDq6//6EtqlutEiRoQbaA18c2zAtHdONBD4+NEaBkLH+iXBBX3ZIMClge3YdOfZQlgaJDBfaaOVpg0EHhmhganv9Pew/K6JypNTh99pU6aeK/prwN+EWgbmdJmOxflwI5+SHSz3Bsp+Qhq2ky+WTUw+sUN/hI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790996434; c=relaxed/simple;
	bh=/lB8FJCKInyu+Op/yiP/VH1ygI4rFiXCbvR+CLPTskQ=;
	h=To:Subject:From:Message-Id:Date; b=Dtrbu/fxzSi41YMWqR9zAjtwrVi/P/1EEJTnOBxEqPIfbCZTk2K47M/hl9fI7hdQp027OJrFVY3XIwJTd6L4ZmDi4041N6ZHXM81TeNn6Sl5UyRLIFs1Ltm//lUDvaS6tCjEvQyup5G581NZfW9j+OMXBPEmkKMt8peNA584uBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rzww4V9L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rzww4V9L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4984C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790996433;
	bh=/lB8FJCKInyu+Op/yiP/VH1ygI4rFiXCbvR+CLPTskQ=;
	h=To:Subject:From:Date:From;
	b=Rzww4V9L8Knh3sUkpP5k3B4MVc54HX6YUam/JpP3mRtp3+sBq2KlYkhlngrMhgSmG
	 MrMxoC1qSWXvzojeg4yJ/sgtoYjVrqII01iPBKnZwkkF11MWP/F7g6EU4WZDx/dPOK
	 vXpAB7382j/UcJsq3iobYDl8Ayke2MFm+xy+g2dLgHRpDzuWjNtxB+X39VFx7Toi/u
	 svrnIdVmw0eDfziqY1U22Urw6fayoswRT01hOTmPxxch3amMS3Ov8/0D+0fUgLYctm
	 n+bk8pqDDEn3AP4ZpdqxJHfdA2cgQzD8dlHPPwvSj0l5lfY/KtZA7lEjDTdxeiOVsb
	 6xwoe57wYv2KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1833CA5FE2
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179099643369.26235.10507263073046277491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54edeab9fefa47ba654dab3670ef2e39f822df99669e3141123582e424f3a6ed
Date: Sat, 03 Oct 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790996433
