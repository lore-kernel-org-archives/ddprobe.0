Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F2A18BBBB
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745818794; cv=none; b=i1MBrWUr8bmvGT8iza05rnkz86uCcFxo6fDp2gAPUBaW2XTxxgkRxrcsQgEqM8mIoOVWKKjvQJzH2QI9B3RAm9cf3N2wMyrPaGH430GW4Q6bUHAeham2m1NVwr14RhLGqCY34jUbLasUiQxEAUQeeXmZR/4Qeux/Kk++f77Qay8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745818794; c=relaxed/simple;
	bh=IrKajyoKNUxoMU8MwSa+cMfhZ38S3HAGdUre1AjMxx0=;
	h=To:Subject:From:Message-Id:Date; b=bCKlRfICtLfyyTn4dwt6G8tmCtZF0MkPYZUogq9KQcW7ly8U72ZRIccU6oL78pZa7GFH6idDE3CJYWCnIc035lo1P7rjjhriERM2+TNa/hM8zJpsb05yCJ6LH57n7taY/MNyH4eblf2eSvCSbCEocSnkxMzrMv3oFr3noobO/PU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YczSh1sp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YczSh1sp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D0AC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745818793;
	bh=IrKajyoKNUxoMU8MwSa+cMfhZ38S3HAGdUre1AjMxx0=;
	h=To:Subject:From:Date:From;
	b=YczSh1sp6TvI6LzhBYyJrk9Z/kONTLtjssHQfg0V4bf7zUegiX7hvZQeeK3Xd++4x
	 EnwqN1ONRVoo2N20mU8wuBlCaD0uXW3ELdhE0A4EekhjWaVVCcdMhVPOTcTDonz+03
	 ZQUlHJ+NLelc03SmmdasJDsdnvx03Sh1vZiBE/N481e/3ks4c+zKfuqKn/B8PZarTL
	 6R8Zt35ZkpqpK5/IBCjP3FKvRzrON9s7bEmwJON70HZccB+EyIThHOJ+7w+lgUdq7w
	 ul1LlJ1+lIXaSKVCIlfqYN63uYZyHKWk0ridOfezci9EH3Bj8wblqtA72UR3FQRYG0
	 M3toI6mtciQ1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED99C36005
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174581879357.19117.13980204127756165103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 586a93b3672253d6fe59cab2d0b45117a74fc0fd86dd1c0461861ad08aba4160
Date: Mon, 28 Apr 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745818793
