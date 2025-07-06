Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1667C19D8A3
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751845194; cv=none; b=baDIBl00adoFqn0GG9MzI3g0upHjTA0rjTxqUhmCq30BJ59rU63REko59g3N7wi1CXYvth+J62pWh5nbADPQir4gZ5foIQO9u7fFfxavx4dRkUZBkHrlrv0/xMclh50nBW3ddC2GR2wPrLf1oc1rdmJ8ZzNPPtWBmad4+0JRwpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751845194; c=relaxed/simple;
	bh=u5Cm60ohpC/krGKCF1dEyyjn/06D01ZQ1tjm0RPRwvk=;
	h=To:Subject:From:Message-Id:Date; b=l7xOJK9wzTCT0Ijg9T2k++RaW/MszR2L8IGScnhq/EiLZQ3jWHPTj6tAbxW7ZofKeVHjIQVNP8Lowjc3wBFortYSnjWXIqFZ9ijO11SRIcycNw/RLrdIgtLLsMA+BuG+djk7wkpDIfV0iwr0wKEpx+m6hkeIUwsKiV26SWIzf9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/x2Ibkz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/x2Ibkz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04F2C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751845193;
	bh=u5Cm60ohpC/krGKCF1dEyyjn/06D01ZQ1tjm0RPRwvk=;
	h=To:Subject:From:Date:From;
	b=U/x2IbkzEI3JcKEERi7N0FairlbcNK+fjwmsRdjP1JZ4Or9TwRv5eyjP/+d5UVDST
	 1gIlUDlJR3rXHejLW9v4PqPwNfqNl4GUlviMeBROXBoyJedAhquIXiMGJXNKP5bD0X
	 EJ9ePVNvIY6La78WpNGLAU5ZE58rnY27czrXKyxA02ncR7JQIcs2InXpS8urO2hTpE
	 tOdvCHfBBCMu/4UJbJTjHN26jajwQPoA0WavOyEYSEWeNk0XIfPhhfA0XemdJqAqkf
	 71743JUPzV+M9PPwcXZxXszHRuzcmttJg5Oo+BlBMUZY5qFKxKE7anSQsc58eMjdcr
	 LrgBwphsreAdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF48C83F07
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175184519357.25265.2189880724043408688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55c3bfe5a724fb343bcac5127a0023a9a65afe7f5c277aac30c9fff8296fea29
Date: Sun, 06 Jul 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751845193
