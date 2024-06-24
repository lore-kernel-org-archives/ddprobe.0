Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 810871E4AE
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 12:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719232943; cv=none; b=t7V6tTOOeIuzovqrhKod3pS3xso900Bi7+5qeMZIKAmiMKYDryjwjrgc/hQikz1MpDSsHPa1Ar8+E09jtTOnu6Vje3fDaqq+T682MwY6iw5o270O/lHXkuxPuR6LAQnei89tpBVTvlYUWkiJdJ4h2PjBgqjeYOVFn2YR/EMzd0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719232943; c=relaxed/simple;
	bh=akltwvR+secfDcIby3jBkBwf2CsiKcouoLSFrSEw40Q=;
	h=To:Subject:From:Message-Id:Date; b=SFJjBYbq5oWov+FwObzCjV3iLYb5DhpXMxoQ0uiR67H10PZSzmjBhEScib2BA8Ry09DiY9mW0Shdl06dQHS5tMkx0H/DoWev0ZbVb+lIyj/6pWxPoFxEVqq3IOG83GsmlXc3F45IKpyiubUoheCYnd4dOy4Ku8cAxV0p0nEeT9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9pjoZ4U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9pjoZ4U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA9A9C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 12:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719232942;
	bh=akltwvR+secfDcIby3jBkBwf2CsiKcouoLSFrSEw40Q=;
	h=To:Subject:From:Date:From;
	b=E9pjoZ4UvXxOCzpDO4uapBME3uTngI3bjH48Bwu7SY2XTHb7ARV2/6YrFIhEfP2RT
	 MHnNSzizYKsRedqVM9HRy0l7Q91+WVdi5M+u4A6jUhBdCRBQ9yEBmQcHLP+3ampnW3
	 5IXomyW9oZbg/Yitx80D2epIWzx5UC97DV+rqzHQHU3KHm9n11EVfBA4pqHF+6WAqr
	 mhHrQ9pUXXdZorHkQWpWxjB4bF9/pL3A07FVSFXG3HDABm6rliHTt6+7Q76FhXfCVV
	 6DAMHX10v9fVd+R8GEvrNm6GCO16wJ3Z7XfnaiVgv5YNtZh0I683p1juvreAWIqPtk
	 5/A89iXV3Y8Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1DD8C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 12:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171923294277.28234.2034184819124733490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94fac23ac0c1efd3d51b743269c6f491bdff8350083558a8b744f6964634bae3
Date: Mon, 24 Jun 2024 12:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719232942
