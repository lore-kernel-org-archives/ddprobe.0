Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B4DD28E0F
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 17:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716572603; cv=none; b=gD6eCEiavEVy2MNLnbAq+xBA1GF80aLzOSCkhIcWb79pmu1IXMhFaaJbHdOaoJrZbbkflDltaEBg/0ehhMph6yHiAX/sswSv/CCQphu8xv96ZrEnqosqPnBY85Ikwq4+GNpk4v4Ootnn6Gn2e+8izWXCukIjHeguoqURv2YNrnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716572603; c=relaxed/simple;
	bh=p6KnZV6KjYOTIdy3SqxNb6XqaKEoROa+BNLabar29mY=;
	h=To:Subject:From:Message-Id:Date; b=CkIwFtLCJPh+Pdhqfc+Sy0AANcIl41Z8g/VDzPsVOxRxSKT+7r5u/KJn+CuMLMcP0/WyWNliKLhg6Y8rTGEaA+BDy0bFAyUXwzlxz+pi8Jr5M8zj28pV91EC1Fxav7rsbiiUo0L/Z/fjn0cJjMuF/mNGo0xcJwC4Yi8fbO3+7Og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXMcnMIi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXMcnMIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC67C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 17:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716572602;
	bh=p6KnZV6KjYOTIdy3SqxNb6XqaKEoROa+BNLabar29mY=;
	h=To:Subject:From:Date:From;
	b=EXMcnMIi5lSTOtCcQQb49cT+jvo4jyxReGKxSR1XwvtaPN+m2KpOhppirkKqs2aIt
	 wiexdePof8qOSY0/zemFh40aIrnKm/t2XYWEqCEolUVY+4ozKqMPvsxqLPC0GLPM2+
	 x6nCTYzrFVFmL+lhwXy4x1gM/KmI0ODyapjv8lUwIfyyPp3sCLHQdyIDAF1Z51C5Yz
	 keJDsczYtDsjfGerW6TgP7gW+GMNU1UG/NzwzlaZM5ogFrypOyhLFpspkNMG5dlIPM
	 RUlCVIQ9t+yFAvIfOG5NyGdLh1YXGB8g+/VsRDdrgZO8ITzqGbBj3Wmr1PCy80LRir
	 dugb2QdqbZaTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5BD5C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 17:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171657260279.28773.12411411165679946971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62e5203b709969906f38aaaf00ef509ba8bc42e4562a92b1ef80e96f008d97b3
Date: Fri, 24 May 2024 17:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716572602
