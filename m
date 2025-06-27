Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CA51B423C
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751051394; cv=none; b=i1j/+U5DJg3/syHF0dQI6FgwYUZ8Ja9zFCVq7rA8SUj3wv75FLRGTYe+UA5p0e3R3jrqNoAKRRwy+g4jv9kiW8kNO6KjgE388Y3CRxXw8juHlfhp7rqiF1/oFH2MfaI5N/E96YAYrBEPNzu3/YMMqA9xH64+hglk52SPHHWNHjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751051394; c=relaxed/simple;
	bh=pxyjg0O/X/mbGwQBeN/TGP1szG+HpBBvDVY604J5wMc=;
	h=To:Subject:From:Message-Id:Date; b=u0C708rBMjgmB54qp4rsuL0r5EyakXPpxv7fV4ehRx+942yQ9Wmuy0OjEfFQ6zqvThwR210LeWW15Le8rZv3ZbeoMR1XaN5vI/5tQOtJvAfmTE2QFAweVo0eP2sWt5UFreLwgfXUJGuHXmJ2ecB6ypxNn/MNYm6RhZV4RxQ5HHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+zKJMJu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+zKJMJu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2534C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751051393;
	bh=pxyjg0O/X/mbGwQBeN/TGP1szG+HpBBvDVY604J5wMc=;
	h=To:Subject:From:Date:From;
	b=r+zKJMJurWvEprpfCBIaLTArK7/yLj0a7Vl9WFsfMVJPrRa8evOcf5q424OJ4zWYX
	 B6okKD31IRhvBbpaPIls+OStJmXb+AgWXmsBIzmCY0/xcAx0ycx7+rp82+ZXPC+e3p
	 9TW2G5w7vTcOEFbL2zUyWf+nT6sVWGRmT0Ao1KT8ICRI/kiAouqiMqi1MRTJuhLEFZ
	 errGORae6052b9VZEV/6KVkf5QvCv9G99CAZ6bjpp63+zxxRsVPAzlO0C+E13OAldX
	 BurVWCt+W85pGfdcXe3BufIDBY43jE6KJbuuIDHhJj9vCgeAHjb8mL5FcuUhFtHpN6
	 K7VgpOdrbK6Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F28C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175105139358.2041.4479072090673220844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0ef3a0448a2412b3787d35f995f04137813f2744c5864d9458c2a1557220e8e
Date: Fri, 27 Jun 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751051393
