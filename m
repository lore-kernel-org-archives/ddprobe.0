Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E9A39FCB9
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 19:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778785234; cv=none; b=q0k2nH6ezS723SjUYFCJYVoqwhry8cEzlirWJCQwWZsiDEcqMiJcSZ6Nw8JYzvZrBTh0FxFBSE8ZYCF/C84LGdwlaw9+ZmRswuNrlB1PgwqPuSEeEmHatB1Mvqm82HSrH6FQxmw3McX+iJHqRKZrjOgZalNyMR8XahLyz5jAt7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778785234; c=relaxed/simple;
	bh=salLPrpxWNTtU4hBePF7OhbD2rfHTjq2fEJsLSFG/as=;
	h=To:Subject:From:Message-Id:Date; b=S40ELJel2ZW90ywqaNLV3Big4bO0DRi/cc04Rn+MhZWKMBDr+pVe0uOyLEhwArfHm4KXEwNLC5/2Gi5okIGwiyqZSetelSgrPwCpyVuVPb27zo4UV3lyuMWVavEYqGusq1WNmI8GAXPmZdDaEbVeMPDlmYxA04+JGy5xxg3JyXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLY1PHjP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLY1PHjP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C09A2C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778785233;
	bh=salLPrpxWNTtU4hBePF7OhbD2rfHTjq2fEJsLSFG/as=;
	h=To:Subject:From:Date:From;
	b=FLY1PHjPSGsVjsQHyimhAOzH7EBNW3cKzqfYXYfD+FXAhJDT/px5wuY5KLcYK36MV
	 q9VwEp3ji6lt0pYh1dDqsX9FUdUG+acAgSZMt4PV/f8bS1KgcMM8Rvx5sfG5Wwxt+B
	 vucFzjZbCg7KFDqsnrZrcXvYcD8/cY6ArDPgwldCHOFhJEdVTldscG6lbvRx5Wh6lo
	 J5ObuX0iRJJoEmnCgpwYA9a0hupNbQUjfX/tHv1rqzaj52DRqVgFc3+n5dT+Y/XNkA
	 YnYV2bSCMe4yF9CN0ImxWlkvP5sUzJW0DrWCbqAk4quEaIz9y1eEKqrA0UsZwW4rW0
	 w9T05l1G1ugrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8BACD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177878523368.25625.1814006009773336462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34949d4a54ff79540ff184e11c2c1292a64c7dc316618732d2bde74a6d969eb3
Date: Thu, 14 May 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778785233
