Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B69F1AC8A9
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724950554; cv=none; b=fDyRxaruhYwXC6AbAIvrLKkWZdl6Na2fsA0bYiYguei6lI68B7GTVVSa9Tlhgpx6TVKf80D/uNTu5geemw1zsiM2zkTcV7GICImdgoEPWb1lnufiHGeUvg9m/mur6fuT64xmup0ZOi5XbA5pDSn0olI2jzCPpSLxjZAPzuohyZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724950554; c=relaxed/simple;
	bh=SCqyvA7VaOYNQGmzyfEgPkSKqqQWoCujZlA9rRh8dbA=;
	h=To:Subject:From:Message-Id:Date; b=dLCysAo2r+Xm0DdsmAV+ohmM+is6zV1v3jHUTRK59JIZ9OKP3iaJJohvCJpEzGOdMVJrnbpLWCeGofDXlUKIT4NoesUQ2QYH7oQrgtZBVxjDqOLS7wYjLmCPQZulrqwNrODY6tBa9oRXJ5TXdS1dtd8FfB4qj62E2ZlSnKqWM+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHakRZri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHakRZri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5181C4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724950553;
	bh=SCqyvA7VaOYNQGmzyfEgPkSKqqQWoCujZlA9rRh8dbA=;
	h=To:Subject:From:Date:From;
	b=UHakRZri3Cff3Uj6FLp/GtlyT6ysZGHEwWSYlTt4JRCUaWtRt7AtCO0iea51DD61Y
	 1A8VbVLBo16jzAB36I0gcZkRgSMTdhs/ta6+yOs7MKvFlUSaB0yhk7vBxS018FzV6W
	 kSgSBgGjx1vZb46WNZhhW+Vv4Ig0MbG3ZqZo1KDwDEzjTEezjcDamd+VZqZk92qO3i
	 KO/S0VyNU9iA0+nHBdyis9gymi1r5cM2O24qqCO7YXLfk+caF0z5Uls0NBxjdwYPry
	 zcjqnZzvf5XwOrK12InKri1gxLM/cGriR3HhwKCYGKhZHUJDM8vFwOY39NoEFHGzw6
	 wxV3YmCJOllXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925D1C87FC3
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172495055359.15953.13343702659732403513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0af4f088ed8e4f8fd7a9d31cce8b8fe054c2df2b86d0efb93496ebffd7c4fbef
Date: Thu, 29 Aug 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724950553
