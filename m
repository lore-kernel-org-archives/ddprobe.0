Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490FB14900E
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730175954; cv=none; b=t2Kty0kNH7a2VShA3slk3wts4BpYFhSVbKL2wXXmsyw3T2prbKoHe8FTxliF/UOSWD42+6gohaXRocdHsQICYer0sSN+3zEGcUat0ypYDGN2vGpvtSR9knoWsG6caUszX7jNb94fObtdLyOcmkP2F5xZoHrDPZ3EglkjoqNbVxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730175954; c=relaxed/simple;
	bh=q6U7M5lVSMiDWzIvOtMaUrSwiybspwnSxWkACgcdKbc=;
	h=To:Subject:From:Message-Id:Date; b=gpeyE/B3kDCrEBqVys5JwlCLyyAIWbPVlOWoZd2lMLFyPSIcGa7qjoqwVybkbwJA0vXAe738NAWv0+cjdgVoUrjWwAJ2+IlovyEuJlg/FNOzWFURxMn3Tf2Gm5pZu0A1W+0nNe9C3aHN92utZwgDfA1K25v6421zn74MMbauN1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQ4UX5f7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQ4UX5f7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9F3C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730175953;
	bh=q6U7M5lVSMiDWzIvOtMaUrSwiybspwnSxWkACgcdKbc=;
	h=To:Subject:From:Date:From;
	b=oQ4UX5f7SweH5fjBJo9u8GAbfuDtIO6FAy6d7ICYY4G6Psr3HX3jrij6m5gqtlEYn
	 9t5lOaNS5QVvwze1XXzjSZ/a5g4eO9wO+XjRPU23wUpwwukfr5GB5C0T0aO6CclRm/
	 Inte5EUkd1/s2CGo/stMiiA87YLsx0D2b+UstTfYyE/zSg2rAFKydnSYIMZ1WFiOAX
	 w7ki0vApqRuEgwptDs/4QHFMawkkIMnoT91l2c7CakZyheByinqwAhtt/w6yxsPg96
	 w7oJHOx0jdxqDt1xllYJfdQ4GCNPrILAC3LH5w5nZfmAcvEOvdbpyo4Ts2WqmS5ZtV
	 nz8+O6qEYQHeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E234D5B874
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173017595363.17361.11774325071226762663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41d4f84ebeb923fe2fcb8fa222bd1ee4e4d33441db40f5760b163756534ff6fd
Date: Tue, 29 Oct 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730175953
