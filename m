Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC23B819
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711392496; cv=none; b=X/Rr94Qa2c3mgZNXZqCsO3n8BfDEdgRfrynN6KNPcL2CdVmml8dZeIpFvvlfMIa3pulEUrMhCLPL4B54hiayHR6HYLr0JluwloH1Wao2ansD+ALIZuNzeMM+Vej+Lq7/z+lB7FNPefN9qjCbvh1CyyRCq+yt6Iet8bRUKg5sNpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711392496; c=relaxed/simple;
	bh=I7w4Srr1KBZvJHI051KJ2Id/vplk7x2fZA0c+8p9fzQ=;
	h=To:Subject:From:Message-Id:Date; b=PywWjCQbDGAlcGDTmHebOkkdK6aAuvSJKwag78e2I4rGS+SofJ5yqDDLwT0mB6J60se94eRdxrUVdxGUeNnuixBTpItwbzj2cEVfEPNqRjC0M/Le5PsNWnLpGtB9hzFhVnsdCbAuhlqI8NB8j8KwBX21hkW96aNByiMyG+TkAkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTxwFvdi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTxwFvdi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 748B3C433F1
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711392496;
	bh=I7w4Srr1KBZvJHI051KJ2Id/vplk7x2fZA0c+8p9fzQ=;
	h=To:Subject:From:Date:From;
	b=qTxwFvdira3g6PrXPW4NHAJth/z3mOuWmk81nZmbMhUKEAL/cayR1RJEKWf2M9rB5
	 KNgSRhj632gwsJrsP9PjLo7EXHrfSEXyBkBSut1NcFNcgWirgXr/T8hFcrnIKKl22u
	 nUZ7TtIMMAl9mvY0YbT9XVad/DNOr6iPCWOU0hvDZP0Vm3U0jwDp1E5tXp9aWceev4
	 utZqDGQbO/XnXsdBUxPyTa14xvcWs2FNtZhxWvXJs5pojWiqaYowTFvc//jSZ4eSut
	 WtO/gliYeKDkkiQlgDM/0SIfiIq0Nhzkyh3wDH6GpwsUPW3etCUzeLRB875aCWpcnT
	 RjSGw5cDHWoyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61A84C54E58
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171139249638.27354.3754411189191032291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbb67937b3bba065d0a0a1b6a20c318be34c8dd2f66ce0adc891d4cb4a9b4bf5
Date: Mon, 25 Mar 2024 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711392496
