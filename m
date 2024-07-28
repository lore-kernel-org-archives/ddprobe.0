Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526CD28399
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722204354; cv=none; b=O6Pp0hhUAEtYF2YZD4uhHg7oqiadPBVqTWtNJxWvJSMbYHV83Ob0Kix5R3cJ3oF7CfFuhrcZVcdKdweHchMAVo+tPMj6Rw5VaH7AACEW/GNxTfUFXio6kCUXKVFcCjyUpVnK5+8klxsbRdYKNgZ0LEFW/Ebk48avmIFsHyD9ir8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722204354; c=relaxed/simple;
	bh=ITkaJ7IOQNhJaa8PrBKxA2jajTk2ZmUxtDPzVmU5W+c=;
	h=To:Subject:From:Message-Id:Date; b=L/r94EjzQAXKqe5YQdboZBTy9Xw2V56YEEVMaxYx7lt4LP49nc4B+ASOZoBSduHXzXY8BM4s6xU4CygcwCUotXtEi8eXhzXuQwvJ+7AFR1Zmo98Z89ykuon/R4x6fTtFf9Ejc6f9VCbotojfiwfqrlCeEWK82JZmIUZlvXAb7qA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r8tZIKl9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8tZIKl9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3EB9C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722204353;
	bh=ITkaJ7IOQNhJaa8PrBKxA2jajTk2ZmUxtDPzVmU5W+c=;
	h=To:Subject:From:Date:From;
	b=r8tZIKl99SrVq29XQ5x/BUrtYFjwYaBPMsI7ekaYs6QwYRjveAX3fo5Lb52PnQQ+S
	 834IwcPY1cwbWuw6EQOVmYE//BBj6V8aq7AMwoCdm7IZRJvVDij3RXNigSx9OIZhcj
	 Dai+nxrdrcP+yLP3+/wtqHPijKXktmMVxEXQO/FZjbelHnO+WFcP/HOgZvtzoNaDnF
	 HBJlj5dts14Za8PLdTwF8zG8eKiTatEDBSSXAXWLfvPQfeiI2wwFwMamlWs+pFhvHN
	 gdFYSUv+SNcTZEFTnGPOZkGJdsee0PTJfYWMtVBk/iQ86bBFkDomdR0xrIliZ7FrHW
	 e9qFQEqo/BZcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2E8C3DA64
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172220435360.29506.6357365305575779368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7f53bc381a7dbcb5a9b9275b1e14357a2f6087016b98651283024a748cb86ef
Date: Sun, 28 Jul 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722204353
