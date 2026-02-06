Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227F333A70A
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770379434; cv=none; b=GBYTQ8coq8KfKGbrvOwl5ZYiRpyRN19vkiQUT76EMTNd/2L2aqp/zaDmXm/Liy0Wxd4TQzKs5y2Js8P2AgfaQSD7Dh+B4wWWkWCX/oSJ9mci7uFzqsGe5gsU0zAKDFAFLwlgsrX18GUKLaTmTX8Ggwz9v/Fili4b4eVlnt+U/4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770379434; c=relaxed/simple;
	bh=SHOiQbr+gJIJheg/tSQdy0h++VcNKFADRPq8vpGlVLA=;
	h=To:Subject:From:Message-Id:Date; b=Y6yKoKh2vth5emBMrN94LVtA8caA/TqIEDjYcHwr618XP+1GDID+pu6XLT2E7gXCcWvl6Uyitejq0RTfSRGGZtPrA0hV9yhlnqKvHk+joAdopMze8PabNBBJs08u8EwvVXOGkKts/QJiXk6teTYF7RiR1JnrRJVOaCzcKh5mymk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5/71P2Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5/71P2Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9DD3C19421
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770379433;
	bh=SHOiQbr+gJIJheg/tSQdy0h++VcNKFADRPq8vpGlVLA=;
	h=To:Subject:From:Date:From;
	b=m5/71P2ZbiaF1xEcsqRrHJEihZdVXBTZHaLr1ISdHdFZiu/VwbGcSzf60YGI1Afns
	 EZH++uwP4ZVCjw39muWvzxrJKYzehQcCeavzwlSEMyixHSTDZqqBVodcFhCqwfkPIg
	 K0o/E7W/ZHnFx+dhsKwTEnaZLdIH1L55GskPoDO+b+Z3TEX3PZ/WhVQhPjyVyS2v2X
	 lY5qWGBGxuKCayb35PRfAEXqfikvXatWzcHdvRs2Y+NibB6zb+3VMwahrWqjdobSO5
	 t9zafEWcU9bJXBggjpaDcnwb/9byromPs5uAPZGSq7KUNRaYDTDm92DrSS4mowcWfJ
	 xQv4/Sz/jsj3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA73EE208C
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177037943363.28938.17383754818286056522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9012f66b3eea9b991bbd903dee11eab51e4404486b8ea6aec690398596cbdd65
Date: Fri, 06 Feb 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770379433
