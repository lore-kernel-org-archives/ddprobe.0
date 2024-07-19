Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D884174C
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721419554; cv=none; b=MprPAwwza1eUHMyEv2a09JddAQMYe0SHsq2ulyUc+ZLySSR8iFw1ERs7fdN54+iO62i07LcWnBnZ2TQRIpUdNUC1/bl15tSv0GjCej4Xy6xbVl6z5yF+CPNX+RhSQXlmXdPizZnILZG8SPJfhyx3hox6UszoOZdYC/wlxVS4oww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721419554; c=relaxed/simple;
	bh=W7Kv4Z/5qbgvgn9tgQe/eIJeeXVHOWOYIPxtSoWubyA=;
	h=To:Subject:From:Message-Id:Date; b=SJHrLCOff2lZG9hgXJGNKNN7xCGxVTo0Ad653TVnty09J95OcB18sH8+AXKXS3nu6D4wmwPBGfcU1xBmkHBDzrZsdGDCN/VChA617q9dTFw0nXqwkeYaQ667VkwEJagun7E29dtONlsgAOV35WUvNpE0cKD0f50o1Y7NVuUHPO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nsVkWn2C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nsVkWn2C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67F7C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721419553;
	bh=W7Kv4Z/5qbgvgn9tgQe/eIJeeXVHOWOYIPxtSoWubyA=;
	h=To:Subject:From:Date:From;
	b=nsVkWn2CoiF1kdm+QwIGFu8JZsflpRA9z651WX+ZiGQWOKnKQnnLwpYrCY6z4oRTj
	 bNsNvQgzlimOUgowDJP0p/hQtNEjC2BqsbUrI2dGiiKADmvKWkz13nXa7Jgyk0LeOy
	 y6MNul9cszylbfSSvO2wxCiu3OmcSpTxw3YhDmfndf/epdSaU5PsVj6ERaPP6Cmkzn
	 umxXsxOanJ2TNR5uB/niQjlW/NLFEwSELLE3ejIf2n21VkiK50OPivLGXCwDvYfb6X
	 RX5lQHsTM1Fji8IvanOJhDIFC3dDJuwK+ml54sqH6B6T+SEpXhQ0eqxJIXToyrWcXa
	 YDP2iB7euXbUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D13C3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172141955358.19634.3533589365937312395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0c1ea119ccf59a2c55ecb291d509478ea6435995df5c9d82887890fe72957c6
Date: Fri, 19 Jul 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721419553
