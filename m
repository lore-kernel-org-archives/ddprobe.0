Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B59279DC3
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 18:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783277914; cv=none; b=htLiBPgz6M4ijV81rnacRzbhtbbu/Ik//TujAesOvsymfohbBpSWtTiBTQVDvxdsyupKfebot5h7weGEOeGqB9mVhy9S7jFCV9h+0ZypQFAhblbPqUCmH4Uf0mK6KXrrpzMu+l6E//iceW6Ta742rf1C9i/NtPAdg0gBjr9MPSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783277914; c=relaxed/simple;
	bh=oBE0G5i6l4bZwr/CxvsGLjgPuYA1oVra+1RTrfMmS50=;
	h=To:Subject:From:Message-Id:Date; b=EKO5aHi9oAKdDd0v9EiBiEKrCus1hnB5CukFKcTq5d2PyYJBGr12oxwCNY/eYv8Lh+y38wBftnTwCebQLvf/kYtWAoUxaMN/cE/mB/F45zV/92LoBSRF7MiNB6m0g8kew7rhNudTMStbjUMn3fhBoo/PXuu2gFWLmEWyeWPbn+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzt9sE5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzt9sE5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D222BC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 18:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783277913;
	bh=oBE0G5i6l4bZwr/CxvsGLjgPuYA1oVra+1RTrfMmS50=;
	h=To:Subject:From:Date:From;
	b=lzt9sE5indCs2lqIhfs5f/3L6aDUSJ8QxSNgLe/qVX9Bs4XdnAdjxsrh0dNmuryhv
	 ak1Mrjn2yVFYr8gEuOLGjOBrhldKH+o7slL2NOMU3k5ex6TCziM/tY0Vu0tU59ma66
	 t0crGDpgVgcfE0+8AOsBmPnBNFH2agXPotFikJXmKoCusOPcPG7RiYKfYiqZMsKtag
	 Qaw47uUiOPzDbyuwi6SE/ZojqNAkISkEYlUyckTCIBITc2EZ1+Qd01DObd/Fy5unCy
	 DSyP/gY4cR45g90ng7tS0QIh0xYdbc8mO6SCUN1hy5SxDk4jVaKh6jy/3a+Pj/Db74
	 N3kBzEDUdsB8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE04EC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 18:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178327791368.27166.10082108277998696104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 180b372efd98b17de6d53592662f8d01af884918a1b1f394ec520a9c96597904
Date: Sun, 05 Jul 2026 18:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783277913
