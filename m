Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5126219309E
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 14:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717771043; cv=none; b=oRWWJBzjLZ984m0GjhovpgvJyocxxj+/K1/97N4GoEWsXh/wPEmAFrEDiCEmZc0+claFvHT7GtwrRxEUOG0wxE8PzgyPhdqIB8XvXWDFuLPLXpEnwLg4xhGv4Wm/g2+ko3DHBh1+6MWRhlqmbNDs7Diig2qNBGDieFYLN/0Hr9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717771043; c=relaxed/simple;
	bh=d24p8q0Qnus1zMFqSrhEC52bZ4wCBx0zqEniW4pAz0U=;
	h=To:Subject:From:Message-Id:Date; b=fj6I8iGjQmpP5XTbWGmQO4TcPy4gU3+obXhkHbWaYO+UDwVRYCApvR30FErlw5RO8zUzGeUfU0yJgHnUL66iUY6Y5/A/nY5JbPelxRM7apk8wTBi7bcEm+dIYKKQ3RmWFnL8U4lLxqjGkqb4jTCswhrGVhv1Na77z9l+YYzvyaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFOLzK+D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFOLzK+D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C4EC3277B
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 14:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717771042;
	bh=d24p8q0Qnus1zMFqSrhEC52bZ4wCBx0zqEniW4pAz0U=;
	h=To:Subject:From:Date:From;
	b=QFOLzK+DON1EfuVVMa79Svh7IMDITPGwQd49fUzWfRDYpmeDiSm5bsw+hgmtxMDml
	 gtRr1Rp7Bh8O/Yduh8izXGbJxUwi4s+9UCpMqC0n7U5/BoDke6ua87YFZtfhP79UZw
	 omc5uJSOvp7kv6ezna/Wg6DUoZII1CDd2GQru+z19fEvyXSOH/bgNIbdh4ITBiODIZ
	 zWlmn6z9mbnNi4UUe6e6nXjj2mejBPsclQWpukOPXmd3RVThsEzrB+INdPF5weG83O
	 YIQxNXJReSI+SrSFtvgPPhxB79y2faF8HoyaVfGksaF/EknLMjFOcP1hGqf9c78fYw
	 FgjutE2rfhhHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C21CEC27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 14:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171777104275.31727.1003885023731895992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4df35d80a62a0847081c66b1b43493fc17a8eb34c4e5122bad06f3c34e9b8859
Date: Fri, 07 Jun 2024 14:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717771042
