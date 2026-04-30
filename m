Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B52E23ED6F
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 09:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777541254; cv=none; b=utj/1nieDfUBX3IjqRWRpZQoRtps04GdsThnsFRXBjnEzYQXVeZqGvPtPjstBpWBVR8M4W9bwqqfok8jmoPrPU9E1kCdHdkIZQLY79kJ6qJkWcXHSGHLKh+lgHga9DYhur5mtvoWggbg/79kHGNBFjGegGMDL+O8yk0GuIUgoqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777541254; c=relaxed/simple;
	bh=xSNjHiIxrCccJFluT8bihsUUNh9Y/ZAbg65ZY0vvbZM=;
	h=To:Subject:From:Message-Id:Date; b=hNief6K/U/z1PBZ+0RHvMH+WzwyDw+Q/4JGH4djpgLFj+DvAQKyFDZOGdEdyNaUYdZ/GQoR2eeTU5NW4/qaTRjlJ3IzKI29nu7zRmxYgdGMBGkMZoBYC7rqPQP/4yYKQ8AdWvhrEbJlYC+YPQcDDghTb0d6M6X4KeZKqEHWUe9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qD6PQGk6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qD6PQGk6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA0D6C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777541253;
	bh=xSNjHiIxrCccJFluT8bihsUUNh9Y/ZAbg65ZY0vvbZM=;
	h=To:Subject:From:Date:From;
	b=qD6PQGk6a9HJl/ikGak9wGHQNlltqGHD/fNgdRDhryLPo5M9iIGwF/jPiZs0AZun+
	 1dPtg9xNW5cQN93krCMrtQK25v16woXo1VxALe7Cc3OFHASZgbZttXB5vY2w+NM43P
	 YenZmwa2Ga6gEtnhseBksyysFK5GgKKZGiQIvfBSUddGR0V/8OXqQmZ3NiETdPQDdD
	 2teifihOHD4wf6r2oaYE7oY+iNQmOXqxG/DKUT4Bs0PjO8cesvYgEfo7PtepmO962d
	 iEi4gly/0ngTc2auaV5YcBI7U6ny9ZfAYvcjomXJJ1TtIo9lUbuMe4cNrYgoKiPiit
	 6zIpZ2iYbAmQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DC0FF886F
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177754125368.19841.3719409290319181403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21b4933c295dabc9a34ef3cd42cf5e6eabd52e7012bf6a7cb27b42c678e4ada5
Date: Thu, 30 Apr 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777541253
