Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2264D280025
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756825794; cv=none; b=Y/84j17c7otP1bxUgaKcOkrE0xgtro/M8U+HZ+gWu4AQGDRdVdZ2d285pQ5xxQ5gbaME5QDGOcYcMNxy5wfjjlPcngwxYiYJObNHcLreMz9WkipA+oaG2GBLP2y7t+kvcgGBlFskEFw46tCzw1ajreI9Qv/auKeHl2/ncidyZuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756825794; c=relaxed/simple;
	bh=i1qyx1leXbDPseEW8hbzKS9K28nTTpJyBZsBM0AMKqo=;
	h=To:Subject:From:Message-Id:Date; b=oEvjB/yosWTwDY4pNjSdI5bBGsDfTB2yMtHw/pJdOkIbYXveOLTRQJi3Edg63KrcxAaUaBDcqHkv1OsZzUFi4brjeRW0uIPnPKr6svfG6hnXj1b8KTZaSO5P0u5V+GjX+zT8wCcckzWmPuUjHi47iiU1rGCnUOftIUFlY8zqZAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BnLKYHEM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BnLKYHEM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15C8C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756825793;
	bh=i1qyx1leXbDPseEW8hbzKS9K28nTTpJyBZsBM0AMKqo=;
	h=To:Subject:From:Date:From;
	b=BnLKYHEMT5Ediu4Tk9puREcdg5pToU8j8bJohAmASQC006qmsfKNcdz5noDGwm2Ds
	 ElkBt2ocGBviqEKBSpUNY519/TYYZEW+4DoC+DnwSrxYv3YhMKUtpxSoyO8pjmN5gJ
	 vZ5/lupwow9/7MlZ7/lC5TEVdtVbA+SZpVeABYWWgpJVZaCmW2QMNhKJ6W++MAefJ0
	 5zC2/FF5P29JDsz4OIQ6BaXjk4nhgptGtKSfdc7dRQ4S93l0TBluEVIoSrCWYCnJDl
	 enXpRT4GZvup/H0CNzjJxPYpdep6guGC0/MDm6wrL68vbQTIdbrVh+MM1hchB1KT8w
	 z0XrCCf8380hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD3CCA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175682579358.27256.7729137342624258302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5a4d04f229a9f5cb49b6da9cb16d5a3ee11533607a9d99d2c0f877eb15be0a9
Date: Tue, 02 Sep 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756825793
