Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA1E611E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768101234; cv=none; b=A7Yy2Ey+qQhHwWdFD9C71cRmuV2KnhCzGfvAgJtOfDUuAX7BZsyBtOnkKBzQ9Y6iYPlbbx/bw83+Bw2FsuPifAJpXP1hhVMixkLqXoxSBOOPlPe+dbzJhE8gFMna0UqkJiANoPXnc3CFDmPv/ECv6A2PGSa1OTwVS+DGTBnMrQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768101234; c=relaxed/simple;
	bh=GCmNzMKv20GoM0EBafrw505BS1XdIFy08uTQS7kUfOk=;
	h=To:Subject:From:Message-Id:Date; b=G0s5Ly5TrtqeZYsyjAW+4R/8uVDJKVeAINA6R4+mbK42+Hm2XtKzwhtXBIFKBtaQ4CgDr8uHcSROpzmFHBBtp+pfwLcfbknEEFGsyvtWoyytLcbQ8vCdMbBs5jTOhSlRQPq8VXzPLKtB/WF5wkB1NbUfpEUxuuH2cSv3mBHeYOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZwuPzGQ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZwuPzGQ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A931BC116D0
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768101233;
	bh=GCmNzMKv20GoM0EBafrw505BS1XdIFy08uTQS7kUfOk=;
	h=To:Subject:From:Date:From;
	b=ZwuPzGQ44GbygKmgvLUfmbl6C0o7bWLaEVCTNVaHbJN9odmGkdQJgwyuZ1p1+CfvN
	 Tkw6GaQnzAZ+FmKw49yw9DNQHuGZKUbyHx7Kh4Q3t5UJ4wnrbrm0O1RkSI5kbnpaWR
	 +46NyoeaZyAVH9SgcTjhsmjHHWUTjKzEAoR+XxRHHtoJAWLOuDsixCqFayX383mPR4
	 R2k1ZX8owKj+HI8w1xBrZER4EsA6n3Zm9+V8ztpAwAq30bUKC3Tj0LT1RlkCwW3lkt
	 DdwI4y+1L9pyTPolzuHxp0JJ43GUSD6dWBLyGUqIGWbDC4H5qguxcRkRoHuAI5e+/r
	 6V3UxNczrdKEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92847D25030
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176810123358.23556.8542877566387353722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afe21db5e68aee89d73c14710d09e5095bbfdf6afac053f9a1aa54756a94cd96
Date: Sun, 11 Jan 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768101233
