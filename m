Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1B25383
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734558954; cv=none; b=Ohds6IwKi8ptfYyqMDU7hNeXEWVa1zrKhT55w5VxsIyrsL6/xj75Sfce37IRsXIg2zVZGYuRXhpXU7qQpLr+Cqz095UNWZ+NkRZWyCe/d28dwFZuZyZvDmQL7BMzq5QbngXFmOBqfz4WTCAspuVwUyxU2cPgI38ZH0kovWJM9WA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734558954; c=relaxed/simple;
	bh=t9seqTTNo9J0SunYsxNs2Hlls4eqmyvSbHG4uGhEpzU=;
	h=To:Subject:From:Message-Id:Date; b=VGEtg8I+1FRe9BBnxvBTIK6h+zWWKiSya8rcckk2+0GxRsTlemUKTqR6AzksHFscWjwGvy1Zw+VcYea/bfvB1LimXP/VT2otYmcQGtxqvVKWcZsf/kfCJgzCXBagSFjm9JBFy3TQF37SDQHLW3ZlnXNmvggsvDz5QmJ72jwxir8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIbuJnrt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIbuJnrt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B2DC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734558953;
	bh=t9seqTTNo9J0SunYsxNs2Hlls4eqmyvSbHG4uGhEpzU=;
	h=To:Subject:From:Date:From;
	b=tIbuJnrt3q3OmIJIAZ1bXG5tiuGrFsN1ZxDtgNk9cA7N60D50/lvPxhSCBGmcvmxr
	 /wiAAi6FkL2qtXclbkV5wbLrXVfiFHORE4ozaBNr339mQxEry+bkf9m8G4EKNtc+Wf
	 yNJvsbyD/KTaS1sX3pUYcmePvQvKyFeg4C1WzIz63PuQWMGXxVqAG3K3WT2VTMD0/S
	 GavOqTMW9wEtCLsICsGRFlLe1rmEF9oqJn6I7d+AO+34X5+rgn6ew390Y2f+2AUvAY
	 vsPsPfdwrgXEok0tFyEY2Vp0a0wrxUXyUMEyWViQLF8AoAQpNGqxHOVYVHsLn0gVcH
	 Cw9o6eYe4QxzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9993AE77188
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173455895361.22651.17726724453728195385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6cf0774f6ccdd0cdd2e000e93664d5779df49685d527e6a6c88ef2ebacbd7c5
Date: Wed, 18 Dec 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734558953
