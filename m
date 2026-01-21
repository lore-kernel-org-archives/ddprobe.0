Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 094142D8DDD
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769027034; cv=none; b=FoEKKzzrLpcu4VF3vTQfHrT6dzBqOqhFn45LqANmkcdGx/AANR5YV0cqL3DgjU3AEvRaPmXltKiHknp2w7InfEwvuTtx5ucrjFYrgaTv4Qn7odJfUihK7f2ej6CGFu6qTwv26k0ZZa6c8U8pdUBUYoAlvs63B4hTgVkMy2Ovv0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769027034; c=relaxed/simple;
	bh=JwQbJB/xZAvactyUsMZmXSDXlryZLVQT12xyVYbZEwU=;
	h=To:Subject:From:Message-Id:Date; b=d79XryRncCDA0+6FTUNstYJUv0Sbex9Y3p9t0wE+WAs4vfO1smr+yX9gw3ojOzaLLqXW4MrubNSGUaBaPUkKQveUiklfgQnNdEV000VYHRVPo1jJALvCtknNxhOzAUnk+Phrg+Pn9gceUJbw8rdMDtPmNFwYNx83ICxqN07rOXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hdxds7XM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdxds7XM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E9EC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769027033;
	bh=JwQbJB/xZAvactyUsMZmXSDXlryZLVQT12xyVYbZEwU=;
	h=To:Subject:From:Date:From;
	b=hdxds7XMu/0D08NjQHGrqHKaZejePoL/9qrFesURK3KMZQX95bbJOKgDyabtP9+RA
	 V64j6cCWb0vfmviqN5CVQZI6w0mR5+t65bKKinRnOxA0jxO04BiaFgi6R50HS38Bff
	 +6EHEIALXDkXH84bGO7tGlOh5v3CD6AqVq6/PSBDnRCgHAfbG1S7we5WURTd2QNc/0
	 rsSnT1/UYDNA3zKs9W9cgL8H6LwMkvDTQ62a8rr648iufK4qlYBVmK/MOucijJVP3B
	 DhiDAkLUlAuEg3QcuF+9SYhL1pSl1ZsmkQT7ZutDkhbG7nRYfmME2XAXFNc9l5LMQJ
	 eeWV3pWfWVvzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A59C44508
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176902703359.11846.17649089280353288808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c14c52f1a34d374eb9b6fae4407193c7cd809a08bbe9a462bd7e3ca6ed8a1b63
Date: Wed, 21 Jan 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769027033
