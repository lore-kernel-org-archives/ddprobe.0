Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22076328631
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760978394; cv=none; b=Yc/mD4qiE1Xs7wldGBmfkituF4rvHVnOqgPJoE1YKbHVWUuti43QZwAa9vs2UJc9JKMevcrwMFfo3waqUw7Ke8mDqkV2HulGrYnw2ReU2SARNn4yz68Lq6j7Esg9EJSjTY5DGPnHo6X3pQ+x6y+uqGJxwoCys5TFjszZSklBZNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760978394; c=relaxed/simple;
	bh=I0ESunOSbJyr4QH1WnTi9/3d0MxiEcy/GYlmAomLczI=;
	h=To:Subject:From:Message-Id:Date; b=jFgKMWSqfFBtZYkuFxTIq+Qr3H+CEozcRZ9juZa6ay/L3tnU9r+7b72rtCZxdf4gWEt0B3x6mo6yEwM+MktB79/bjuQfYwmY3Cp88hFAFQMdAuzHProJAnls0rlHinE9QsCeGvyB/PQ/n+rSBD/QP3T07CicGxLqtTOonQlstqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t8dIxXXU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8dIxXXU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82A8C4CEFE
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760978393;
	bh=I0ESunOSbJyr4QH1WnTi9/3d0MxiEcy/GYlmAomLczI=;
	h=To:Subject:From:Date:From;
	b=t8dIxXXUAXiEzQN3I0TgP8XTsoIk1g5kFJHCEY5/FcOOuRpImtiIPl9PngIJNqFDj
	 W48QNzIj4KWr3athy2TKI5dYdZ0k7rlM4Ic9Gd7W9rG3eBQl9W9uc/jedlD+ukMM65
	 nBvBIJXmvP8o66BzNi5pYvEOyhOIuV28mdniZ7KPKeXDVjM6wgdqIdFE7jtFs1dCcS
	 iK7gwbMPxo3T29Uv6rWIAUWnCGaVkszZfkShXPPibTCnKr9eI/MEdoZQEZe3L3m2Ee
	 hiZoyEaR6+evpPqc5ZIbfIEItxJiqKDlbPaWjMnn0le4XTaSJd8aMss7r8u//2Nmx3
	 PGQlFByfoOWMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978E5CCD19F
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176097839360.3972.2734802359268780563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d819d6d1a8f9d452874139904204c10d44636845439562a580d3d86c5f55bbd
Date: Mon, 20 Oct 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760978393
