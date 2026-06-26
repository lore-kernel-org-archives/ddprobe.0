Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69D5F2D7393
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 11:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782473854; cv=none; b=qDTICvJO+icXHp8/JDQj7yXumIH42co20hH/iqtwohlfsXOuJFVsGiAgIrhrkqknrRIxYe2LqtrgwR5z3yVwxePjYzuPTismPKzn4n/aGC95GHc/iMHnIu32x0HfDTzK6OpWL3iMLQ1ER70mL4mkJOcKJC/J2VRFzktssclX8rE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782473854; c=relaxed/simple;
	bh=ZsT3pRDnLCyLKqOnN9mT/Eqa7DshsTZC1bX2UgMbA3M=;
	h=To:Subject:From:Message-Id:Date; b=c0et598o0KtsOrYcZND+YqyX+iHg1Dl4rGPx1IgPeFtcbJ/3sWMmlVT8/ZXMvGkVp2jQEzGWyA69g1t5M0wXnQVSFcwfq9ltkHD0Jz8wi563y2r7EAqNjzQrxrKxHvLFNQClumwwJulo1t4ZvajiQHuHnWCKgZOK6m/bsZnGLKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+9/gaDy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+9/gaDy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D880CC19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782473853;
	bh=ZsT3pRDnLCyLKqOnN9mT/Eqa7DshsTZC1bX2UgMbA3M=;
	h=To:Subject:From:Date:From;
	b=M+9/gaDys/V/U6urirTJQ6+z/rcIcVk0D66cECiGe1L2JXK8inb5N7151DzyPkfs8
	 j1aazmJ8T8vn6QgWXr+YP8SqV0GL97CRw78A18vAILUv1lbP3R2ayFN+3DMv6ta63L
	 jmPtgLud+plibAgs+TarSbylOluJ7FwQlI/1AMelESZ4aI+q4gkO9jun8JR7ldGpgZ
	 x1LOtK3dKKrtfIYkS843e4pklC5eD7ae/+QmxB1yaSxX9Vzr10NJd2zJJ9xR5GTTY2
	 lb92cuCQXdrRWt9dRp62ZJe5IUxlAtVwbqJZUWtRNmUvj9WKNgbARvfw+uV9OBRfN7
	 IZjuuIN3inf0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B52EDCD4F26
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178247385373.30157.12857047086023374662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dae08fdc046f545160581546ec6cef14d0112d99e4ed9950078114b6cfa197e
Date: Fri, 26 Jun 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782473853
