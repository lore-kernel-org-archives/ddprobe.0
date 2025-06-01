Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AAD149C4A
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748765994; cv=none; b=GlIDwNv/HZ9cuEYMpACirGc3DzgTKv/nuvaqzWmq+warZ9K/M/tBvcZ76LMrtMp438jNWD7p05Bch+tdz10LHF3FrzKgLtHtnUr+uXvTkeqtbWkszl64dshQ+EfbJ3ecVuB8vbXxmMyYk9GUJzy6/0QQWwD98ecLEKoybvHugQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748765994; c=relaxed/simple;
	bh=+a6axe5Ock7UGhucwT/Jg1rmGeYohydgsATqiADMYyg=;
	h=To:Subject:From:Message-Id:Date; b=WssKYbz2FGSk0G+CHT7gxxxsM+bL2XP/bcVj2yRAbRJnq9ohSRVEMAqofxchoXoEI9C5UcyQUiIPJ9aOD00geY2/fcUnqzSP44NWWyJQNAUh6W+DWmIpbBkPBzWrYD2RyS7FmIQ/BSe5RpJxOgQuMNno7u7FMl5jhQrX1x/r5Bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L7coc6od; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L7coc6od"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5B5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748765993;
	bh=+a6axe5Ock7UGhucwT/Jg1rmGeYohydgsATqiADMYyg=;
	h=To:Subject:From:Date:From;
	b=L7coc6odFfc1hBfGWmkduKxPB2KCFhmwjJBY9cc9uFxNq9YIlR0ls8F+foA3YTL0o
	 aPt3H0tNOdsUPW6DGpZKTXh3wh6Krjj4LQ3Rk9IEU1sHldPDwbVB21dW5DXoA3aNM7
	 TqtYlj8zYPFTE8H1GbOe6jjiA68X93HqdQR4Mc6mSUyjBQg14Ia8IgK4s4oEyKX9t6
	 h24/lbFg7UjhlmVHmx2g+UcXxvdPxdcIM2khSk1GGHd/ENxi8dYDIWwvADcARkvLS7
	 h8d9MUVlJp5uGDflBts3rCuTHjppDBGkMIxWCuKYYKdN9Z5ykVEuLzITb+4zsdr0Wo
	 95/+iB09EXR6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99165C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174876599360.23671.1362894928755889486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01ecc26edeb5cd62d549651d0e774b4733a65e452aa047ce678e2f3aa337d0c9
Date: Sun, 01 Jun 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748765993
