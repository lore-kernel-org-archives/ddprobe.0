Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB3435942
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743273594; cv=none; b=Wwl+9TnEKodqJoAh/8nMnKIHR8zX8C54hCqJAErsZYzyOjJp+2jytPnRAEXP6obezcRK/Azedepbdk5ezopRYDoYkYznUI+Yzc9ncl4zyW48GMEfAUDkOHTgNzWALGfeX1cGBe3b7P9c/vlj3GjWe46xOyG6ZH3SH6IzpXQxiPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743273594; c=relaxed/simple;
	bh=X+hpfPKlZSi1ka2iNMBLJLYQW5lpgJ8AZq4CeEpKo+c=;
	h=To:Subject:From:Message-Id:Date; b=alDGJRHUW9uiVZcJpHVfFF7bMFHTN3E3okqbP0nqlxWgTiRjIqLX2sg4VHU46j1lTAAi5OW7v+xGoNUnVFljNJU5sVE80bXs/5nLPCWAuYY0dqgvkCCO80/sOJWWBL2Zb4F/cnVE5sJEl4alg4WXW6qu2PejJCsp3dQSqD25Co8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ozgQwJdT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ozgQwJdT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1DF0C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743273593;
	bh=X+hpfPKlZSi1ka2iNMBLJLYQW5lpgJ8AZq4CeEpKo+c=;
	h=To:Subject:From:Date:From;
	b=ozgQwJdT/hjUYaIfleGVdYr8jYxj4KN8gwtA9/mAcEKnqesaaLzQUdMmm1q2SdbHb
	 7jxINpXEkjNuuVJg70R3wyC1H/4IIbgF9CRWlPAd6UEtm8FDgZ4duU6zahB5b7Zmnf
	 +JOnizhVCfgEEidhWPFjX4RFLFUDj2x1K3/OoHiKdgyQ8Z7H4uCc97dztAalFTLGIk
	 ENyWGvklA1/TW/QJ4qb6XrPq699Yt+oahGa+Bjkpqa48hayBR3EzlGKt6+ujcSdzo7
	 mGSYmLTU6eCVY424WSh6dpYEpMLA8tWl0n5IXouAhubHnG/jgsUixl7K/tobX3Osa5
	 d+2lT79T3cj4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1753C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174327359359.1551.8295817405121187444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb0989a9f5e07a7881a1f4de7fd99573b9863c8d7c2357d94de0ac6926ca1275
Date: Sat, 29 Mar 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743273593
