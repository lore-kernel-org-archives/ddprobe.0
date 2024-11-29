Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBA245C14
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732864554; cv=none; b=A04pr/FhvmZbOt13YM+tznvJdr6qcCvWcKM2Fm/Aa8RPDONv2grykGXvrJiz3spBcebwFngw1q1EI1kHIC5p+mpC1v2LbUBlp7KTYfw1c+pSCWSKxqYZKfWdgeKfOneQZaswFBfAmQISgtZprmEx0u86QBrvq1uqrZML2qaA4Wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732864554; c=relaxed/simple;
	bh=Co6X36XwqNh6FjbEIyFRR9MPZ9ijgxvO6A9DHSSX184=;
	h=To:Subject:From:Message-Id:Date; b=kzEAlYqTuWm4uvwZzFdEJY7j1LgFlsRQlxMF5GvlBY7r3cq5plSZ/wmz3RntUcbGJdXqmqpijefPvYTim/l1oKbjYuzs5IfJ9DKWC3rGk4pG4XvXW/3upqZXe5gavCBLcTw+pG5fK879u/Flb759Fg8an3+bW9NjM60VfuNL/EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbkHe4+h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbkHe4+h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD260C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732864553;
	bh=Co6X36XwqNh6FjbEIyFRR9MPZ9ijgxvO6A9DHSSX184=;
	h=To:Subject:From:Date:From;
	b=rbkHe4+hZy2LarRhvS9/50laVFe2Dc1A9aaKWeS5Ev50Rn/2UPuldiZwfU8sZbo7L
	 Y/MYJVomBhBtcCpafPa174B7b07F4nI/ushJ6k+ENz8Do1pISIMIqpbGbLY63Cymsj
	 D+GBuomysbvjalEPiB7N7yiwh7Gf789N/Njm+izOyB4xVX95Dk14F/8T+pPqCbz5e5
	 MlZ2lECxZ1f5CucOxTh2FAQPsYr9fTIrc/YTzZmIXTTUJUPrpE1BFraHmIH+WS3wsJ
	 m50CFu2qbw1HjnO0qqW8BxR2ZTI18W5GbkU8EGxfKDtNE9xfM7AtDZHHMboOAfH2W7
	 NmjD4/FrF/eBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC3ED6EBE3
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173286455362.4440.10971819151955878276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16e3a8e615b98f6b8c37e3facb8850da56735b6eb93ae3667051fdcccc022507
Date: Fri, 29 Nov 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732864553
