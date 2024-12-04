Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10449187FFA
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733309154; cv=none; b=XLdwp4awqNru1fkg58jSqZm/BKdKqpE8OnghALljyvlpt36gmgWPzOtExkymUpM2OgtOvxu5yQ3JDhp2DodoDRPx+yJxhfKz2NZ2cG4yQskPe/TiMBDJaJgtPLFrJEb+uKRf62C9tNDIby3pEbIybdGqmlbHP7y8wPIM36ypXMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733309154; c=relaxed/simple;
	bh=M92e9QcB4cEKOD3S1NozGCLmuoXo8p/Sp8QTqUWXwbs=;
	h=To:Subject:From:Message-Id:Date; b=KUYFD+0r5zWduERKWXdciKvaDDUq8AwXb1/Cxwy7tKtWzVJEtBzMbajPShQwGJn35TWgDb1e7Hqp2GD6kFTr9oZ+Ri0EmEOlXg98VtBU7b6nD9kcGFE46N4fkyegWer1oBuBXWvjqZyQWGg07nM7nIVOh4RD2vJMuVK3JGW1vIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=egAOxz5t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="egAOxz5t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42ADC4CED6
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733309153;
	bh=M92e9QcB4cEKOD3S1NozGCLmuoXo8p/Sp8QTqUWXwbs=;
	h=To:Subject:From:Date:From;
	b=egAOxz5tkaJNU452CR49yrRsjDz1dDCtgt5Peln7oBcDQboiUs/YmqafkX6AvRkqf
	 BEGG0eTBQRiicOxLEKPK/ueh/PikoiGvkeR7b1jrQy4CPrEon3tmSIQ2zvdaTqZIWR
	 eVF1HRIUCA5XtVFMLG0TOqNFpHuJCF0zlGiv7ekoarpD2hnGbLM4CAofvxdDISbB2S
	 ChPAnqipjxNPK8dGLT4VcKgI61o+EwhNyaA73EUhD5PGKOMQeNCNCjdRGCWXt2pKZG
	 Xha7bN0XA0PZy904qrkAkDSI2Hm6lA4elIMA39+q6odBioga8SxzwzrMY33GTdJk7K
	 LgiWqGiQFsXAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94971E7716B
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173330915359.4133.15183586350122738314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd7881ca3b192f3bbc5ae379846ff994f2c929410970e785a7425dc014ae3390
Date: Wed, 04 Dec 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733309153
