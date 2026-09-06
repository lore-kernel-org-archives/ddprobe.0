Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8774381E81
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788652835; cv=none; b=VA2NIElu2yLEm5fB+BI5n7emAMfRkkeEEYSefOpLaYKRwegouVUKL4LKIX5pAsStNiAJ2NszMk3jkPLnV/BGpyUqVqQBLBouNTFnWkbxGUMELUkkXle0/gKUhiNYrXaOa49AX48Pk8yxr2cfNcLdtkymKjE7h5ZO4t+r41LBfdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788652835; c=relaxed/simple;
	bh=MP4GUuQXfveprsz5yES8VzxhJ3sso0FH1/V0/pzldXw=;
	h=To:Subject:From:Message-Id:Date; b=ZqWpxEbVIjkC3ozFqMDDK4H8Fr7i2yiyh3WBAzgqvN0sC4n1nLzsmkUk66gVeMfQS5JNioDZHygVPxcpEjo5U2sML8qVKaasUxdoYhgbyZUfEqAdAjyc1pjyvE6m2Tnunoaei0NPfxXZNbI5rpBe2H+KUMzQXuIiZnH75M8wg7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5CUD6Ec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5CUD6Ec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1733C2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788652833;
	bh=MP4GUuQXfveprsz5yES8VzxhJ3sso0FH1/V0/pzldXw=;
	h=To:Subject:From:Date:From;
	b=W5CUD6Ec3jX6G3vHvzEhGiRGLXxyMw9KGIEDQcpfjNx5fWZHgqyfNvprrEIwx8Rka
	 mTv+tsutvNvG75X9ex2GP4S3v6QXM/6O9I5vG3t9cZWg46CCu2m7evm4IwB/1M3PYW
	 u32T9mLGJiBhl5mNUM13DtMNHxLBEGeIKX8nOKxGRjw2ilqrjcm9FBusbW8vzeLGXF
	 iV/Az5PexsvJtrpcq3dajKeYKpH+jgVRRdBr5Fk6YYMzq1QVon05bYIvW5NqlbYRcV
	 /nDKcz1UFqUXSsZxDU8F6mJTzG6E4yE3uCuufsIpu2mgfYhq3BNmuDbwEhF2z0tw2R
	 YqmPrxDbyezFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B100EC79F85
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178865283370.31903.17186279048315816649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cee431b8fe8925a25447861c64d79e34345db0724919d570f269d243a2e36029
Date: Sun, 06 Sep 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788652833
