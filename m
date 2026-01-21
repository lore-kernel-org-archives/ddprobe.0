Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A10D283FC5
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768989234; cv=none; b=l8g8d719J8gSXqO5wZSOD35L0iQVqyNRaMYrYsk6qLV7aSbNACnrDDW4+IHkZzNFNKzGG2NJteK1sfGSYQF51g5fcyEjp2UQJPvykrkajAANO1p7PKhvYZ1OyUgcYMV+3yrxIuxY00iG0kfDsGrXkZTkqCaN63HvSApRsCAaGpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768989234; c=relaxed/simple;
	bh=29i7dh6ieZ/ISSu3+F6K4WH9CJqugG/nnACy6/Fuyxg=;
	h=To:Subject:From:Message-Id:Date; b=tEheoIblGlf1b/vb9LJ+KABz56D9HryQlDHJu8R5sU1lEr5TVKavZ0Npe4zT3KjgqL80NGg2K5OQdNF5b5m1f8g5ae5+kSflZGD5LSjxE/5OeNwN4alIXMAhSUp9rKDWKLwao9f00OcnYVfSPfX0PaYz7Ms323e43sKlAZXwiIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ID2IQRtD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ID2IQRtD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC48C19422
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768989233;
	bh=29i7dh6ieZ/ISSu3+F6K4WH9CJqugG/nnACy6/Fuyxg=;
	h=To:Subject:From:Date:From;
	b=ID2IQRtDLvevqCDYQZVe0e4jqDCISAZxVCQ8IUygEfKg5IQOwLDaYk2oEQFzyqiwW
	 0/YD0ATKefECovssUE4abq2YpXaiA3ALB+FEm+bGw5TMXhbvbyI2VaT5cxDkJt/FMZ
	 kUiAyFNqX8vOwgmmy31ipCNw5DhbVBn070WpkwWHVTbfI7+9FEaXSPYNzJ5cfsWFa6
	 uJLUv2ggaEuanVG1iL4UMPXeYz3LWCz1YlXtvy0kZpogmLrujho3P9KDyENJGNZIOz
	 GtEINuiWCV8jkZlP/U5Z0s6K0GF70JiMheOFZUaeUUL7zbU6lNEPOUl6h6ZNi/a6xb
	 aeEo/XlhJhbHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91523C44501
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176898923358.7970.143155511791805507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 087c9a49d6d574119dfb45dc1f3e2788dd2e29c15ff015d8892d9c23d9bc23a6
Date: Wed, 21 Jan 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768989233
