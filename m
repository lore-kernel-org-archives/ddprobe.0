Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF3B61E49F
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755322794; cv=none; b=d68khWHFBHP2NVJGjrjw0bMnSVNAZSJjYXt2YHnI6gfDKzGLBgDW7qQDStJFLUEBc7POZBZbAH0hQbPJc0DjyavM8KRPsB2OXrHXYjRpn/E0dNrXZQ/rmN3zrrIKHEF4dDW26AqPVHb5/mPX84O7RelPlf/4Dtse6rLxRwyIqx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755322794; c=relaxed/simple;
	bh=V1p0VVALZFLEiYUrYGjl2TvsaCdBL9mAZ++Z+8IVFpc=;
	h=To:Subject:From:Message-Id:Date; b=VcXvCnhPhcro6/kHtPd3tSpQvgaBq3ktgcLpuZjkDm6z/QTSQVyjLTwwprWGKCCszMgyowMXhzb3ym+klH+7yJrWtxk/u6GB5hNWfKsD730b9jLGO9GQBxM5YzImzcnwrjcq4pVYv/4EQjyWeNgqbbN8F8imyiB3BV9U+j5cWW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1Q9oAmc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1Q9oAmc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDC9C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755322793;
	bh=V1p0VVALZFLEiYUrYGjl2TvsaCdBL9mAZ++Z+8IVFpc=;
	h=To:Subject:From:Date:From;
	b=b1Q9oAmc1jEOF4JQA5ig9YY0LU6K1g6MbMgbKX6+wlGyw2eqnTBDVcXmfUoof/ppj
	 xM/LJvr2XDPO1TLPqC6VQpmnicUjcM5Yt/SJIWbd4a7PmZohqeYR5yhbptYRlEFFlx
	 XOYdBdQkqcW1s+dCTpUhPuRKKIr+qmc7rJs7TQGu6I62C5eZ6unU+Hhds8kvXICLcA
	 tss9L4URH4jW/jTUJ88qfts6uhuT1bFHYtGTS9SmuqJhrnPbhe6YuObMwxtxG1X1aa
	 U335lzyWdT9ok3/3p+5n5rEfp06zqdNolkB+dhIWCCKsJ+dQq5dfolKZ8kcQ+yrtTu
	 VL8c1SZpvzahw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916C7CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175532279358.17671.9455856059113682940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c83aa910bd7863f426aa0797e1e0a81e97634549350f5e5f7ee97d1335e52578
Date: Sat, 16 Aug 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755322793
