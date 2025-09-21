Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D45654791
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758483595; cv=none; b=MHjeQLjNISNRKtCM5kkoJro3oOWtOG7mU2DIsAYGAYy8mQoty/p/D+Y0SDPYF470wKtSkUbUKqwIjITi3TIlXBy1tBsKdVbWK+a8KHPgEc9GK5qCA8sUQYyZZJjoWjCW5vn7uQGjnk9LLJRvriO1+8iezaA/TA9ZUhkfx75H0UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758483595; c=relaxed/simple;
	bh=CoiWavvDoU/F9IY/f3YPjY/9FiVk2mI8/JYre7hPmBo=;
	h=To:Subject:From:Message-Id:Date; b=ZRVY4NefUXKiHJX8Q29Hf5LHyJWU1JLGcwPtpRdUSLz00IXo4GyAHoQRp31/aOWA2XM3KOnBkAKGJS192WR1gBERVjg9sBQqo4NqfQ0CnzQWKfzgjJWMBgGuHX5czWgwlKZteoFouV2U0fZNGVBRfOkliMRHaKeT5NHPg+oaTCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q0Jyu62M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q0Jyu62M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F00C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758483593;
	bh=CoiWavvDoU/F9IY/f3YPjY/9FiVk2mI8/JYre7hPmBo=;
	h=To:Subject:From:Date:From;
	b=q0Jyu62Mm4e6ru1Na84s7I+TWZ2UWtMMn3MJppEnEWG0gmXJ+wSmFmU4HdncUr6/z
	 Rcg2AlZuixwJkwBCTG/kP++0TBSaAZJFGz14Jm1RPu1q0a9suv+9vVRPPMRoS7WPC4
	 Tc6s2r5bnRfzZ0wMXkYjEfeMU3OBo++Nfab1kDK7LkpAo+6Y2vGJWUKaGEAkGmp+Pd
	 7ywWb4+ylpygwkmnb9KQpgP/fP8heG6cs0gDFatutgcND8r2J9bre3pQyXEJum5jH7
	 DQIMRdcuvWR7tRP8rdAznHVg1f8HC9fcnYIz9GdkxtSqIdJDYb2CUOQPkxiBb7wh/n
	 mAyjr+ScMgA7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A16BECAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175848359362.15084.4045562715233798773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90cae9a0ad4256403d707f1329db33a61c56c5e51690ed4ed23f12015f22680e
Date: Sun, 21 Sep 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758483593
