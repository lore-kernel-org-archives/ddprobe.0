Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1487923E330
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774631094; cv=none; b=cVDVJKST6N7erV3Gf5Q8DjvSnkjOLbpOS7H55VeeEy5aMCBvHiGJFdqIJFBwFcPWreNfJaenlURR784ZCKUs3gts+3JkA1cpM9zZ5TA4ygwrZSj7/utiNjcvBkcNVh3w7cdv0LnGujHZjXcuGqFFbEPGGhZdrDpCndfAks2jYzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774631094; c=relaxed/simple;
	bh=5KfH09t5ojJbXVH/Xkctst0dne3pSO41dFvhL3zOMt8=;
	h=To:Subject:From:Message-Id:Date; b=FSnnJrXdYYFdvnIk2Rf/7qp9rQhREPJ2/BdQZYRSK2G62kBO+XO6+Rh9oYU5/ofjoroU1T6swfbQY5umst3+qqd4tbLtCEOP3pHDseKZluX2EoVRiabaW89TpPON1GHSYPYSzXo82gkeIRBZyGefHfUWsdGf6ud0OkNtkWUkFCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=othddQ2n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="othddQ2n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9856C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774631093;
	bh=5KfH09t5ojJbXVH/Xkctst0dne3pSO41dFvhL3zOMt8=;
	h=To:Subject:From:Date:From;
	b=othddQ2nL51z5oXYbVUtlhz5A7J8+DPrdbSEGTf1oSwjbYxcMg1WhshlhkktD3iSw
	 lA/aGYJEDclbwWDzKMauw7O/BdoqoSO/Wlv28Gn335Skylof7/iTYrh9dSg1531dDk
	 yK4Je9mlJk/Ill0jqM8NXHOI6dHdRoNFre0A/v0E+Jg9nGavAJOgIxtSWm1oSkwa0n
	 lQ0Rvq4/xEjBOToykIhgiwh0JgNRbvXrpvxuM9/p9lC2y7iPnGPMOrbeOInOvqXyUI
	 MgK5Redtt9E72T2PIwhpe35C8d9om0IlcHwU7OU/TBb9HYKETBfsULqkrP2dObKUEs
	 GcaC0JBEGITGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A33D710F285A
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177463109365.28345.4083952613752674826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e970d223638f80963453009b437e904bb3ab2c6fad7fd87d606c85b12299f89
Date: Fri, 27 Mar 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774631093
