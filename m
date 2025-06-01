Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACD92DCBE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748742594; cv=none; b=Hg8ySOtuH2JDQLeEP1FQC6H9wicBhMgVZAbXY58I81ospwZDu9N9d+XB33152nx1tDJjB9h9EicdKCjXgjCabIVV52G7/8CU2eCkKpuuckKip/gO0bzgVSpPBZdBOxUU0XHhIePP/769smSbU3IHpj39XyfnwLwKhSx49K91iRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748742594; c=relaxed/simple;
	bh=/GfQPtTIObxIS8a2MtHI0uTtwkyAU9uQ2JS/EDxJ4Do=;
	h=To:Subject:From:Message-Id:Date; b=H4lJ93eyYEWJHaLssp4fc4d7Sl+X420Conq7xWIZlugOJxLtfrBO7ToUv0UN4huzSqmSO7jRQYaRxuWtvNgCKWO0aAoM9t/bY82u7+WI2ydpA4+05x1PANhv/b6bKChnDtc5JcvSMhecZFpsjQUl/aItwL3bt2LAQcGJlX5f7S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVYo8ref; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVYo8ref"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4ECC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748742593;
	bh=/GfQPtTIObxIS8a2MtHI0uTtwkyAU9uQ2JS/EDxJ4Do=;
	h=To:Subject:From:Date:From;
	b=gVYo8refleLs1pAi9bUqsUvHaM0A3u4J14ZfLI9V+8c1z5RB4gAih210sB9Uw1a3X
	 Z3FUtd7d1f/WjzwO/p13rm9q4aEkZ681lwtFJ05L5k3mAQFV3snpPyCBh5K2Gfkqlb
	 WgGybDOvnZEF4aRO5a8wzgE+MjdKO7nEYDOTFquHVKmT0q+EkUOHQAZZzfjQD+cTfu
	 qU3/N9mZFCTkM1r9JlTJlUIWnJzlsU34XYo0MT7cpk3kjxipQKsZl2cGFSWlL+Qxbi
	 AiAqb1Tf4R8axyTmGuMjy4PsNNMIGoLcavJGecm/8tOYU0cXfY4MbX5ZcIpczQ2IYR
	 Wa2KK7hcK7ZYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98710C5AE59
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174874259358.15092.16351362297779476716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7734b2a1ac66cf751c1b38f69a38811096492149d9403c128fc701030e245c22
Date: Sun, 01 Jun 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748742593
