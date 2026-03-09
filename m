Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFCBD395DA4
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773054893; cv=none; b=qm5j8X1mX/8alsLmzKZzoRNSVfkM13YzmTxwuRlCMynpjakn9Z7djag4u3xwu/bOGq6PjUeyquuUwnbH5CRud4Fgb9xX2afxos1AQpMa1j+E3KZIFgBucqXXWxtQOSwAHIAxwD1MZDbfWxHjlEMSzP6vEGct8P8RHcZMzvVB854=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773054893; c=relaxed/simple;
	bh=fYY/jPFoWD5tJlgWqUDj7OO0VV6VWYP2P/eoeDqVOWc=;
	h=To:Subject:From:Message-Id:Date; b=FxlZzzrnSb36HYeo1DKAw21NR4u86zgHu0l3GMZIJHG2SC9DmeCSXYIfuwj+dG0/08IeWHPRmaTxzl+2eWCJwXq7TWwk3ONdvFbWQL1GLLT8X0zRXszDUdkcgm3rcKVLbNzIKQJ869xg15rE+QxnyBKuM1dZW69GZORO0Mcwd2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBpa/qai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBpa/qai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1491C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773054893;
	bh=fYY/jPFoWD5tJlgWqUDj7OO0VV6VWYP2P/eoeDqVOWc=;
	h=To:Subject:From:Date:From;
	b=VBpa/qai3ckooRlmzqXfHOVXL27K9B2Rj73qqcseotAUJRdjUjJJCRgugpbZbVF/c
	 DOcIpG19zsw8O7eVWyIaQtKankgBVkkyy6tVlY0ptvf4WIIY56ImdMEhqTbSmX4/Ec
	 CZ2I6WNIt5KrLasi8Lc2UJNf9kfI5XFtOEDsedBp4wJzXY+2i8dHMClveAC46J5Af5
	 Ak+4Xvu68ZXMhJf1wMMIbWYOTmyDKFwMmRwGFFncHYkLMM3BTPpEzS9s24V40YknGA
	 ORKR7Qkn9ClJOhQuO60fdS81KrFu33N813vTX64vGKkrMRUIEUEN7i/Z+CCUUXGqK6
	 2JiYnFdqIQFWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9287FEFCD99
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177305489359.12765.483915855921856227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a6990bd42fd55b872d9de3c6a10c1047d590bc26410faf7fd3e239180442029
Date: Mon, 09 Mar 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773054893
