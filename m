Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21CC122A4D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749511194; cv=none; b=DlJ4ju782IPu/swJJ5W7xBvvg1Kow1Gm+z3nchyJhPOXDMNFf7VQL9A0ctqbarUlU9gwUHqT6OlWUATee27fNe40FYX0oVs6PDz9pM4XGwa/gV2t1WYjT/eyFwpe04H5o7W3GYqaOdOks01QYjuoPuzN8kb39ueM0Be3QVk2+uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749511194; c=relaxed/simple;
	bh=o+FtTxxRVgHWycsygI5c7OepzhR/tEYd1oqFp/sdDKU=;
	h=To:Subject:From:Message-Id:Date; b=GYlya0E4sSLL7wCtTymG9gsk7KNr1XkOYDLPnhayImNd8PPuqTT8+2H7UL9c7gKH+QZtlHUvBVdAfHGaSGBa86uXFxksCkKn4vAYbwwHRgndF3khoR6MmMABlAqpixOZRnKzP7+XMs2Gx57g0Jp+NUgiaVAuoGIbDbctF02C43I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAuoQS2D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAuoQS2D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF52C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749511193;
	bh=o+FtTxxRVgHWycsygI5c7OepzhR/tEYd1oqFp/sdDKU=;
	h=To:Subject:From:Date:From;
	b=mAuoQS2DDbexO820+kCHtYoUBaQczQiO3RJU5ZTP1jyoTn3mPMoKWz5PfEs0SMOoF
	 CZgsFaOo+aLtF1krx8T0PxUdUIu/vO8tLhetsrEcACsWdA0BvzZiyiTx5MTEODg+kJ
	 FUIRMbLR/aS8eURSA1r0urHEK5ZKcFvBLVjWP2cg2AOur74A+SnKsRb/Lkp8gjYXrw
	 ofaZEzqad2XLu78eSKwVL/0iu4az9ct0nRMrOaKpIgE7GYYJbpM81TzmzDT6Xo4tS0
	 qXQN3NEVMgtNmt/XT1IuxyQ5mapDN3cgHFjKN51Po6uklUxWE6FPNsZXvF43jRm0C1
	 i1tI980hJ7Pww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAD3C61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174951119357.17868.6765236019820631644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c150c028b1d32242de7f4ec160a10729e3a792a7edc61f6db9fb2cc77aa3e57b
Date: Mon, 09 Jun 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749511193
