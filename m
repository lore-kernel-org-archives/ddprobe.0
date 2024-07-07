Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FA41170F
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 06:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720332383; cv=none; b=Pn1tCDfC2SHgXUt2QIbfi7QNB5ccO/3RCq1VDQ8RzOiEJZQ+cI56FOR9qwHzqFB9lQmhFdaAKyXjGPCW4DDfp+bb3pR5aR28cvPGgqekldq/JE3mk7ZLbh9duv0NRq7u37wY4exKiin60URLoKeMPz+9PXrbH1X9egGzX1sTB4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720332383; c=relaxed/simple;
	bh=tuO7ruBu9qjdfRkEDCohhrOdwiGUydhQfVbmHvkBSlA=;
	h=To:Subject:From:Message-Id:Date; b=p44VrUX0SCa5JJsUCA/8SeHGoCeanlWfbdlF3lqFAN2jKGTetAU2bNI10Aew9yJSJ/7es6NjRT0Ibp4/atCwjkXm/GPJeoHKf8tT/wJpWXOxlC/5TJE5E8kIyW8mmDvpy1Sg1LaTPnCH9W9G6wCtYf3zKkqHtafq9AYOTOGOF1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGTW77UQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGTW77UQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6216C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 06:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720332382;
	bh=tuO7ruBu9qjdfRkEDCohhrOdwiGUydhQfVbmHvkBSlA=;
	h=To:Subject:From:Date:From;
	b=NGTW77UQi3H0b8nsQDkAwf5m0lDYCTI9yAjZ2Z2ISs+rR9Z1E4X4XnA3VZT8wBNUb
	 g455isBUgkda9BvPL++qf9Hsx136waDKC2hfawI2A7dU0cOidDJrPqYRCfvXE0Ck1w
	 5qcWyJCDMz7lnrVyQk3SE3EA8+STvfEHLo6C0KiuJ7HRb6jbKcEPN/14VUZq4UdSyV
	 +OBDWXKvgBW1WY+T2U0TNioQVBUtg221rsYKhIjzOF9RQPeIDj6klQ4MQdFZ/7Cv+a
	 KHTMj0HJSf98imkLI/H9BE7J+pajcfMSofxiT3kEOYgeAaKdEnyn3PRQ6ii+JMNmIN
	 KMMPciRFEl9eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C17C5C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 06:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172033238276.17924.10505299751080264021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a097b90d0130a99a4a407656d8b9ab342caeef16c66bde88e986550d370c2527
Date: Sun, 07 Jul 2024 06:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720332382
