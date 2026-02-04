Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266DC21C9E5
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770213234; cv=none; b=u6toukpXJABksl9vWzveliuX9s9e3to3mLYXl4ImV6d1LBPT6PStz188gTuxoDbhML4JNjNVGbpKlENyhrLGHfHjX1Qa12xxYWdRwOjBmcL9+rDg35dsjz5QOmOO19wi3bFAUWyA3HYB5orRym02TQwGO43hsajOxFPhRqs9j3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770213234; c=relaxed/simple;
	bh=HrV0D7M/ar8aUN7uRgDaCGzi1G2vLjDIMdBk0yu8UAw=;
	h=To:Subject:From:Message-Id:Date; b=r3wn1qDnuVQgoUX9tR3VkDYqxOCaJckNbqB+acDHATcMRyRxvxL27+z0pTUo3PRLX8OxrvGClcIh/Obx4Kzd6U7GgGx2fS3PKSVo/u4Jro7AcAO7yd03ptABY/ZP3NiACcE35ScDExH347tIjGYOh+h/kKctT1g/iIPo5MkcAgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnMEmweg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnMEmweg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B31B3C19422
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770213233;
	bh=HrV0D7M/ar8aUN7uRgDaCGzi1G2vLjDIMdBk0yu8UAw=;
	h=To:Subject:From:Date:From;
	b=cnMEmwegJbt+QaIrdOlgUpBqxnUCywUvXkAtCeU0wAeo50yxllmiowHkFQqgIgxSu
	 Dsyn7Xe21IvHd57CH+PiS2TCDJ5CknIFNOTFnIvLg2MTX5LXuuI0yrRzRCUu+anDVr
	 w0qsVVXXuTXdl+Yhm32I3zw2MnAHnTO+N8NQrQYLWNJJmvChPgGo0dUGLJroChKY09
	 kM64Jxp0OCB/R4g310iR2m1SgmU9YFdxW1eXu48MJ2jFGzdFYT2ZYoGso9BJwH6wfV
	 rbNpyFUm9j9ynGctYaroRq0FD6yNmpNNVvgmCbpTfpa/kLubY0RjHvNMMq5EqK0ILu
	 N7opygOXAVoxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F59CE83EF9
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177021323363.3195.17134956360670939356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab102d82d04b3415a0fbd43a364d6a7e6b88d0f436e990666706a3c1e8340349
Date: Wed, 04 Feb 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770213233
