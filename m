Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA551A2C25
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755578395; cv=none; b=XkD3qdnYTflf3jRJgoh5qCwMXtxlWQ2cqHYrcvv4DkBqSzZE2m+1rLhTsBinOBxW6mHtJ8W6p2qeeVAVpR1iHlAknIHh8gh9D3D2W8nIOvuvDZO5OIraRlO6R1bajs7mJ1bcDPQkyOkd/SpYuRFZB/QFYHh8FHo2KiEYPqdXkLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755578395; c=relaxed/simple;
	bh=1FOejWWDOUhVM/0i2cslrzwpzeZTxCXKqby/nU7tJGk=;
	h=To:Subject:From:Message-Id:Date; b=Y5ZmvRhAcYvh2WmVO6a57jvT9hIICJFdfdShPFwtEOgD8hOnyX/2MfzH7k2rezKEGvm6raF70gW3JLa9TrA+yfi9/4+YlzKE0T4Ca50uQCvhOzdDlYTtAiZMysP84/4assnldrBvNFOqju6XFCjxn26eF4ekDFnR/TkK9UDmFG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGmPMhFT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGmPMhFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8184C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755578393;
	bh=1FOejWWDOUhVM/0i2cslrzwpzeZTxCXKqby/nU7tJGk=;
	h=To:Subject:From:Date:From;
	b=KGmPMhFTzB75GxxE3ZCBMQGkX5kEdBXYLEGGxYsgHbLunh2bFDm8DbCeNLyXaBSEd
	 pKzpDhilQr2Rky/C+VdnkwTLnt3tvqNw7V45PhiOurMW9rGJPHeRGao0BApU4Vw5fk
	 p4jFud/yUyWXZEwDgB+3d1aBu+x11912n41nampaxKfQ9m6mCTeMcLVHI+NCUP/YVT
	 ESU/hfJqRJNbcWWdeuup9oqb7BFPBINTAlghcQ4sFKsUvJaVvjnLg6MMglM1MrRfj6
	 cFyMENarJxTvOWFQwPm88cbWfwZ3wy0Ciyj0T+A9622Gopu6JBY/JVSKQrEbPbsKX3
	 644e3ST8KvzEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951E6CA0EE9
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175557839359.21142.5854361382632307428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d94c8a8400fff4c4fc9275b7eae8cf56ee91276b1528fd822efc677e9ab66542
Date: Tue, 19 Aug 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755578393
