Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FAB02FB6
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 03:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720409183; cv=none; b=o50UqQnHXKfU+D1RVNLtNxIEER0umdKNi9zimNKPzZOzoW7DC1lPf7r3YpgMZ/YX3/bqUTBB+FLoZiNsnvUGWSYa5oBDLclMicPMETfSOMpG3jZeU8iioYMChyuymq9EcJBnXVHvecJdk/pjtSOBDpxXGB8dTML25JFKBW+Fq1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720409183; c=relaxed/simple;
	bh=Z7MtG2DMIJT88uDiF9jM2o8zehbW7a/Op+mbF1lNrL4=;
	h=To:Subject:From:Message-Id:Date; b=Y0t9tOQv9gEB2aK2iYZTeSWbInhZp6eA+hnKYrwiCBL75rlrpABf1g5uRcULahgVkWSYpP+fy58J2llRKFq5DyCANnSdOpc1Ib3vOp+krqMc5/91chasdJMlZRDPb7uU3FaCPPQt9fxUSsD+zbzkt+MK9sTniAaQi5A/ew23+yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MA90X59w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MA90X59w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0C1AC3277B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 03:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720409182;
	bh=Z7MtG2DMIJT88uDiF9jM2o8zehbW7a/Op+mbF1lNrL4=;
	h=To:Subject:From:Date:From;
	b=MA90X59wa3FLMYDrnObefJmDXX2TzOSinhE3iDfbIJ/CISJm7uzhfuERW22Ln88z5
	 uIFV6NswkMX7wxP4M61E8GZaDoGYwhCrIA1F6nPo9PNbefWE6te+MWegdFZMlfklRi
	 ORFzYkBu88KZ8hcXZyKU43Co4RBWnL9AdYKbpIEebJQwcqrNdkJyuDt2CZFTr8GOgQ
	 OejgtxlyFoHcLJuvDa6iLxOkJVr4cKYH/b8zJ3OIj9LhvWhRc+iK7d+fme4UCZcaIC
	 ATgps26d2IEcYcZvDW6DuIiAZAPJK17SjvMzSBAgCUxodz3SzJ2TJvhIWUj9CbjUNl
	 mwgN3hhvS7gbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C91F7C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 03:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172040918280.18760.2186771395895369715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 348cbc459cfb71fcc0296faf22a6ddb8367f611dc3cf9308cfcaa4366e14d039
Date: Mon, 08 Jul 2024 03:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720409182
