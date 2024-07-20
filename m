Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB1A3201
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721439354; cv=none; b=sx3gtaVJdtTc9D9fmekLNTbfXDbKn6yepkcXynan7q/Lt13tUpj1WzrLmx4XOEukA7L7TMbVCs0AgsOMtgSuSS7/99MbjpVBHUvdW7lhIn+d06jmro5bOpXMLnl06HBe8p2/sQrSZjg9+4vMa9ANuaXyc5wsiW8W1TwlkI7NHNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721439354; c=relaxed/simple;
	bh=o1aVgWhezRf+yH3zWSbNh9fRZHbJ7Hiy+zyCNoeYAGQ=;
	h=To:Subject:From:Message-Id:Date; b=H3kxn2OzmEajG7CXA9QqkppQNE9T3RZsZHFIax9edrvCwnEmdNCfG5Nfg2Lddnuns8n/o+icEx38TFEH1d6K8icTqh8QuqNOcpqbQjXttJB9PFhC2DBFmDRRdE1gceQX7E5XWHOlCFcz2P2Y0V0XkfuzZsUtayi/kFPLWteqmRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/fmDpMw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/fmDpMw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C34D1C32782
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721439353;
	bh=o1aVgWhezRf+yH3zWSbNh9fRZHbJ7Hiy+zyCNoeYAGQ=;
	h=To:Subject:From:Date:From;
	b=U/fmDpMwVfcPgQW7sRC+yyEuXhmNAB0TaDj3Oaa4Hk0vZZM0j1ZI/GgIcnNCH42KE
	 qnj9unRrPh7X0YecglgCcXCbXYdcDpheuGx+8f7Fw7NYLUN7AfO2bCfLRHJTSsMPVb
	 ZhMRNYV7Wb2qtF4s0K+lY/vbsDlF/XOy+NAed1Xy729S+92+d15+RrOJJqelzWvhVq
	 oW+4rfBAz49rqzY0UF/a0bGx4edezZStgagKr0dxut5c33RiVQ/kC6fols89JcZe/t
	 Dfqh72Z4Xa4w8QfNEUijg3x9nntZpZHO+4CuAkqspdO7eV8yhBHfsSNIqeBUduDzrp
	 9azs7uLzsKlwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED50C3DA5D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172143935366.8333.3524107540108675128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bf5978906f63ce462093356378a5d53b5099c4c93f9fe5e4d97295a008240af
Date: Sat, 20 Jul 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721439353
