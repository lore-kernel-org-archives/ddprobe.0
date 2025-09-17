Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB862FD1A3
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758130194; cv=none; b=m1DNMWUHPnzpVpTEvWFSLIVn9sIoofF6ufUoI64oOp6X11VJR5rmD/b9+UYDtZ6oTppCKETq1vFU54VvY5ZNba3m0IeclWVLqmD37TXpVKIUHp1yfb7FMYWvqTdjHLo8iTy9AnDYpWIPHZegznwz9dAlvHRqQozzpaGhuAUHAJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758130194; c=relaxed/simple;
	bh=k9bGIvzHDaP2ZU2eQGw7c7PVLIQ1zjkT5yvsj86udI8=;
	h=To:Subject:From:Message-Id:Date; b=SDXAf4hjUeJq3pKLvBX4Hlm4BGQomNGHC/al85lX2cybwA7YU/zFsDjjnZrMyPPcWH0/NXMAM2dy0j1MyjmI1lCiYqgL/dhgFGKTzYtBnW7jfKbUKCJdiFr92mnwZa3EWoTcwUJrXmNVSQG/PcpMZS86AbOOIyYbrXE1OtD2EdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OcScBbct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OcScBbct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD46C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758130193;
	bh=k9bGIvzHDaP2ZU2eQGw7c7PVLIQ1zjkT5yvsj86udI8=;
	h=To:Subject:From:Date:From;
	b=OcScBbctEfrEHk09nqC6I78YYrKJtYXfM87rsxI4L/OsVhApc4LQxeL8zPdgMUs5F
	 b+bRb7+D7G1pXHwINVGp9QhAXCqc2CiXC2s/PnwEzZxuYIdzX0dyHpeyvGk5fSV8Ln
	 cA8AEX1DO0MYwhPw5FE1tIpNzzIuouwT54ePwvW6MuFBhnfuWueT7jPDNyuYOWBfX/
	 03y/mPbg4lQF1hk6h7JgZpvEUPeo+wjFOPNDghc63dV6NLnn63DHewbpmv/QnhM/pe
	 dzqlxSilWjzxSFSj9atf+irxJgT4vPJ1jTIx0tPXkxmTfIWJrO8Z4E6TSU5eocCS+p
	 7Qd34jByPAJyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F082CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175813019357.10664.10214309235234155254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79c6f15c75c4e6d764aa9ceef37c342139348478174a938d74a7347e8c995939
Date: Wed, 17 Sep 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758130193
