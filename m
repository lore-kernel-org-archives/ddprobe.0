Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DFE42A82
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785138034; cv=none; b=bICeXfrAenTBIfBLaXOnybo4LEsAzIrNzuqlyxCRVLspjoBOiIpXsmYxb57dhxohvDeKcNoJBGlZJ2Ir7a3W9k4WoyrkH57vjFcrueMESXboW1rP3KS5+B6oUWEKLorFxqX6XZZA2tJPXvVrjjNULsnbBWhbUBgnegUx8z72qT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785138034; c=relaxed/simple;
	bh=IlmD3zwHd177imdS4kCTYyLxgoUJGAhZlB5ht3GGOuM=;
	h=To:Subject:From:Message-Id:Date; b=NebQZgRwdAajTN3Lww9Q1heEgows+TxIe56olVXhVHjPkrR6Id1UM3RvOZ41PD60x1he35JrFHr1zaPXSYtjUbILLY4OYGOEYYJT1qQIqrloNWrRRhJz+qkz9z9NtPf3Dc8q3aeBUdxHTHFKd/mFp+G45TY3kMnbmrreY1qGaMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJpbxI/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJpbxI/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAEB9C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785138033;
	bh=IlmD3zwHd177imdS4kCTYyLxgoUJGAhZlB5ht3GGOuM=;
	h=To:Subject:From:Date:From;
	b=pJpbxI/A9oLj/AdXffosed2ypoKa8ZUzXQ6HvB8lZCU7D546GdC3m4i8Z33U1GF7N
	 tREGWge4WgBaCmgvOpJrPFYjOwnHVF8D0gc6vQbIQe/c7aIif9/25ihSTyCBRX5SyV
	 MjZdlmfIzrWFOA2WBQ0mVDH+qTJnSj937kuSCYZtL7Z3W8UcGpj5o+YhAoVRvG4Dcf
	 fJVV6ZTdgUsWhdmCdQFfYp1oKJrJydLcZlOYXrnxgYvF2rwmsoGauKK8/q3AYIucrv
	 P3L5JapPegMEPsnNEYwc58/hLxTV0bm3h7HYZka99mmwVOacUd0IT7SPpTLAxjECfn
	 ZJ+GB5Pcer8Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9883C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178513803368.22686.4776508654698383623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78a5341131427930ef52015aceb21c2077be05fd98931102df6fefc772ecab1c
Date: Mon, 27 Jul 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785138033
