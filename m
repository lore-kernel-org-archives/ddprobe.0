Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58BD24071CA
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 13:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781099734; cv=none; b=PGNEysZJ750M8Vteh7NShbFAbMFUk2z0a0oYLLDEPHu3RdFVUJ0dW78GNLmpySxin7C+4YNcMh7UXrA8gPLlwrlhtOvJsHRRiR3CnKs1me90tHfa4J+M6QWGjeQEXHVirpMSy4lP8d3O0OMUUl56nrgfD+TrmAohbuoXFUwLUVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781099734; c=relaxed/simple;
	bh=b6xc9MVssq4qgXP2WgMrhDSgo7sTPq1lefS4ZTnORJA=;
	h=To:Subject:From:Message-Id:Date; b=KjC2p6IPt8FnCgLK7hkRvi4gTD/VO1oBm6rR0zrf8YTmKIBKdFDdG1RDwzvt3j5IkeEZJd3hhbb9qxwbpj+J+OjR3lkHelkrcHvvxUQJ6LvjQ+/UBe9CO7Kr7ODL8UH99Swph9SLS47sm0cSJ6unaSKSILpO9BRTSCe5isopEX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jx/l14qk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jx/l14qk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A9BC19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 13:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781099733;
	bh=b6xc9MVssq4qgXP2WgMrhDSgo7sTPq1lefS4ZTnORJA=;
	h=To:Subject:From:Date:From;
	b=Jx/l14qkIoGuV0SLMzcjQ73gleRXutH0/IsDZ+0FZMGAxAXdago8e9NLdd5UTfhkz
	 hFblliPV3wF2KwdipiIfQrEVY/QnP24oE4jLoi7XlheY665Guuxrs+PRlnKxF+l2Mv
	 NWeusFgmo8IAYHvP69r4Vch2o6AVt5L/FfeN/I1S8kaV2Wf7qvzmg/hC/pe1dhx+/y
	 tyqVbAkIOrZ4sIk/z0cVaBgr2Pl8rbjxHlVor1fyNcaKmBodbiatr4IT0a9YcxES1+
	 Amw3KUVmljA0G3ZEHOvcDnnBH8xqQg8u0m07xWxZCu9y0t0vUocutoDP/6KF4fOYMi
	 ZQA3LWwDE9J0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1767CD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 13:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178109973371.16812.11012825749813282395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61615fa62eaab9230cea5306613e03960fecd5eb1abc99a8ee01cd7826462de1
Date: Wed, 10 Jun 2026 13:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781099733
