Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29005280334
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752252594; cv=none; b=PfwoUzdHMvRizbCr6wk4vVjoapCzVmtdalm+diuQjXXgid6r1HL7MfBPrnDHQmJ6a1Wo4p6PSQQ+qmjdriVlPC+uvf6XnsIc559L3EfvzL3POlD7tIVmzyK6XlzSvH0Z75EZ87UBhrJCoya2acfvMbGuD0A1B2nXemfDp265OWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752252594; c=relaxed/simple;
	bh=qjtxtK/KkzPxgrF6Fyi2jpN3+sB9q3h7t6v41dZ6zGM=;
	h=To:Subject:From:Message-Id:Date; b=jmJeTzhlDN08SCJE+/4KIwFEwYrMzBQKxe+hb3HS8NCwHYEHyNn0uVFK6NdBZOD5mkpvd1GSbBvbYp64nnG0ZFKwC9FrHCNTc8doB8rr13/KzBAxjp1iJPzixird0HlmbOziaA/g8gjS/sJqNTz1PGYYMwuTX55Dt+v1vWBAB0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZpcVkRsD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZpcVkRsD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC835C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752252593;
	bh=qjtxtK/KkzPxgrF6Fyi2jpN3+sB9q3h7t6v41dZ6zGM=;
	h=To:Subject:From:Date:From;
	b=ZpcVkRsDQQImfu9CmK+bx+G9PZPkk56ZTz6pfUG36qm2nWSQMC1VUzryAw4VfPk1O
	 Oz6uh3ELNg7zySxAB91wlk8qJqqsbLBIdYspzSqr+1as3WbAyXlAizavn2E6yg1ZfH
	 b5B02pXUGey7NNdldV5DXMDp/4+8o/ACfcjQki+m/7rVFIx8tn8/4jskbSs2nE3ovM
	 6hM+VJKWi2oZGjcPmkXj23/BSegtsJUg6locPX6zS6f/veemknsUFVFZ2WqmxwRLpp
	 obSS4yhQCk5vEAeSTB1OBq5IvpPhft+OWexJmmQtHu64NaapWyeL3wReCTRHfvYM/y
	 pKYSdBl9ZhGZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968DCC83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175225259360.15302.4826744898964878364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59de937ce320348652a9eb4394fd8b885363fbc38a9fcdb9ebb89afd6d1eba93
Date: Fri, 11 Jul 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752252593
