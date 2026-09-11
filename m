Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A89938F25A
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789146634; cv=none; b=BOxYmm+iqcPgFnsZQ/1niQBbRyTddl11q+sH8tpDIG2rr8N2aXwdoG7Mff8ZtmUw9uMJCiMVpzL8vW4XxDXK5X1cqUj0LLm96YraJrRtTe3sz4y0SLdzzfBev99GhpnowadirJX5d95685PSRNBEtTYSCom2XMCduYYGoPuspvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789146634; c=relaxed/simple;
	bh=R0vu4j1RUeDG4qPRZeUPvcisBG0e9JFX3RoV4uC9LcQ=;
	h=To:Subject:From:Message-Id:Date; b=jEktIwe2Fh9PcfUEu5n0ca9bW5jh2IGXaVUodu8kRzVA2dw0I8Kd9JKSdW4DjmfcsSguXXn90TucfFwMwmWbuIePZh11y3GGaGMaq4tPM+foG/p47hNR4JEBn4eNxGLwexSTfilGRk72IkwN9MVOgXiGwq/bkNrSEWouLW/xK8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIrwO2T5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIrwO2T5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5EEAC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789146633;
	bh=R0vu4j1RUeDG4qPRZeUPvcisBG0e9JFX3RoV4uC9LcQ=;
	h=To:Subject:From:Date:From;
	b=bIrwO2T5w02gLXh8MaoO/u48c1PKPW/KNaY6srnxJfvEMb6/hMHLImB4cxJH3oEUQ
	 +CJo34MA3j4wIEoZ0qN2kpXDjTjTx0QTUjAtSSi37qzd1YHTMGerBP1bAm9OTC0T3o
	 KtRYUjVitNF3mTeAsXSzCgmpbOt6W+6kMlrEBl+ZoXcdcGVm8wX/NflGObWTPhYoyS
	 h+GuLbqQYroZH7ueTsjptdYAzuXUrb0X/p/sO41WjKTwpzsE8cUXtAfYwndyR1wP3D
	 YiwHjyG5ywAwUK40Mhc3SL+JiFytHCnnlEfDDsNBnLHiNm4TC4ZzTjxFnm6QoFKGxz
	 APRlc0qEhHl3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB35EC88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178914663369.24734.2111782713353161157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e63eb01083f45f25402d8de71628504b66b55594a51103b9c4b524df9b4991c
Date: Fri, 11 Sep 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789146633
