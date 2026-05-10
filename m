Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4656A213E89
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 10:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778408434; cv=none; b=ApMB/hR91p4uFkq8QUSbMf/UxRtH+CLU5bxbhV5ZW7a2tJWtAkjAz2AZ5sDltFmJr3EfzyxTohL9tFAboR4K8bDXxfmRIYIIs4AeHDw74upHHpIYhMFyB4g5aPYqYRkapzn74co8E3UlStUeEyCNIR2MsGNzUqopP7zpSmfhCPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778408434; c=relaxed/simple;
	bh=u41aInWxSaAIuv/2rBJ+1f17flrJr19Os2qSWfvXmlQ=;
	h=To:Subject:From:Message-Id:Date; b=B5wtcvsXwdv/AOEAgQz/yJjMWjdERnl+PZuLFtDxXDyJOTh/Z1smZoED6pEiZCvz19HYcRSHMvE1nurykegodqfvUNaS6F42ohf2wBaJGIYbgIMLINqdC/VzhWjcif9+wmiq4p/HlRFt2S5EFf6GBbuOKrIfd9LgG0Ao2obhfNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNwIdu1d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNwIdu1d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C46CDC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778408433;
	bh=u41aInWxSaAIuv/2rBJ+1f17flrJr19Os2qSWfvXmlQ=;
	h=To:Subject:From:Date:From;
	b=hNwIdu1dLDKf1NQVlMZU1o+NROitZioMXUiQK1CSG2CMKp8XhQWtOpk6i+3ck6oN9
	 7hJj6Fgs92Y2v2aY30gqIP8xjfOZSisvPWfrSOtsznGVMpu2QEaCDukeYQiPBFbtb4
	 TykkxN8ctKG3QsvO/CdvGqASbWbyFb3GSo3lHspeq84IdlT3eXqMvCy2JNNJ2oTW2S
	 vl6o0b61MMoV9WSCO6V1leTvuJNcCRrPZVGEAwgEKPZQfVWRVZ4o073tfEZWooBjGE
	 bls8I7jK8Tzcjc9fpuMRjZgRnHaBbsZm4VWeX0krpan0PhaDj5y//Wk/21qjAtYvDo
	 K3xcXXIGY23cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B59DFCD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177840843369.14612.15118868531341379614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33ab3c4dddc93039d6aaa5a61eb20c815f79433b44b4be258cfe7f3c95187dbc
Date: Sun, 10 May 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778408433
