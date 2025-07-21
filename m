Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7EB22173A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753136394; cv=none; b=i+D/M2UYtNzQ9snNl4D6E/yB+ixpOatiifsLVLiU94rfAlMdd5616Sb5ihou6UFzd1LMOci/Eom7ArJOH1TINeEXckTyUbRrDfEVfKTW2RI4LzVKDuRfeASPuumvqhCVmyS/12ku/dOrdBTcH3ioAJyNTIl8dU7kRzJTduOfK1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753136394; c=relaxed/simple;
	bh=2mCCSXRhHRlcF6ytrpJgOUJtlUM/oq+dpvJSAVeuL68=;
	h=To:Subject:From:Message-Id:Date; b=SZ47pJBx1W2ebxvlGj1MSsfwVMGhWNOxJyawTwRFtECemmnJcJYl9ONqrLOyLzZZGUXu5c+jJps+R/V/DlCGCf8vNNA+ji8lhnVb1Xd3MGfIvjH9t8dYfZRbnuXVTjg2uoriPCOptw5RJ2S2FQbu+MuQZvuneccnH0UL6D7IpPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PCHpCbVC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PCHpCbVC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20B1C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753136393;
	bh=2mCCSXRhHRlcF6ytrpJgOUJtlUM/oq+dpvJSAVeuL68=;
	h=To:Subject:From:Date:From;
	b=PCHpCbVCXv6WwOXvt5JSo5siLfaqIlDLjm0FXexOQ5t0VRuNm7jF+oNnChIh1QnpH
	 r8ZrG2FoqORSbOgsNDi21RCVtQYqNkxK7fds2GXWdVtsB50eG9wBi01DTXrcTuyO78
	 l1uK0zx4687YxnGQfgoKUbuqu6m6+yrnAIoZsDpV8au6pODDr4lAqtnJJu1/cspaj5
	 qkalcgxP3+FdePQlocqJlRt9t+fFQpsuW+s5zPcTN+A+SjS9gWlLW1nP1D5wWTyvP0
	 g4z7iBLzTgXHyjxKPuY2QLooWpkEIC5OZbobZ0HD5ytF/i+jL4xHBFIpqldw2b13ia
	 F4pZlstR3J8Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA3CC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175313639358.30728.5269159533388804789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 885ec6e20b6da8f5fd33771f79275f6f2dd26c506677657ba514ce124b30b6b4
Date: Mon, 21 Jul 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753136393
