Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF132BE7BA
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787973034; cv=none; b=CnPxEp2ECbda8rlP4oCe7RMhdfoaC75somRKSlpCyvC5dYpvbuuTrGHofR6sVW3oNpA9x8l9ueNXG44HZDRYvV1AaDCgzmyCpq3k+fi5w3I1+tzOC3GDO5iYejCP7W1bVQGqfCty/ycpvzYZCjZA26qSpEfLptiYmblREkP0+p8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787973034; c=relaxed/simple;
	bh=8V25fRlTKyA+tfjsLLtbktsqwshkj9xwvsOerXpDzW8=;
	h=To:Subject:From:Message-Id:Date; b=KAP+5LRg1rBE6MioXe2ecgfv5rKL0M+GpLReedSRQY2ZQrKw8yiEAtN5XloX7bbNrKQ+YwGOZ7KObxaPbmUAF3zF/OH1Tugi4YCtZ08f0ZjFc0kDJWDzGUa5/lckftRa6pu7KV0jKS/NhZc9kkIQrYElIFtQQCaGn3IeNQXXTr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3bObUPy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3bObUPy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9DCC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787973033;
	bh=8V25fRlTKyA+tfjsLLtbktsqwshkj9xwvsOerXpDzW8=;
	h=To:Subject:From:Date:From;
	b=K3bObUPyMjMtERtoacXe+MOh677CkJ08RqayEZ7tfu88gw6N5L1r8/zJrgvBkN2BH
	 3CqURJhQ2g3IUyl8Pt4k8c8Ps/3w2jWnVOaFVoEbC8v+nwyd/ylO4obIfWLmzInLXU
	 IdgOqcq4p3nEe3gdIzDbbCuQJCKtClD8MhTIFGGfpwk4XXnwbIfpC0yhiIiCnHHVW9
	 KciLdTFD35Kf+52TRGIpJ+XBjueuwRcVqo9PTCQkCcO+JNoLmEJ/IRWJdz6XmWQAdp
	 CjIf8vd65yF+8bvbYpY9+UjJwPmmZ0ZfTz9lenHplgvqmr7gB+CbKjFFZAU4aVaBtI
	 cRhpLXPlWn2CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CFBC61DB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178797303368.5584.13432991179387539952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce89be63274d613b2286788157676ff5fdc3a1c0af95111190d52f8a737c1d7a
Date: Sat, 29 Aug 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787973033
