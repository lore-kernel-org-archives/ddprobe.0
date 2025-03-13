Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5201586325
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 02:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741832934; cv=none; b=dcyn9Qe0vKcsLdn4lI/PKCJ2Eph7EPKnXv175HCKXtl00y9XK3N8Nd+L6ksiwSIQhrQZ3NWIsxQlGxWg6Rz8ZNNiAn0jEZ1W9NUy98XvIcdv32HATXNvN8D/oWAeiCoCKwBk8yic0yRVX6nWjSELkcM2VsL5xmizIG4QMDOqmyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741832934; c=relaxed/simple;
	bh=wLfauGfL4fV75mxxxOmGtYbAyB0SDCb4mwgF7uhrTqI=;
	h=To:Subject:From:Message-Id:Date; b=gdcChJg0OAECBWNHVTZBwyLeP9NLX2xbGlx2FEV5zFG46Sd5t4vCQIRbJFZ7LzgEFesTEHYby2YqF7XLhGI4CwnpJemezENL1bOzc2upjPcQIdSUaKkYExfVaB+A79lMK9+L0GRU8+QF8sY8A56ivD1Gy5xZtc9KCj/HUJRFDq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cFD73FCf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cFD73FCf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC11C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 02:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741832933;
	bh=wLfauGfL4fV75mxxxOmGtYbAyB0SDCb4mwgF7uhrTqI=;
	h=To:Subject:From:Date:From;
	b=cFD73FCf0+41X8Z2Cd1PDhIqX+PoRIYjozvWmL5SrrBOK3Mx+3JvdSNHMF8AGcIla
	 ccs2BArkpmFgvpm+8iOKw1Stc95OrxU7ElG4TJGniTtd7dkzNPlg+Ak41rsunGO2Vb
	 71OoWGWkHCd9pBtq/hDatSluHYqyhsWK6+WBk3DhmL8ADdvU7pjXacuyK3OZgva4vx
	 kNp2SqvhBboK4lWLMldK6Abb7391CenMsjJtPabOmYwcQ/RNsiqYrzvsiZrqr3keOG
	 09g1SJpVQvkybxFa1dnWH5yudXvCUAUYas45gJJaF18GdUAgpf3rMMk66n1j8vIXrm
	 c1W+2dqFlUyvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A68ACC28B28
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 02:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174183293363.1804.9217819777060343840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a568064ee30bd38b5d69bd2addd8697846b6b76bfa89295455d42676360c2fb
Date: Thu, 13 Mar 2025 02:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741832933
