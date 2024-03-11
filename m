Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F155A622
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710117497; cv=none; b=jnYqTRgSFjEzs9qxYifFDIrDr23peuktfHSQGQrCwmczlMVG7S6SN1iHgkpja65adJoVn1icURL0V3hEJwIbSf6A5hCuZPgVigM1zoOMvi3jAcsFCpZ5ZXOi4u3YB3Ir4qBdOCOGZ2Qei1X4IJ2TtgfwKtdmht82MH+FA49r/vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710117497; c=relaxed/simple;
	bh=ijms9DL0wHiSyZtHDObb6HOz7qK6BQG7flf4cmhtSWU=;
	h=To:Subject:From:Message-Id:Date; b=QzRBheijtVEtD9UGLRzdw9E2R1B2ukJwkWMger0qLVFeQri8sppDrtX5n4TvTMeEDoHtF6cnTSHtGv7T8IWJS7y/JJBe2l5x3h/g6gf1nUXKc48trijOyFqP4xjNSPdLaOBsA2r+Xnt1mms8tGiBttW9I18YzN7iEZr3Fga97nM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f/EdZaXz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f/EdZaXz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DD2FC433C7
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710117496;
	bh=ijms9DL0wHiSyZtHDObb6HOz7qK6BQG7flf4cmhtSWU=;
	h=To:Subject:From:Date:From;
	b=f/EdZaXzA72mmge3eJY/fgwViS8KpdHbTTUVwEs40fH7dW3Ox/CfPzPrSPl80Ofi9
	 rXwZrmjCKnlJgRYf5sw/N6FQvrkM8zoG7Ibzv7JES18aR+p4k0LBwLtq/0cXW5wuhR
	 kmgRTb33dy88cf0tC4d60Ckk+leu8L+SVKX3NKmg21x17TN67R9UHBa+NIEEc47UXW
	 XuKicMA3jrEE4VLs57aI1J3/7jN78RD5MIscXpIzn3ZvsQaF/b/NwnBlMFITuGJYNG
	 S0P6cXGRUlbjh4Zxt40tScLdAXrF192i8Fpk2tx0gBXom8St2lT8ctq+yNj6QN2X55
	 3+dSrRIUb9GvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FB6FC54791
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171011749636.22436.17860565202300998400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc4555ce962eb9ef03d4b77a5e883797eb39dc284c42e6593fb8af292a15e4db
Date: Mon, 11 Mar 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710117496
