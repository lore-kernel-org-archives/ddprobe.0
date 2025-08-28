Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA552272E48
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756360195; cv=none; b=aARZyURk52LD2yV3X+kIX+5HY5WZvZEZm0ACGTwdFNPO7zM3uBfmn6Fn2gazbBfnTm7ey5+043blt4oOBJX6HSpBxVkvnjMcHeEpwsK3gPI4qcOHsZmEZZsV5ZNZPohFmFIO0M05n9SDTsqu4VXDTIOSmACq9x9KOectQ8j52O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756360195; c=relaxed/simple;
	bh=2jyfeR+H628RXHJQW54LtJtzoHbUXpoMJZeivHNw/cc=;
	h=To:Subject:From:Message-Id:Date; b=Y90hF7wKN2CyH//ySQhBPpVKKxqpzwMs9nBSyMw78HwWw8u0xu6Ilhk6Ix+xFPkHOYugHHKxFAoN40FjxpMyl0E1BqcfiCMnQR1d/zPkbeRda34dHPMxZBelUY4aWZ0TqoVOu8EzcrU0D1hNeyIKY7zmDECTvrsJGVdS9uyBH1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vE0C5aUg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vE0C5aUg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F307C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756360193;
	bh=2jyfeR+H628RXHJQW54LtJtzoHbUXpoMJZeivHNw/cc=;
	h=To:Subject:From:Date:From;
	b=vE0C5aUgterbw5N254GKsG0VzxUVJGUBgSPVlNLXwINl2SvCiYNEzcItd4pTQr4gq
	 dXK88bG/pN/p3LrC8WuSKbw1mPWXH7a2hUiA+p/w0HaLj182uYhpiZrQL73x3a07h2
	 UEvNAIkdM5sTxJZhzv8lLZwMubCfYt9K9FJJrwBbxlB9/KFcL7OSs0uM3HItUzrHKH
	 kZ7YGZ06MLMrxRPwVUKtLW483BDP+Cs3qE6H9ZVcDSLtlJTvjDmZvcbRBCaGTdCUBH
	 ymi3iX82VNFj6ac3mjZhroHQj5ZdnFEStzg2+v7i86pkx2tyQLFI+Zz/ZpUL3FCuIH
	 SmoPyWpKm6lNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E150CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175636019357.21595.13660530606949672028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cbd8db51bb9b938432519ba696bb2b678d3785647d8a5d082be5f91f3b21e1c
Date: Thu, 28 Aug 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756360193
