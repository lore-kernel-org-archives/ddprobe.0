Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25834191493
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751381396; cv=none; b=bNrkUg4AujGJiDYuzhqGMthIWbOloukzdfjuZzM5E0wcGraUyGFqi2CDpeG2nEcYKiVy52qqOUfsqGxilvKk6ke9gXfSIKxfJoYLh++D/xh2N5mDIEugkVPEYtCb99d2S/q73pVi+xUPNaB3F/x28oXAqPoBjpDayL4f3fS5ntQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751381396; c=relaxed/simple;
	bh=dow62sqgyvgCTkARPq0RdoC2D4sy4GPMbXYD+zOSwHk=;
	h=To:Subject:From:Message-Id:Date; b=d4MBSzoPMiVEoCrMsohEjku+l+cuxWayo9KNx0UwOAOtW5EI4iJhoWMjqJaOs9nRpu3mmEU7yhLc1Exuct4fyt8hVImPQhYojYiuscOZYszgirbC2bSukiKRCNuCgBxeGDqmHADKvIh9Q51dhXrKL0a5iQq8nAfbkU02RaDea38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGQCaB5Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGQCaB5Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B15C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751381393;
	bh=dow62sqgyvgCTkARPq0RdoC2D4sy4GPMbXYD+zOSwHk=;
	h=To:Subject:From:Date:From;
	b=gGQCaB5YWzCTzuCnJd9pB2k5805Foa5n/55+XiF4MXfGqi2w+77+KF0AdcYETQ9Aa
	 f220+Pu0uXEXZBYhSvKH+gbfVVhUgOg6SO22pHgPyHJKuLt/iJaJm7M8Z5pSFXIKmn
	 xpk0Hmdd3p0s4PbeYgo2BIHyQLuJxPM6CagYOE3setbn1+RnEn+yufnZL0FsP008Uo
	 5+YwEg2elPg8O9eI7apOYi4AuufjKW2Jl7+CaEzQ/Dflz3JONH5H5hmnxqrlCArCQl
	 eWYnKYAtYqQmqF7WGIon+j7IlL8Cym8YiWLPzYcW3y5OmPjrOPhzw6RmjC2o6JNqUi
	 nq85hjptCfnfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956C3C8303D
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175138139360.18342.248792125078254101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9892ac67a5acb8a5d2b043c422a2999d9a041e7b72c3af41d853ec9e7fdd011c
Date: Tue, 01 Jul 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751381393
