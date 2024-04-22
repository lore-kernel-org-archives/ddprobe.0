Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63FF9DDA3
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 06:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713766823; cv=none; b=b5ufFG8lca2huzj7B62nIeAntIEb68iav5JIitxDjlL3YkUFKvwG4s/M1RiQR2GxZ2mdL4BrtfhLNkWxvAGYeEmW7eA3j868gNmwOoST8KC3i9e6yOPsfv87hYOxA+u8xHjLS2lpD8HXUHsAAd0VcdgSD0AZpxBYNNZ16NBVcsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713766823; c=relaxed/simple;
	bh=kPRQpm3XKisi7mgIiPkex/8cVLrrIbOFSpmLLnJRiUw=;
	h=To:Subject:From:Message-Id:Date; b=jx58CNck+ipBracsDkZ0p0o74LP1uWC2uENyi+53f0OlMgYHgMRLw3IFIj1OOQj4Lh2CfxL86cV94LksITyHMk4IUUHu7DXFXQY4P27wfZgeBa02nWz3rf4LGnBOaEriF6qEI2B+VznJ63Vvk1QO2iLufRjvLR8dABQEuZA40OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EInWrC1t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EInWrC1t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F4236C113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 06:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713766823;
	bh=kPRQpm3XKisi7mgIiPkex/8cVLrrIbOFSpmLLnJRiUw=;
	h=To:Subject:From:Date:From;
	b=EInWrC1tDODrUYzwWTxtgKptpjPq/lIKGscUaJrLb2ozzjWVgwU9gCulZIE9dStw2
	 e0culVnIsJGlBNR7+csLXNvgMqjcvNWr5s670swTRwMMmeRNuEioz9BXmZiUgjt1Dx
	 4KbY0DE0dAeoxQCj9Osk1yzl+bOf13i5hFESjDhW4gaMFNRpBQ0prDx1Nx1dXuhJ+X
	 z/OfEHwjfjW31CuQzvXR5xBh2cKDrQyfwrCPPkkZWflHSHWKow90mvidtx8uQ/uK0M
	 7HWrXztsQVRhHX//UEW79nZvBKA2XSACKRKr/ynlZbMn68vpeBdz77+0cEN9S4xNEB
	 dNB1p9cWmm2+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7861C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 06:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171376682283.8410.9075233768252551113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3af1b74d882b62eadc2be18246cb144aa697eb1278881c62295499c6599ad7e1
Date: Mon, 22 Apr 2024 06:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713766822
