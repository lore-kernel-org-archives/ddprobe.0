Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13998EEB2
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756685994; cv=none; b=HrNB0Z5dQtNVWE4jwHMWa0ka6UaVbMANPvGkSR/kUgUtPsFG2HbZwpiK2Qw3BVsXay1y4sGMGnnMLk+p0b2lltpy0XNV+A46Sfc2f3sVtLJF5jt8EXWXC6InrGohvxGuAmR42gLzZmDxCrgVsuss3Urf190Qkk1E0dLviPcd7tI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756685994; c=relaxed/simple;
	bh=rz9wJXa0Z37JDZjuPi9JLp7DEr7ULqzvN6zT7Qjqqrc=;
	h=To:Subject:From:Message-Id:Date; b=SONPRjoE8lmLjl2RR2tYqd1/r/bHtU7dpjRIDfT68gx4K1wb/toJPdyYSaULQZ6pgxJ27wnF6ItCRt0hLbedWt38rGLNkzCmDMhI1CjHnbW3Qb6BPEb1cDQoFUuuZeKrE+ftcXfKBb50XViOhxcyht2Sl+NmYDr58cL44YhV6tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3dFg0xi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3dFg0xi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3701C4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756685993;
	bh=rz9wJXa0Z37JDZjuPi9JLp7DEr7ULqzvN6zT7Qjqqrc=;
	h=To:Subject:From:Date:From;
	b=G3dFg0xi1UFMln4Rw6TpkbWCwjkIN4kGz9xiDeTrZOkn/6nFrlZTsY4en+56jk3MQ
	 Y7d8fWuo0CPPO+3DVG4OA+Di85dEMh5Por2ezxuChBJ1qmEEFTxd8kUFlTCs74xTHY
	 dNSMZHKKsHZMfxGndDVJ08jiopsCq6VNBmR/YgX014WIwiZ4bxEd0eIsdQrNS/gsbd
	 bESXRR2N2pEOlM7OngpeuGHSY5F3S97gqen23HnsQ8uhcIoXhT1MJWYf/g9cb5ehFd
	 u1c8onqmcuPW6yZztPG5trTDcnTUt1kM69baCwUHj4wErCyNwWlrzmDZFP/vlRnolf
	 V51dYh40itFLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9018BCA0FE8
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175668599358.29689.17764656507900157381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d94c6d5fc32f8c5658c3744ede354200e7670a7c0e9351dfe4013bf0c161b6aa
Date: Mon, 01 Sep 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756685993
