Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267752836A6
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746552594; cv=none; b=fLFJHc+E8682Pqk22JgWGX0KcCD26XTqZ1yMrDZjbWY7/KeAJmpMKt6JTwIuCUIERp6cQdLhln/ty6HtcVVPtydxF8Vt/usdOsxqlbpVPViYh/IscdIPku3fE57w02aSQpAEF6gx2m4YSRMNUnrFz1Nq3mk1u/nV54m6j/IY53Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746552594; c=relaxed/simple;
	bh=T2bgFWmXTSE5XCTPl1fFG70WeYTV+KZsd5ExNAFvD3o=;
	h=To:Subject:From:Message-Id:Date; b=S52STrTLR9WuYt22T275JHigDj52Mr0sBEFTo6im1T3GYyFvhKMLoexoomRYYmZqcNq/q1cm8otm2jncnLtO2KRLbak3E++6FbQ3/90Vtv3YLRDKg2hXCD1r0tF7mWSmemdfcW8YcUx9ZNj2a8Y+YoGXFpbR5E47VjmdZU1/xws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pi9q6uBL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pi9q6uBL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8EBC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746552593;
	bh=T2bgFWmXTSE5XCTPl1fFG70WeYTV+KZsd5ExNAFvD3o=;
	h=To:Subject:From:Date:From;
	b=pi9q6uBLC7bYqagz+v6qzDk6i3ybZUCmJ9KGNkre2XSnzzPmwLpkCEDXFc07TLgmW
	 TdFVW1hnvpyTBUJtABeP9cVBw6vtsVHLQfSSQl+5Hr/2+bOZ8TO3EUr9JjzP/pKbtc
	 USQu1RCZ0waQOs5sof0I5+tNp5QRzGPGfJu+ixp5nOp8qqVZW08PGpB2zFLXtTbSWj
	 VzT3iHOt/dlh0ydPB5loWSYZ8mPOj0HQHagzonZJydN9nLN0PfAEuOX1ceRvKVE3Q/
	 7gYKL90rBEK8YOXNIDQI9o/II1AsxNQYUqTQJwhYBKB6G2S0emZxacVI3jtyTkLQOO
	 giX1nSzXxUEgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E741C3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174655259357.28267.6299958039644994325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74349d8f332e5a4cacdfaa47b5175e8cb1d5ba700b41e2c8f29d6b26604c8ab5
Date: Tue, 06 May 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746552593
