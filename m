Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA6430E84C
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750360194; cv=none; b=h0FybIfAtD/PGoEmgArPXQYEbz2S0YCJ1/0YGCn/jxStkjqjQI/xWr+wn5mnffwb/2T7UZzcP2Q7c81Wi9maiXWkxq/uiiC51qymU2aKADC8Ainsnj8s5Ti7InL+9wCQYqXx0S0QjvfS4cLVvKTKdDNV64K/gWDAUPP3db7z7fM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750360194; c=relaxed/simple;
	bh=nfE24Fu3amfC49vexB9u40TmWAmnMWwEvWj2LqY28ys=;
	h=To:Subject:From:Message-Id:Date; b=OPGEJT6UxhTAN7wYgbJyQeTfq0U8wr9vOV5tXMcGS4ZLwHScaq7RbvKp/bjns0dYRZT4E1DrD4j6xunSewJaLzpe4B1moRi0mReaE/n2U4bvtNC4HDRIBeyzB3I64Lf/jV4PXTUSDqTowEszYiv6Fhji+d6m4Ogg1o5KkqeMcvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3eak8cw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3eak8cw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6005C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750360193;
	bh=nfE24Fu3amfC49vexB9u40TmWAmnMWwEvWj2LqY28ys=;
	h=To:Subject:From:Date:From;
	b=f3eak8cwBS6JzsFKMUC97RSArOFflsYnNAlhiwKK39jef4j6suO1W2OOk6NSy6EI0
	 ecLzq6zQyEfZ/nJNpzo+rxK6Is/U6snyBGVOlVE0o4UGBvXQCNkeLhMM0/xgggo38i
	 5G3wtXm1pc2hWpRNPae6LM2IjYP7T/t1RPE+2yQohIOK4l9qrzKL4wxy/kprxnFyrL
	 n0nnw+yb0k9anG2LutK2oyLyNaSXWx0D9orOWQB83VK7x9eFjkRO/OwHb4fG0w0kVC
	 BcTP0BmgO6feuD+LGJp8y0lEKzzoX/lVNQUWteGpOQB5vW0hwrv7rUH3nCRv11+FP9
	 ZXbgdJyJ1QhNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91883C7115D
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175036019357.21772.279399561064352665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 964ef5b76f5a272aa7ce9acf8a19ca9691055ccf8512098fe7bd23b3080c33e3
Date: Thu, 19 Jun 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750360193
