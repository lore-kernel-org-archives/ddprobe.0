Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 755BD4683
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 01:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716858863; cv=none; b=OF3wDPp9TAhFA/sE1umxacs6tEwtDXYVIsHHbzosp81XC5ll1Z/p8kQKqC0nK+Bgk0Y5nUAtt4Sih+/4Q1fsetjiiwPIdRBx1kaA+9pXQNNQmUKpwQgP8rS8dSu3n8UIu3lU7lQ0Ut6kBJIqw495pSOzGnG7J5PJObLFT7xWEB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716858863; c=relaxed/simple;
	bh=Q+BS4daDiaHwfSDwnJkC1rMwxzNjK/wi7fvZIg02kso=;
	h=To:Subject:From:Message-Id:Date; b=ldN8UnbrJ8coqWOY6gv7rjGJDNE6nhMUP3geT6yyXRW2rSf1/g1xlSuPSQJ1FGUaKxHQWDzwPQuslDtjreehK+K6dDByGKtrVOjMALLYTqS+u2KITWaD03q83aN0z1YBxDogqMF8uvehtWMIXSMewmWYmJR2JwpXy9CD494Q1XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIefsXkh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIefsXkh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE18CC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 01:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716858863;
	bh=Q+BS4daDiaHwfSDwnJkC1rMwxzNjK/wi7fvZIg02kso=;
	h=To:Subject:From:Date:From;
	b=NIefsXkhG5zwWuO4cCOdOsmcr2SWwGRYBep95LYpjwuIYg5QYeCX+ZHZj1W9yDJCq
	 J3STmGEEGpDCi6HWbuvypXgMYeY5wEUt77zu7NwrQsqGEF6Qwuzf5Ig6lrN0T5fwEA
	 ppTILC6p8EUtG+HCLyQ20o1elEvPS3CpBOjjzljdt7k2G9GmtODR46G8T2BbHgyTCQ
	 KFXfF/e+h5TgJpjnrwNYvzjkhhNFqM62xbseMFHJJkbGMqwgZJg6d1FH5ceTkzQ3Sf
	 zsxdNUMfCSDRrt4vm2slmCiq1Js4XPy3Nx4gL4zEs09ybnPZujiIT4dhBiMWeB5+Xu
	 yoG4ctykjJYbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3961C25B74
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 01:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171685886284.13585.7821960312387928958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf59340b579277b6156fd48888e2be2e720ce7897b0aead3e2658941b8b06522
Date: Tue, 28 May 2024 01:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716858862
