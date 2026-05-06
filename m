Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E73E822FF22
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 01:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778032654; cv=none; b=rx+gX2n4/wvf3xRNOjV65M1Yjv+rlyspeOkTlCuXD/M3/imDImeOW8xTbUF1gv9UeiicJFNPLdubxQmcX+vnWNcwu+SO00rkogaichSH5YrOvjNi4mITL9WxbBhsSzpdYB63xqVeyUbmuL0Gl52YDGsYa8pL3j5e7vF0VD58hY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778032654; c=relaxed/simple;
	bh=nSL6SkR5q69QX13hCbGjf287bQpFOt07Za6r192qwM0=;
	h=To:Subject:From:Message-Id:Date; b=IhMBEur1f1+tBN4Iwd+n1LomGyOGl/YQlxTBjhMu26KvNZNfdVfTeCUeaUgsNPmA/7/723qogyP00qGO8t2/PWg5u81N98MxsDsq9SbgRQKEPn90DWuOVJ7wYGcvQI991agl7nmodNk18yQBtK1GlXtdG85taVKmmhvctAKWjk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=foTOGVLM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="foTOGVLM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB477C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 01:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778032653;
	bh=nSL6SkR5q69QX13hCbGjf287bQpFOt07Za6r192qwM0=;
	h=To:Subject:From:Date:From;
	b=foTOGVLMfQN4CtUtLpQVV2zxG0Xit8uA647tsO1vqNFcrAe5ickKWkY0iUU2t+MVH
	 HV2pr4UH8FT6dMhQKDd8V164TWDpLunqt70B67ttfXfwkJ4sDNTi3Ct8VwTd+xc9ns
	 mIKbFQbspnvxcM6MppOIX147NsUKgRGt4MFpiDpaH0XsM/jr8rAqCfDs8XtTzWVE9O
	 aK7oJQ3wW+MS7CyTegloMYWEJlIPhvJMlcQ0kOm8mCxJ3zGMvY9U/Ehvezlqc5wU9r
	 5+Yt3G2+Y4yR/Nz8WQ++PxCoWzN4kD+9vrbHvnZaOr7L2FCIEhuhQ536FOYXMViEMi
	 yvYlUBuqgilgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB55BCD3427
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 01:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177803265369.32508.17576179331805309089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5693f060b2f9604c9fa0a71665f5bfb0b43156c67b7f540a7fa5b604eee8cd7
Date: Wed, 06 May 2026 01:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778032653
