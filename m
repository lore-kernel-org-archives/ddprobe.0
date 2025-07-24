Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFFB1EF39F
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753384194; cv=none; b=GpMjn8lu+lOfqLPva/626m+2ThVqyTmjelFTWd3wVAKOEjnUHFm+t5AVDGrH5OzHOKWrxkFvHEhX42y7YN9kR/nd2/SNZD+WHmM9n+haXyhYQ92EgDhXTbePl0Xc23pUatCxlX0JF2rWprPJXMaMR93X+Fr/NJG3EGKA2qeR7sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753384194; c=relaxed/simple;
	bh=GkALJ5i6xYcNPkCBkwDtEGARDslKRzazK4u5KDyXK0k=;
	h=To:Subject:From:Message-Id:Date; b=pWT90RHYtgBRsn4eoIwwwUf260as2eN1Qpk0itrXP0ID1TzDH2MSNHLO7Fi7qPL7rfO9czvwz62zIhU3aN1tMqy0YWvdjsaKvlJMYV7mzb3nWbmRI4wVMkb/zBj5qCxMQjNKCBpbPL7xgk35oi86E9IodkHk/89qmzqZmHOHbmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKd12UB6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKd12UB6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5052C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753384193;
	bh=GkALJ5i6xYcNPkCBkwDtEGARDslKRzazK4u5KDyXK0k=;
	h=To:Subject:From:Date:From;
	b=sKd12UB6HR5lHWgioKrc5VLvEgEqrS+Bz4MyiaVLHeIXHbuBkn5NN6HfJYgVWfU06
	 wqQ8eadbKhlZyiukKX+9RgvvYCcQdRFlr7qR4sXKnZe4TFH1nqjt+qCDhCrao0Kr6D
	 bq29rK7nY2P+NNW5ksdh1wPDK+4trNICmeiw6a8yWypM9YAgATdjnH4YdRAGrauMPI
	 FH2EK32ojdTp/l2P6Zy5KltH0xwCDw47jpP8IqD916BptPs1B1pd5uLfhZYpucO9Og
	 us93Og1ti4v+RhI3yWmhFFaRHRx1YIsMY4zrs6nQZGGKAO/N+rt3nRBJKVVBMW8+Hq
	 hPVKMIU6Zye1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9114FC83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175338419358.30700.13998094124228979829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fb1c735811b2ffd9f10a612949a6ad566187221e86bafd05468f2739d5bb1d3
Date: Thu, 24 Jul 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753384193
