Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8681DDA24
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761446394; cv=none; b=Wn6VPPQXa5iAH2G1s/zTMEGcY7t5aP//dDyZ1yftakdgleJl4FYU7dfgys2naLRxEyG0HBf5hrYbe+jSygWHP9HSFwGuOaGuEwviB0/sJpJWkffx3VSxJkODA2mMrLEDd9aOY+VdcK3vPludJUOlkw6BQ60p7PHZlH409xmAh3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761446394; c=relaxed/simple;
	bh=bo/GJb8FyALNPpILNHcDFHrCOPycTFw5xtfshFVwyzQ=;
	h=To:Subject:From:Message-Id:Date; b=bd3kw6dJelIwVbHaRFbQtGKjhDWulU7ZAwz7JSSnWRUOygQSK3IUdlYNzAALH3CWTe7SshclLZ6L4k9KEsQZD0oStlpuntiD5LesB4AkaohbR70rM8E1/kbOpM1IBVZP95+iWGAQd/KAX2jzCgBzF2EouYTz0y9VKCQoK0GpmkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PYikf6T8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PYikf6T8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CA5C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761446393;
	bh=bo/GJb8FyALNPpILNHcDFHrCOPycTFw5xtfshFVwyzQ=;
	h=To:Subject:From:Date:From;
	b=PYikf6T8T7ZDwH5P5gdchROGxkX0wFmZu7lbjnbsKi9IpWfYr7OTbZ8jCHFpSvlAs
	 7mJMQX4AvQ22ZP9xygaWJ0adzGbCT/pLPVeNZAHcV+SarTvw7ergjTLnH74wKvbIyc
	 GefUsWM+1AAcgNRfMEuBh0SKJTMpubL9h0sXaILPxZTEo8NKNHeHH5gv8DZZXq4MRN
	 1Vv45P+Pf0dgeh8NWHn4JKM5VWMUon3RCqDhFxkn/SV97K6nCpH2itWS05+ml2/Oxe
	 80M4OvwjjHvsWjO2SN2is0uY5pFnbpHbDwuE2KWMdDePghGojPovrgvRh6xWR9J7Bf
	 CQR+C/sbTitjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4D1CCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176144639357.6607.14313798745554274209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcbf741ce9b05f1a30320e08aa71f8d13eb0051f9e4132a1853c2baffad08ccf
Date: Sun, 26 Oct 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761446393
