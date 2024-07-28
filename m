Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A2423776
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722160554; cv=none; b=m4KZUezeg42d26d0tkUgOVI3W4/Z/7AVB+cjRxB5nqTy4hDCAvgx8KvqxUZSUK+oPhAa4I7cdQngqbTQ4AfvGuzUdxMKdlkUk8IzGnIv904Hbm5adQYxjd7entoxWND7Hu0ezSyEU89LA7jzdJMAMBj7REI2hRRyS1uoootVR6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722160554; c=relaxed/simple;
	bh=v8G3v/rGdUmGbTznPbK/llym0YgkNs7TZCWnZ9VK8nE=;
	h=To:Subject:From:Message-Id:Date; b=Va661+DwK6I+wgFkLlEjgLZzAeSk6AMUlYDzmtn3GJemWKxaVFGr2B3/AX+lyec9NccqNm4D40IdMR0W+CMXkk/88rUK3pA5ixCjvo7su1mFKkl/gdcv88lZcSMEzsR1hRgz44Gr9zMwFenWdOTyd7mtqapeLnoBbUuFWynBkAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AW62rbz1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AW62rbz1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC163C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722160553;
	bh=v8G3v/rGdUmGbTznPbK/llym0YgkNs7TZCWnZ9VK8nE=;
	h=To:Subject:From:Date:From;
	b=AW62rbz14YbpGXIt9e9mpLEMI4Nu9poKo/UPPWcV/faa4EcB6y3aMbvZf5WdFFaja
	 F8kmrQjgYhIaqapvIfjdAaXImy0dujPkaLuoDdUrf5ngH/dnqZxJKOOe+uPo+Ksj3S
	 pas0T86eNEAE1FZpOm+pBaJoat9rXS6QcqTLPXAJCu0u0KtIUoihGNqW0Z1cIh0bs0
	 sMQgiA8x+Sqk4V/kjJvMPOT3TJB6FmVk7pAaBYL+dU3GRrCRQGrcZxyuyzzHvwQRYB
	 LObFAFdtXKeNhMUT6vbugoKR0gC5cXOG7fRXBxIQrQY4PTwhbUBzrYn4O3I12/LpMh
	 FiVQDVo0R5NPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C1EC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172216055360.1957.1836645381782734972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 834b5b8fceb512f3b08b97a7ea02be596e2886f8fc5b2a3e13d3fc4bf808603b
Date: Sun, 28 Jul 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722160553
