Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4318535E1B3
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 23:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781912794; cv=none; b=lFnhcDETg0sqOqsumGOtAtz5jljSPf69RW+xg6bhfng2m8pBZ/F2XhKmXU3xn6qmcn7z3lpPYr1hTMr+STl6t4l0DGFAbLv9S0+ntFg0EB2H8solS/t/bl1WOrKW4CpZpPSAprRjJ2QVPOV9wvP8MQMWreFa4C+Sro95EqyuGRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781912794; c=relaxed/simple;
	bh=jcNbzOLdDdjCksvw3TaUWs/0L407YV/MNn7VA6Dm8hQ=;
	h=To:Subject:From:Message-Id:Date; b=b8SIbO9YE0SahK8uV0YRteIpzK1nrcZsLykap8tMtu2h2Ut75ozO7t3PZ4hl5JLG+v8/LmugTFCs2jNwob4aeiOE7I+holV15zsvh6sH4G+hqa6m1SNWSyhZA28cNPaptQ/44WlvVU50z/Z22nSD8+Z7N+c0yQVkP0upeMy4oRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F6anUXsw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F6anUXsw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA25C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 23:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781912793;
	bh=jcNbzOLdDdjCksvw3TaUWs/0L407YV/MNn7VA6Dm8hQ=;
	h=To:Subject:From:Date:From;
	b=F6anUXswcZvdP0ZTbCGT6yDc/VSfJI4/imAB58+saC8bCQklrMHJX3sd6h7tEMvr1
	 16N6fG7la7do/QJG1+0EafhOcGruKI6w8yywKodCONEz84YyYAW9nMHpIF7IKWxiTo
	 X1YXGe+CTJC35Gx7BfoHvy3gcsJuu0kMF3JE9PZ5RajPcQGcdSpmYwa2c+FJ99/J8c
	 ZlSD/S4CZTpijP5hZ2jImPfK9bCbbKPx44g622umwM9Tz9P1brg30jsDaq+FpQYwTy
	 o9lz0ifoAjbPxnS299MMjwQKSEJNq8kGhBWZIvN5gjkBL1EQ9pMj1kmwx2HS4cR+3o
	 WUz9SRomZSIsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B86CD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 23:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178191279371.21243.12758407813662105500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e208dfd0a6833e59004a4a234357f2fd8a63f7e4b518173f6399e3b2de3c8b96
Date: Fri, 19 Jun 2026 23:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781912793
