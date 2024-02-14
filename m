Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0EBCB677
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707893296; cv=none; b=YMpiQvwjvdwxOZRkREpFA93IT4GnzSkbjnwSa7KBU8AvlDpZxJsX7xNe/Hnkuar157jo3HnFOPzuzSGeBYcvjYbRo4AhqBrRPgDZ9TJlTShW/YN9Cq7z183ZHUenOXhBEXmECjqhnLoNCx4OJ/QxqEcUhcumvmNhHRpkOvVLH2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707893296; c=relaxed/simple;
	bh=dWMyreYO2WyOnHexzCC5yAF2pilrq2bmEf3Va1Zrmds=;
	h=To:Subject:From:Message-Id:Date; b=jVF7EqGf0S2fmEIsy9xrxzvn3QwY/kO+tq3m4WIZpv9oQOePfOigu38q5v43ynTCLoHYLboW7eyGNWUb9AXTAfGSBGezS/S5Rs9hGU3nwJFWgcLaEPQ7tqEUHsYwXDOnWw7vJ+83GteYxBEw0r7dpHj63HqyjMddwIWM1DweGOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DayLo/fq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DayLo/fq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84CC8C433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707893296;
	bh=dWMyreYO2WyOnHexzCC5yAF2pilrq2bmEf3Va1Zrmds=;
	h=To:Subject:From:Date:From;
	b=DayLo/fqBbF8VemxKbZ1/03rOGteyEyVhX5Nhl+5Q1NXcy9mWel2eOSSTTYU1OmW3
	 2Pkj77tK6xJPJ0zlmB6/ixneg1mZ5K5gCc8lsshhp/rgOit6G7rg++SNLVuw95S35J
	 33beYyg41HmJ6jmj/uiVZhp07s/1X7K7VoAJpuZ0Y3BQNU8O4CZFVhA4MWUVpzw1JK
	 BdGj43KG39UIIHvIGVkbPm/BHShcK1Yv+7mtT+s2wOdmSPCDgTbdN/tJGwq03vYmWO
	 /SQm6aQVE/FvwlKJhvacNCj9oglTLkXf1jfFxDQICTeIx8WXkvxw+wQPLmONclB5Os
	 wvgdaemf0h2mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62967C4829A
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170789329638.7915.5396562228895034460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12f5bad286a80f8da79227710903785a2db97d18f5796666164ba862e09ad93e
Date: Wed, 14 Feb 2024 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707893296
