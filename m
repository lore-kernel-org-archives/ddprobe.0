Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D209480DD5
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 07:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780644274; cv=none; b=PdzD1zsQPdvHSLvghBqqoYJ7x0Gumsrvad4a7dkERBn6h8qwG6zBoCAWiMOCTz3OobKJVGB9Km6Eri4/Ak3+wnMszz4q8a/d4J2SA4zp5p72sZKYjYg6HyC4NyRBazpsnFutHgwfEStSpD5zlb6/ZStjG8GbrVRB/FDe6UfXr9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780644274; c=relaxed/simple;
	bh=C2k3xC450bRhcBFyLGAjZWoDRzdiQw3X9Rl9nqP6kPk=;
	h=To:Subject:From:Message-Id:Date; b=Qjm8iCh7/MbIPB3x8V0vBcoHZByYJVqNSJpdNO7Wd+2JNM5ZqnCecs2e4AVojXr0yl415TA2T/JwAo7vNl884rlv58K6tBKT3dad5nEAz2kG3NWwhJ4jOilJAoZVATiCxUKPOVbYGIjmiV9llriG82NT9t6KSrlRWSJy/SMAwbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KE+eQORw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KE+eQORw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52D2C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 07:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780644273;
	bh=C2k3xC450bRhcBFyLGAjZWoDRzdiQw3X9Rl9nqP6kPk=;
	h=To:Subject:From:Date:From;
	b=KE+eQORwpHjdX017pOdt5T1g91am2PjaUvjr77wkDp7Dcj/IfuhAoCnTNCpqyNOfP
	 1XZ+Vpt9AJb3KbSHl4tpU006eCuKH5DCTEcE0XgwTgOm2h/prL6/NALpS4RbmOVD/G
	 tMbs+Miz58hmtQcZIdzUixH4Uii1NXk0tzEczlJwphUlXEiorWWNGxhPQ79gFPYzBh
	 YmeOZbGoIOp0RPNYirsu9sQrkSvZEJo6oVELY8CCnkil/s1sOmEcnp+jxm0hcz+tIN
	 syC7sjMY4W4+2CXFwPfOeu65x0OGnLiEUDwPahdBuiP1NUEBz8aCaoTmgm8Oo8y49R
	 9jQk3BWsypDUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15FECD6E5D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 07:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178064427371.20937.13143764387840609739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c3594b1a8652ee3492afb9f69473b8f7ec96fb63cf38fa0834e816b3ae2fdc1
Date: Fri, 05 Jun 2026 07:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780644273
