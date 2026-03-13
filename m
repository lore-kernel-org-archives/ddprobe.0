Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04DF41E8826
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773428094; cv=none; b=K0T4bbbNEoTEo8/4q2L5Z+nPuT2GDerqgeujw4I5rQm49HGUc94Qth4I2gyTcZtJNIle3A4yveRY72osKCvYDYMGaLbsRUX/iU54tmEgYH7EdnJXa357fQl0/H7GpQOvfQuwUderD7sy0uZb2tmE0gEnU+rVNzMWRvO0AV7aPRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773428094; c=relaxed/simple;
	bh=ewimm1b9ey/kz5jJZBcqY6oryXIYjcT8TPscQJZo/2g=;
	h=To:Subject:From:Message-Id:Date; b=q1ErvcoMDSO5dl5OiXFNbJto1PbJDzOib3DDEfUkymBU/zfDEDMKSsMincjjBXNJF66UhSoUfXUa7VRCisCiIuAkDz3SwJXQhWbFUvGwBQuL8PRqID7iItdYzMJaTWnAW7D/adEwmTLtP203VFy9J+bmHs7EurWGaOgHN0N9UkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MapSoeqW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MapSoeqW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9411C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773428093;
	bh=ewimm1b9ey/kz5jJZBcqY6oryXIYjcT8TPscQJZo/2g=;
	h=To:Subject:From:Date:From;
	b=MapSoeqWSEfNrm5uDRhoUlAi/WYZ5oHYz3kigrIkzw7LkN6bAWky/xEJ4qApfmBV5
	 57u/uIS8WXFeH0pJBIhAmjEyA0FShWsv5L6D5RKrjlf6cH7IPp2WFhJ5AwtvjUdu//
	 cDQwadHiMxSfLtwMgLuWwef65XrrhvoQR/UUUmqvoO/oDhOBVUYcVJ+iIlig8FYZBk
	 UHhd8ynMc2Ljji5DCO1Gty/V1lqHIberGKIOs5AdPNx7HvTqtFOoj8OYRcVRgv0fvM
	 KvfDfnlWHpD4G3A6nxaL1ZOaz5K2f4Uf+ru/rgQWi5eP7KLiQvxqcF43A3tqMd4iLd
	 o1EyR6xBPYAxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98096107BCD0
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177342809359.3260.13136224760449321042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 296c202f2e4d6d771fcc862fe8ff8354b09cd047457db8202b17a383ac513830
Date: Fri, 13 Mar 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773428093
