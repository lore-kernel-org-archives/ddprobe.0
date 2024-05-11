Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49FCA27457
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 21:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715461943; cv=none; b=rTc2+++oVHUkLwYicLHScX38Zp6JJtCzF3pIbGjTfFM50yBJtp4E4we+lvTeo5qgM6wgDq/JNb0wGHtKfWK4phqRl3toHPMHxofL+CXMk1KxxWnj9/FCaWq3P2ggdrpcg7pLCjlOsR4lu1r5LaoezSTqvZ9HxGzWHbrTbrjDmrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715461943; c=relaxed/simple;
	bh=fXHJwkOaqxw0vI0EHsVJOMa1SxWo7m4kfntBEemlJTs=;
	h=To:Subject:From:Message-Id:Date; b=hYP9exWO1wDNg16Hdp0QUoosK+zN4bDJU4uYyleIwL78HDggJER/1zvtj4bzrykbiLl+9slSqmqFaUlfEDQrZGG0n2FFcUPAg/xmuKiqPPBumCT1g5NgWzfSq5GGlSFdC4E7INeA+XiRqPj+l4oIqw84Xjf/6WvTF6KqaPpOw8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCXs72Xx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCXs72Xx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4591C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 21:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715461942;
	bh=fXHJwkOaqxw0vI0EHsVJOMa1SxWo7m4kfntBEemlJTs=;
	h=To:Subject:From:Date:From;
	b=MCXs72XxfCw5Aiwg8HtPp1CeMgXGw29ZBxI92PsB+Yso8/RLqYTn2q3z38iDNCAkZ
	 7lWQcrBDgGno/cFQBVX8Eeb+Afx2SzuAZUNXI45mLCrMRTpzqj8Va08e+KbCMmQFvq
	 A594lBMzM7zdTAhWwOUaDvxiNozFFepsxTjlDGlWCXvmHAMawzUkVXGt/U1ph2/Qnh
	 XBX6eSgsbF2XAZNz/EwXi9UYa6tbVUNl2H7eWcGM6zwoAb3CZ9crs7V6mI/ogQzuHt
	 NteLbHYrf9qyycyqduh9nYHhxqhxVZ2Lm+rQ9/jjqvhQKVmhOIsvwJ/8ZqDMK1KOMq
	 MYDugSTkj7SxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB15C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 21:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171546194275.12493.13265587850519769491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd34f5654ed5ceaf773c4b532619c6455d9a2347116bc8590df887fae3b258d8
Date: Sat, 11 May 2024 21:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715461942
