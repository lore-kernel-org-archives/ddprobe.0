Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E302C08CA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756117794; cv=none; b=QmB4XhPNDm6O4vpD86crBdI8Jt2523y+q379Z4Ni8zVg6QVpyuP9dZOIsUM1J+bMKlJUQ9UGEImgj+3wjMDKM6w6I5myJFaK2dw3TpI/NraQNsZJmJgP5XAUTIi4vQpFDtXbkxYM8O2MjuC8rUoqhZkFQygaBMPBUB2lyMad27o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756117794; c=relaxed/simple;
	bh=SCC7q+Em/bxavxRhJaPAK1St/lSvrsksg0FJkaPz56o=;
	h=To:Subject:From:Message-Id:Date; b=Zyk3QcIrZtYKSJgAZo6CUbf16MNsrkaXeVTgFXkb120XCHe8soH3v23a1sZItyr8O6yyknL2PDLrmyKVs3e3TvODIMOxMb9qtbQIQwzRFxLSEOq9nBwDQjnJJo5OFfXBl0ZWKu1qDLkeIFWj+3GblFQqTk0/w9H6FdNuOr/XVa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ux4RW3/m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ux4RW3/m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3C0C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756117793;
	bh=SCC7q+Em/bxavxRhJaPAK1St/lSvrsksg0FJkaPz56o=;
	h=To:Subject:From:Date:From;
	b=Ux4RW3/mXVAHM9VHcyhlPl4gdCKgE9dD92ovJ32rx6TU6ifyNk6fbC6LyfF/8PNn5
	 GxPCwX3FWwqjelJpUKiDse3FJPsPWweCc7LVS49HveJmBqCMaELM+gpytgvEP19xKW
	 8oCvNHiVOQi/cLZczPAElp3WNAfibO3CXVigWkYPpnf4nyG4biPZNKzKoEzSgFjTv/
	 iKNVIb5ms6G4yGJGaASS22P+gjhcN1hJ0q0TGT7jLg8V3gf04jQBunpWZhkb7Nb3Hc
	 0LGOom3NFeHBu86ZZl9TF6+dXM53Owd5OVAor3jVqVGewe9TMp6vEVqnXrl+1RbbPn
	 z2AAYt8ZkLJgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E13CCA0FE1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175611779357.2546.11565756231021132190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 152e589f1b3902a02edd58d7cdc134d304217f38dbfc7e1ff286360523fae65d
Date: Mon, 25 Aug 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756117793
