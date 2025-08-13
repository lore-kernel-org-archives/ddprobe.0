Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127D61C5D7B
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755089994; cv=none; b=CISlVwkEb3pALVk07x+wGHusosL6URd7yiDrkM9EFu3If7gY4Hn71w4q41ajJoLncCywIWqqAq1tHURgJ17R89KVRYsJsQ4CXbKqHNwtijnG0u1hFZtOW5I433Ak0H29r4TJ5SvjtoY8QZQRH4OE+bdFYkz+kWJhcYz93HHj3/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755089994; c=relaxed/simple;
	bh=nFGGjzz6QjUwEcb+6nFRF2qn7bjJIfrPYpmU52KoLIw=;
	h=To:Subject:From:Message-Id:Date; b=jMrF0ucyqzgwe8jlhDVR/Eq5NJFVY2q24NjyAOa9C2rLvmffyHqH08UK7bF154kSawjRKNMhQcUJt3HkLtDAgGbrmHBuqUhKgTBbTVwFDvJBtxqMegll+Ap+sme2hQq++ckwVSvM5gyM8UJvebaFERtNjjyVC8BVN5d8h55NOvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVHzrijf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVHzrijf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DC2C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755089993;
	bh=nFGGjzz6QjUwEcb+6nFRF2qn7bjJIfrPYpmU52KoLIw=;
	h=To:Subject:From:Date:From;
	b=BVHzrijfkkKEADNXL8lVR72j4F3IKp7ePSg7YuADHrCHanR4joTNgiSHb/tl3aSaN
	 oqooq0DLOI1pt4xpgubOkY1rVVS+I23tAdZRk8LtAA5XAmQvcpTxgyVZGiWRFA+wj3
	 VUFOJ6Bn326cGjarqIdYqAAlwr7Z0mmdyqC+h3qnaCQTXTC8b0QfSKRyb942x5m1rs
	 Cse8/Uk46PpOhORqWDFAQDOIWX2h5PaPsnJPo36klYTBHLGqVikYS0XTqVPyLngheV
	 vy8CuYVf7z3YqwwueEn7g0364+hQQ3rYU4Rb9x/bvuXKSoCJJYShDPtonrvUKEOVVx
	 aSLByo44E4zQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96320C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175508999360.4310.12618310248433965541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e51215988b98ad74f91bb6a17e8b3b803dcd30e0e6da6f1f57b23a925483487e
Date: Wed, 13 Aug 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755089993
