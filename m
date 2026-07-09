Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6F93B1B4
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 01:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783561114; cv=none; b=TWYVxqjSCGprZ6lH89qG3Uj6RGSQOLh4pfWk8WcC4TxJ2B1qdSnMF/sIy60I2VMzcGA5Nb9i2GBr1eSUJgzJw0ij7AxIDixP73P5Z0PLjOdleIZhs91hRq5RieYJnNSpMY0iHBoF37OShOXWo6Uw0UUbdJC8tc7cba5gAlbhXoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783561114; c=relaxed/simple;
	bh=Qo0mVW3URSZeQvxMIwpmnT2E8KGk6QE/nFkcTjAhvEc=;
	h=To:Subject:From:Message-Id:Date; b=GXcDWr3Nn8WbgWsHdGOajiF5NF/fPMeHaDiBM83ZvKtYL3NT9cYFmHJtNHYBaBTkdmQORj22OtthhCHdY7YiJXwYLWhB/iRSKb41diS4Q6lZTiZYqpw4fvlx9wMarQ+0Uv7zHbZKZ2aNpUrr/NEe3zPHQEIQ7x5GkxlzT82oZIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aTZYV7is; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aTZYV7is"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC65C2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 01:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783561113;
	bh=Qo0mVW3URSZeQvxMIwpmnT2E8KGk6QE/nFkcTjAhvEc=;
	h=To:Subject:From:Date:From;
	b=aTZYV7is43+MR+5oLhc+Bw+qnuod9qW432kGlWRxOPZIlZHMMrUgXR5BzkQ/vHoSD
	 ewYyxW2jOThJcrGS/4jnZGrC/7MDhdi9gWOY6brXo56vlLpykFCgAAtVDsI6DdGQFz
	 wf+xBIeeuGNlb/TjraETJzeMo8TwBq8pHnz0ZWewugEVItxCE/Xdi5P0MG8yHfqJFK
	 Mkj0QqrAaQgBloQFdr98Ba/73wrSZGagPUGuVxR5JM11vE2HQAYJl2yd4+3CaqkyWE
	 gicHRpZTy2XGgTziUBrnaQx/Nj0mjUGpxGiHZLRRC2ETOkmAAJUUOOUQmrbEOc2qI2
	 ngJv2lR95pLjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACFFC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 01:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178356111368.21603.3545661727966294570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d20e4cb84b896246b4cbe5367f80762b1970dc8ceea9ad30410a59971c1b73d
Date: Thu, 09 Jul 2026 01:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783561113
