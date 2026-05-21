Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A91B38332A
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779332434; cv=none; b=VfW2vghepSvO4MttmbQmEiwdrx6U5TqQ6ne3s9IHflBKR5cjG7TcGA2jO2o+GZUYOfBDep53PDto3VrSCPvR6UDkbiZ9W/NmA13B3x6NqcTGIDkQtyaOrX4c//IjkufBpt++C3sH3YO5TRyiAGca+VtOcNIklOuPt51yqveZIg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779332434; c=relaxed/simple;
	bh=yxTkrsO4S1u8E4vjQzAqpYQ7GPvIh0HMPd5ZqfWTRfo=;
	h=To:Subject:From:Message-Id:Date; b=BSoshRj6k/y9ifAzBRBLBHgvqviP47Aqi1op9P1WO+TsQ6Av7cK4ILeNXVpyWry6EfJwQWebQWA/78ND9k1iREEaqEQxO4SG7WHwRI/jbdKZmBWK6dhTvNA0x2QbZvukrnSUiBm5D8hg2YnriUp0FkYAXMiTjIWLjlHctREak5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rU21WCDO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rU21WCDO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4018C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779332433;
	bh=yxTkrsO4S1u8E4vjQzAqpYQ7GPvIh0HMPd5ZqfWTRfo=;
	h=To:Subject:From:Date:From;
	b=rU21WCDOJTVMExYG94g7/13pi1j89lTXWJo5OUhRZkJj0I9Vt6mOsPpK618G87TiG
	 9AM8ExO2e1afI7PMgOurcxt4qQOpFLfUHsQS0a0ow+YYmYdwpE3iM0dkOGHLpKyQVH
	 elmrhhCHy3vTRaFBdplquZ3ke92UZccku+zy/80VInCw/AP+94otf4f0tbpYO9fJIS
	 ZluVmVsFttJlv9+6nCB1fAOo732bYWWbMNxGSqdv+ZqN1a1MyuPzU9eYRZCBtRiGwm
	 ft/BkAkGr6BOinsYukFkkQ5yKj9fPzGnoj7IS93BydFKie0U4mKr40A40hmPhlov8n
	 71BKRb7cIcHSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B509DCD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177933243372.20115.14786941469415869734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7acccd99f6ed2c8bd4af06f8b36ea55cefa465ead40e10a002ed55f4327585c4
Date: Thu, 21 May 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779332433
