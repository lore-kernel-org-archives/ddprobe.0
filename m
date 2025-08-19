Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5876A38B
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755563394; cv=none; b=X7UfiCGyaGT/7vtqOkqCHuK8imnASb8sXqzOMnT8iSqMbwuiURllRxyvR0ah+gQLaKoOjHb/NVXQPGueDRypBubLTXZh4nrRW4hZjlcTfNPCTSSjP+d2j0aHf5u8NJHlLsyzYgyn1fs5gLqwGG3WznSJ32kWyjwvWoe/Vh06LVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755563394; c=relaxed/simple;
	bh=S+CuBRn4EYiuA7XlweUBEA1kzad77T3flhvhP8OMMWg=;
	h=To:Subject:From:Message-Id:Date; b=qWxn5nqiiomOa6okuJli4rfDCIoiv5E1pXth3hAcya9POUl7cCwmop5ybv/nZHZNMa/PYbgujhNS7BKTHOu5/L1MS4mTe+FPtW+jN0fo9AHF9qfkxY7KhtV+UqGZBj6I/3jKGQUMUWStZu/QYe5iH+X3kAmRfsTFEL9op35kNLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TxXux6Rq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TxXux6Rq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C2EC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755563393;
	bh=S+CuBRn4EYiuA7XlweUBEA1kzad77T3flhvhP8OMMWg=;
	h=To:Subject:From:Date:From;
	b=TxXux6Rq2OoKpueorY26juLswZNCCdoz2o6lF4G5gNEOd0vZBBGTVVhtHx6k7hT0X
	 /lVycgfhM+d7qmJLlRNyBIY/yUWMPvqkuJzb0DlAlk9tX/VFHSRAHuxrbeDP8SUjqq
	 Hz4FzYrVmCpQDj3Sx4wKXUnmf+QrbGbA5ZtsX0YmcIDRS3JpUenjgCwvL+qovJ/psH
	 rX4GS7VmgBTm8i9c7OTAwVtzEcHZo755YEz3fFtgyg7QulJo24Bu9twDqhfbNdBfkA
	 tRmOLEb6e1xVNZ1pKyL0s0ZaOovDyMiRY+f5dwd/lvYfIs99ZRYocsnbrMv6UsXEH2
	 jrujd++gR99yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94691CA0EE4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175556339357.3236.11451672652740175214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95a407a2083f682836bb240b670848f8e20078c509ccf9b3950c5e2d647e9687
Date: Tue, 19 Aug 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755563393
