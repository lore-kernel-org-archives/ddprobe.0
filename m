Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1F58BE2
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 05:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714366943; cv=none; b=NGdnjLNwII+wl48ODh3aIhxx1eIMRmHQ4AB6l4B14XWsf0MdrBwojAq7NJS7jifOmYWkz+turKoO0RbX1qQEbY51PLXriVRI9eX+ZOtMMlVPFxw73uQC0vsbl2nfHtmBs/fFJTL0QzxGWl8t1u+i3GSjijf1ECJvh0PQ6ak1YKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714366943; c=relaxed/simple;
	bh=M1V6vyK+KKo4XN80AZN+R1vD7sQXNUDoPn6GMwL0ooo=;
	h=To:Subject:From:Message-Id:Date; b=JzB3xkX9yq4ckQbz5wICdioTGPCYyyWaF0WxOpNnKwJDm7cTd6ZicDF95TxG5BSbNYHaBzzhGNXQgPMQ6wyXxBY6jFdMDW1uHqy4Qqv7jsa2iZy93Ej72ufXJlU3qUYXICLe5CKUeBMGFPrq1t3EmD+9LIk6EWZI0RZuAsfbZls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7vMlpqA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7vMlpqA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF9FC113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 05:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714366942;
	bh=M1V6vyK+KKo4XN80AZN+R1vD7sQXNUDoPn6GMwL0ooo=;
	h=To:Subject:From:Date:From;
	b=r7vMlpqAriHEgCaF3DMXbHAuEdOd7wM6o4YsZVfw/jOwZrO8/AfOuCl841gMM5UjD
	 pYYotEA8n8nj+Y4hgXcd11A87rZxsHmGxfyjZCXT6nUNn+nu42BM7RAbvvCWsLa9yJ
	 +h7XL8n5LhF8ooOQNCbwWrF1uIy0lqAjmr0CtAEWLKDqNDvJC9hoyZHfiFlxR7oiNM
	 q8sSbUFHSFYjioXB5tKKAAp3OtTA8Cvio8o7agxRvqpC1TmB5829bnR9t5gVuG5/Zi
	 7oetMZyQGU1PT9zSpCW9ViQYs1R4sF/vCLdrkpvV6oKQRx1sQXI9RzW3AQ53PDYXE4
	 aPMd8qtgTbEzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8C4AC4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 05:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171436694278.1044.10550073356564239199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f6c6209b592bbe6972e4b41c1e19a0f3c7eb8f9173dc6994fcff67b19ccb43b
Date: Mon, 29 Apr 2024 05:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714366942
