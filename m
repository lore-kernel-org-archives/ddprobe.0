Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC62275873
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752574794; cv=none; b=AOp3CSH/hKxa6XEhWlt3irr5SswJyFrXivUwnOdsbp1GoTB2hPfbO9DF8oIeUL5baHJJ4GAKT3LpDcl51tESxDos+oxN7r/cR08/Ni4+1HS77xXnyfmhMT8JUE6qLlApbVg8qMzLZWY++oNyje5z2FYLw6K5Wqk9dBi/vyJ5mZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752574794; c=relaxed/simple;
	bh=aH2bbbExexPUYEaTY8r3EN9iqecjM7ctWV1s8zJldLs=;
	h=To:Subject:From:Message-Id:Date; b=sO7T/0wSkf+Wbz2PjSEeHh1bc2WZs+6xrZloHY0n0XgWuOwl/020sdFvKuVw8LFmX2yVmyt2u12eUv0T5K4URcCweLE9ZII0cMz9CLMgWqYO1lJYhmEUsR8pMfPXNWy2ZbBukNlJPO3t5373OrM2PBn++HzVhX2O/iwuNaOhF9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RCJdDUjk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RCJdDUjk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EF8C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752574793;
	bh=aH2bbbExexPUYEaTY8r3EN9iqecjM7ctWV1s8zJldLs=;
	h=To:Subject:From:Date:From;
	b=RCJdDUjkhjXVlTx2AV/ON+QXTxR2Tv0cAObkd9Xg/AJfgzrT0G3ui3xcMlnAVQ0gf
	 +jcTwvR5HzaZsalJPM0xKHeHpmljE6mTJlGQumNJrcnIbZoA8qvuDdLvldWzUuzutL
	 zxP9uPoErguitntJo9nJMNkKW9l9+/BjF7hqmREXPF/8POwFlF7M2GtvZN1Kap+3gN
	 Td1bpohQQ0yxnPz7GmWKP2sUNuu3UIE8saK9eHyhlKOc394tF+PPzT2P1YgYLLu4Nn
	 StZuHvAw+/sXWFfmdN5cP5j9IAeTK3E1L++JFdvCF4iZW8CU4zeEbTQ/qZCbR78fLp
	 xdux9owAc45MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF43C83F1D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175257479357.6852.9831615780637074717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d52bad79227112f0f6d7f1c1b60f367ca276fb388483c46c7ddca586d2cbb5d5
Date: Tue, 15 Jul 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752574793
