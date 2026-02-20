Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B958366566
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771612494; cv=none; b=CueGUpqC1L1bRlC3N8BagwjjPiPtIi4TC/spBTyEoAiasY2d6QMCUDmXdPhRF02ZRYDbrQrmDugKECHt4iX15uFpIY2x3vZOnCn/a0ctIQwsT2k0A2PGNnltiSzp5OpLM4OBgQmR8n32BSSHugwOozdRClTzWq1Uda6L97wZkWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771612494; c=relaxed/simple;
	bh=sNVAhJOIbkUA9Wr+YVO8+XQgicjdXMNDkvpaI+SFRz8=;
	h=To:Subject:From:Message-Id:Date; b=iuvWftw/Hjv8HZ9kx9hmO59zrPv9tsDnqa7TeFMW5RMS8FVTQNwE+c+YeLTjcFemgkoLuCf1tYL8Hz2SYYxnW+O1wheBe3BJG9i9DqGyEkXOb/6gdpBMzqpv/nZee1Nof2BQu5+sJIrI5pAFEOytKrJbJKQ6dcf/oyMZtgKQ7bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExSG7ABv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExSG7ABv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B14C19421
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771612493;
	bh=sNVAhJOIbkUA9Wr+YVO8+XQgicjdXMNDkvpaI+SFRz8=;
	h=To:Subject:From:Date:From;
	b=ExSG7ABvGC6Cb85rWu6WCHVSsTd/HLC38F3cyb9pjOUn/igxckxF4+024X7W5RRZT
	 nSM2yiTMRFy0uiQHZykxylEiyOaIeIqEl0eRe8Zhaz0dqjqOtxoK3OJD1s4Vw/2jlt
	 GQY/NDqbYNN7p4I3iJwRODKf8NuyApbsLLvHOmNn2XzqqvNti7eMgmdB0yX5rU6NXP
	 KbnHJVphT2L3gl4ioA+/MgdZm4OojIfZz/ITHUtXZ5DIerXg9mN4kWpkdmP3R/M7IK
	 PuBH/ufEk5fx64vWfsve/XrGu0Oc9Tj1S49zsN6xg6OiAz/WV3t+sF36qmgjmFZzqV
	 uH9CFwJFXIrrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95472C5AD48
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177161249359.22431.11682261650971017077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d2ba626d4d0ae08ff64b53ab2dd1160d7cc78268c25bd9e78a33b901426d343
Date: Fri, 20 Feb 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771612493
