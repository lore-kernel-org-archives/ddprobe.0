Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503372556F
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 08:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719216143; cv=none; b=rGu8ulisbbr+P8zQpyLTo4NpOkuIKg5G6LZYDcaMasWdkTEXNCkKQRwRARTlOhzvRo4htCAXsRf6HpRvS/T79tu0WTqpqEAG54JRw37wVuCBvFutLxjsBZlVj0y+qoJgP/6dwHpx8q4z1ZaljuAyo3FadcUuDJN4PAtNou+nXs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719216143; c=relaxed/simple;
	bh=s7ABFo7NY07dVV9D2VEcGa0bOgIjvu0rS61fUaop2Lw=;
	h=To:Subject:From:Message-Id:Date; b=oy/nv2JAr4s1WAhmnXQrEo8taE1bNUf7He2hRf4DxSXcwdLxeh+jloQUyDHCK1DXRuW6H1TNj6cI9HI1k8rqR8K2RdosnwTg0tlhezKwh7zbfO+uewzyb+Fj1Jgq9PNGJ2dG+M2bDG2Qj5p/P6KN3ZuWB/QcaUJ0kQn5am5iUek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e1VY4jU3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e1VY4jU3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE621C32782
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 08:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719216142;
	bh=s7ABFo7NY07dVV9D2VEcGa0bOgIjvu0rS61fUaop2Lw=;
	h=To:Subject:From:Date:From;
	b=e1VY4jU3pazqGDWO/LuOKtNpzbnFzsJATbYr2qKTL77DSS75L3waQXL0E2XSkIDjF
	 G3yjKGnWUBHiqkKgetCg9YWRFH950znp2o0YmYggEJk7uxmf34MprD1BkTeNY5jMIO
	 3ZblLPCMS4Adc7fbjZr9f7QBz//gQbogL7dfJPw3g18d9kjpnBTzmDJQsYPv+CZ/Vs
	 JNVWaA0NUjM21TwCA/Z0zhgJXYlPHBOxXUxu+/Jt9NX3DZo4CW6aiR+thSseRWNHtA
	 r9wzPqlZxBGYbMXZtsypofeIt3jv2Loi3oPAqyviG0qk/+guqvPuIRy8fZ6DUez2Ye
	 XeWyuOCGZNRRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C559EC2BD05
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 08:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171921614279.5377.14349303049172496306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22ca6aeb95136845a8fd2e1ea5a9ad4fa0a2a8a4a9d5f3362830e86559585933
Date: Mon, 24 Jun 2024 08:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719216142
