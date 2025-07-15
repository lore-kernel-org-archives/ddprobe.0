Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0883A273D96
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752567594; cv=none; b=Hf4F1NC/E3NaalYJMzgH1bqd99xUdarm2PoaAAJ1PUNeiF0SkwSrAHCh3oIoIm9/ElsKl57YN24kgPPBSN3qZRIkX5R2hwMUZ6cVCrAnbLxcTzBJ+CuHBjpADXEozfWCPsS0uI3kA0wc1TH8fLrO5i50xkK6Nr5I2NVpvbJ2194=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752567594; c=relaxed/simple;
	bh=UGQWIqdsUKGzT56dTsH8GUVG+9va7yLwzxs7yt7BUxE=;
	h=To:Subject:From:Message-Id:Date; b=Bsf1TI6McHu7FeocOClGcLM3GtAsefpDqVbN7dzyq2aaPWJMv4JtMdIpPT0B5zrWLqr4EKAGLz36BL8BgIv/VTc3R53eNXV2Dy0+xr+G4y/PhrAXNEN1nSpsy5dlN+lxplrUkKB4R3bfJ3xhpjIlpGE6JyDiYTTOLc5aojGZAGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jpOln5Fy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jpOln5Fy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11B4C4CEF6
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752567593;
	bh=UGQWIqdsUKGzT56dTsH8GUVG+9va7yLwzxs7yt7BUxE=;
	h=To:Subject:From:Date:From;
	b=jpOln5FyeZ/Lp62B9B8186w9BIlQkfedhLmX8VQ12K+f7C/3W8OgZEQcaGzzy1Er2
	 cBv4OVaZZ7I2m3ZOcqnrtPz3NXlACSe6gi5J87jeLVPDKJ7yRZVf7ZlksGiIrVd4Dn
	 NWpdo3CYZ112X097vF/SKpqKRKYdaDD0l4iCJk/3Rkgw1BqFs4nQDtyI0K3blUWdVO
	 o+lLH+dqXnJtJZzP2130iWmZ7zrkBT+6weQmiNXM9ycOuvr/DsX0RXOYH5XVrSjqL2
	 cmQRv6ueC3ZuzTfmhegs/IUt6ysDnQNngoOL20nLHXPrh9iF7DMBHh4vmOjW00PoBK
	 6eRzXzsG8XllA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF6AC83F1D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175256759357.5716.17010362920697475960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a5f9f0271e17cc907d8eb126bcbd27430baffbd015edc6ca13294e84cbed543
Date: Tue, 15 Jul 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752567593
