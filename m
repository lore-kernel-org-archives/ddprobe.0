Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F614087C
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 08:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715070143; cv=none; b=pJpWbgCdRLblu31r2p1XYxeYzs3WVhOFb6zSKGI/k02fZ9Z6EsszeGtnEAmTMs7F38TXGutxCwyn2kLzCUrMELnVnMBQnVGR64kWqqZVQaaWyVv40dc9tnfLlS5xgzLmjuMXAZgnsFQX2rgvfr2zmxgOaocI691rsk278EjgPoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715070143; c=relaxed/simple;
	bh=tkL1zE6UtzNo2yiTrKoPytjF1xrDd9dHXbE7xzaOBR4=;
	h=To:Subject:From:Message-Id:Date; b=lXgqNbysbeB83gj5IoFViZaZYy7ZPRFUnyye8X42eHHbFThphdYkuSsjhjqRf/YKKeSnVJjGk+QS2YnGwtM8Er49dGOYWtnw+zKJWnbeF1roz3pZlpSRl4D8KXuZht5Yka+AE97jjRgW7JbyMLAVSvYZPdgU/p8DCvOyNbZzlJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lEL6Zv0O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lEL6Zv0O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DACE2C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 08:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715070142;
	bh=tkL1zE6UtzNo2yiTrKoPytjF1xrDd9dHXbE7xzaOBR4=;
	h=To:Subject:From:Date:From;
	b=lEL6Zv0OanTiiU00u0FNGJcPxWLpa9Vj93CHm8UeNJqpklQkeBLuboaWCVOyMy1lQ
	 1Rc/tGGPZPCkC6jw1s2lsU7iCdfloTlVbL+BESouDBA0uMHGXr6dA1G69oKN6WFmur
	 4qkxeurjOfFtqDUyYloqom+6QfMJTDpO+N1SqO2AJRTRRGgOcWRDzB8HmeEAHTd2Mr
	 jSgg/wGlrur6t3dwvGHmGrvlOpEyRKP2qvxVpoJFakpbXsDiTtJr2ofh1G6pqSOn5z
	 oO4YaiX4YuFbQJ11kK6EIcnq0gr0lTlXEOcLM6GYd+CisaFdACkMp3bb8IcX7HO/8x
	 rG0Cycbss8jEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D15C10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 08:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171507014276.29323.8200800306489056733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ae217031cae782bfbe70da0f444261fc017c7ad2d9f2dff78cce5a416a807c9
Date: Tue, 07 May 2024 08:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715070142
