Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EEF42232B
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 23:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717369523; cv=none; b=sYTDaqa3xQX+QDHy/mXGdyxD81UJjE3B+yFd8A4dtFHFpzCnxbtbRZAbVF9dpW4ShNXKPeQupcDAWbEPG2vXLdJRZ0ZaHNpDqTUnh+I4ynyOi/5zkVngv6aIC/b7uQwxe6l3l5IQ6rJ8l9C/chFuglpnT9FNV1ofBdWj6L/3ZHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717369523; c=relaxed/simple;
	bh=Z8EY5o1phSpLqv0Bi+n0gn2kTpHEwhJR4SuEYL1sZRk=;
	h=To:Subject:From:Message-Id:Date; b=m/sA4JzCqNBiOPMioCj1sGdDMA107CEw5SIhhUANwgY1+LNZxgXo6KmNixkN7BQoX10CPnE0AleNP/tj2Equ+WRKpz34mqIT3i2zkWpP8HHSAmaBCOxAlb6Z+GvR5q+1TDic9XA1NR2QzWWhLRlRa1NVKdn2T3EKX4FDZx6FMYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdsRz0iP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdsRz0iP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7850C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 23:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717369522;
	bh=Z8EY5o1phSpLqv0Bi+n0gn2kTpHEwhJR4SuEYL1sZRk=;
	h=To:Subject:From:Date:From;
	b=bdsRz0iPwXZgXDdq5JZPi4n9GmmRXm8Y5uwLHqOMQbJ0UM2lcIHmBMCod4tRPRpfq
	 YI5hkoC/oi+22CtI8YbzuFhPO8BQi6YDkKrw3t2houG99ouq8lb5YYNs8/frFvWCLI
	 6R6RbzqzdF0Z2dkQmfqg6F1nufkAbL3kax62LkfYGl63+cLzkqmyg98IY9Fdvouida
	 WY/QM9c4MGRkXs9ad4/FpqnSLojy0lM3drIMj+XVbBqjccQD1N6WhlAj4tYuuPQpsu
	 dh482EgEgCxOFcVA06bU4AZiOfwGstXH6/sDuxu6SMYM5qysV2KyGugg5gsae0Rq8F
	 baLhzqIadoy3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF2E5C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 23:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171736952276.20434.6396649711916314071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dbee29d2d081c7c6626daa0a50d39ff31f5672a5514b7853a19d5a082c713a5
Date: Sun, 02 Jun 2024 23:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717369522
