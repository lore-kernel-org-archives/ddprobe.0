Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7093BB5A
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760777394; cv=none; b=uXDp6JcjFrxH+20jFlyzEEGEJwb5C5ONYCHVt/teENJc2iQ86AvwUBdWj9xsCD23pZFdVwYtXwkGAdsGIcIP3LFEeomroVmJOwOhCJTHaG7dm1nNZuYMEQNJZB9TV7W8/OUmKl4fl60JPFB4Kgw/7AF4YShX5drqgdHdWfbR3ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760777394; c=relaxed/simple;
	bh=kNKXLphwOZW0Ze6WPXdP2HJ+h00kgj9dRxRUzZNCok0=;
	h=To:Subject:From:Message-Id:Date; b=NnU/KCNyVXkHNWr8F3DzRfLfhUDYSc2V3pcd9s1ZiO7lS0H9q6s3DLhBujaHrhQlh9gpEziY1DThAnP/lguvHb/m0ozgQ7DUlVmDA1Cs2eKfgX92vPNGx54w+8ZqxJcEHZJJ39NxA3O8d8Se/NAGE9mc9I4EWikcVWHiLifswIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/faSmsY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/faSmsY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA20EC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760777393;
	bh=kNKXLphwOZW0Ze6WPXdP2HJ+h00kgj9dRxRUzZNCok0=;
	h=To:Subject:From:Date:From;
	b=K/faSmsY87zM52H9CGHUQc1LHk7gZ7NEM1biGy5jgcPjpQPZLKU+NNnwDLGMx8Zwb
	 ihYa58Xb2rHClcHu6zpmaL+pmOB8LbqKu2w4qfCen1nAE89okLLiMJ3RbaS6udZDmc
	 m6g8Sz/fCGWJJDUf37BbhwLtyT3SMyOR0qmu6zula30ZFKulNw2abOYcshbs9FqWw6
	 sPd8amPYFAGjqa6VkRB6yBiCiIMKQxcqsTEhzWiTZcd0gxGgnCzivxLfCCw1XQ4C4S
	 EADCBx0nQMuStoqBjfjyAxKNgeQxVpXm7GS2dafZE64Dqd7U3fyze4kZXk9cc1i6F0
	 J39dtfyGztSlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97642CCD184
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176077739358.29825.7246437128588456822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdaf69bb015ea2e5e999c0c5ab39179c48062bcdb951699c746b7177d2ee1823
Date: Sat, 18 Oct 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760777393
