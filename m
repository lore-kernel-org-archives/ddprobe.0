Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C783381C4
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791733834; cv=none; b=ccH+8S3FWDDfpo+fLSrT++3AL8d2Vgxc1oEtkjLFdzH1tBWrnTGfLp2aqLeUrCwaYhRhHG8vGEiD6ijjkYQLtpBrr8jDgLlt3WinqQ8Aq/Ljb/q26/LPH0RfzK/7t4PaO0V2u+Rnaf/SfZo8XZJa6YNUMGDJOMxzOL5qrP5JtIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791733834; c=relaxed/simple;
	bh=kPZEHw7EYQy9PowARmWQUF2DtvWmHan17qRVArmH6Uo=;
	h=To:Subject:From:Message-Id:Date; b=asRM3ckNoYsB4tMCFJPEghnO4IjPepLhKIJt9p3d5n0xnZxi7NUhrv1E/24sJGZSGZu7TwvTKl3IPXyyi7wyG+3KJ/56i+CZU5laiVMnX96sFHMZNFJW8iqohhZkYBmHvYo9spPHZQOa5qRQERR1xDaG3aYMJiE4WojQmF7Rx/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aA/Qn4tB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aA/Qn4tB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1580C2BCFB
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791733833;
	bh=kPZEHw7EYQy9PowARmWQUF2DtvWmHan17qRVArmH6Uo=;
	h=To:Subject:From:Date:From;
	b=aA/Qn4tBzvqNlXVtLeqWHFxeQEWVxjjljHWFDi6ocJoGoKkPwKGuKSyp3RbMzecaW
	 cjoLBqlS6Gu9RgSYxbXLlRetg9PFWttkou1Zyx070RVx2uZq9P04mfkIj3O9vD2Fbx
	 jwhKrOdYMJurCYdpgmpBD1C9l4x9xUg88oWbfDfdeUvTRPzJT0lBKKl+z9cX+kbsHW
	 rdcgDeY4KAHTl1eRnGJb3ITN9IFW6hs8ddhGNyHdw3QrX5Mw7q8HfEcUW+pJ/z+ack
	 AyWKFFpvLzyA7kIdn7z8vTJxb3qmR99Np5VjcN703rtaPEXt0H+xxjB28Kos1NKKqK
	 XbcYMXy/7Tsog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD543CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179173383368.22820.1971980123440656274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4a48469ae96201fe899a308830ab1cf465eb37f4ce1f0f0fe22d6c491b8c933
Date: Sun, 11 Oct 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791733833
