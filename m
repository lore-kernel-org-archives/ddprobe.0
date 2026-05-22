Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98479379C5D
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 19:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779477154; cv=none; b=X54LS8BzCdxqTOnQeTzt18SdT45y0r3jN4DOCgDy5Y6zsM2fmH4PcgQTO/IUsREXcqqAQplggIRWAAnH1OF19IQJshnd96E5kRtGysYfQiFtS24cUgBplM2S5W9QVD94VsA8AR5ElWo5HPyCO/zZUe4CHHZ9Fz40xxmya5lkf4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779477154; c=relaxed/simple;
	bh=Bk2DUuCOFWQygBwxE/X/DI6wM9I19S3ZON0BFaILETA=;
	h=To:Subject:From:Message-Id:Date; b=f6n4PR5J6zxAacXK4/6gXtKsE2CxraSgWXsiFMVB4lJAueGOWu4rD8SzjWnjnuR2yvZk5kTZ+j/GnXwlAzUvU1LccUrWYR+Yqdu312yoAOtHwE7K7xzMxp2wJmlQrGs2yc9/KOZP+CLn999MqvMgB37eVO0MfAN9QsjlLOUBw00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWYmRWdT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWYmRWdT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C31ACC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 19:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779477153;
	bh=Bk2DUuCOFWQygBwxE/X/DI6wM9I19S3ZON0BFaILETA=;
	h=To:Subject:From:Date:From;
	b=DWYmRWdT3HuPfoJ9XWEDviqCaXfQf3inIFU/VzHSTYMu1f0LYOHGfj1I7259O7ETb
	 MV8GGQRQciueks1q1dTzogmswsdojitlavojnBqYsLjv3XCNMYf6ivb8thoTdFo9PY
	 /DOxpSyYAQFaLjRVkwkrkfPl9y0bTbcCMte3lEC8CSiWROi4lLfFoFQ9C1r28poJOd
	 yiElrX0Up3YG0XGaQyHbo+KeKzAi5/8fb4pwMKnRUfzv/DDuL6Yrf8k1MXPTmb/L7r
	 V3/dJHhX3XiDFe7j3GLAhxYsVGGwjvj+ohqpZKyszIGVn+RW61zdq1zyFIBM6OesRy
	 5BczUGbIJXO8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4C2CD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 19:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177947715369.2261.4823340457278783308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12acee9a4f18006ad776e4ca07c99ff1cf9899bb113956902f55ea293f98fe04
Date: Fri, 22 May 2026 19:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779477153
