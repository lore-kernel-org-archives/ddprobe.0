Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DEC313276
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760510994; cv=none; b=dqMy5qt+JBWpOhJ73KYENLg9n90sC3MGdCo3uC/vs9TCFnxlEER7vlf1cc+0eC4c9ZMc7AEAP4TJs4Oda1MLr3uNnhuspjRC+4jdvpkAYGalkVsJmggDVnYXgSH4X0hBY0Ipj1L9G8Sj4QdbpV6qxqZEygrrdAhj9UP2h34PgrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760510994; c=relaxed/simple;
	bh=dv8TULo89FfyC72UOVZqfHl5lVPFO5P3HM+Ic/yWxtI=;
	h=To:Subject:From:Message-Id:Date; b=MTPVQ/7RIpXfjDTgQFwuL7OQGsaZKxfZZwDdSb9XBfrRN3Gj9Ts30cijsg3hxLcyrlIzqqzUW4M/RE7fCYM+F2iGKaMJ/j1u50l7mmYi1cPaapA3Bbwj3BFV0X7xljKPzYs9jQalebmBvZV/rUjXOziW6NaPixaVVejvsh+pkvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SzdkLQZw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SzdkLQZw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C782C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760510993;
	bh=dv8TULo89FfyC72UOVZqfHl5lVPFO5P3HM+Ic/yWxtI=;
	h=To:Subject:From:Date:From;
	b=SzdkLQZwJi50JFaqXdO2kEa1COelQCjGYdBBuhEcbvp79bwhiguH2oCfz5OHeu7/Q
	 qulIGI3eTwMMwUf6ZeI+bnMdvd4Wep9AEaloKt1lKdyXJ8bCS1o/UuM+qJ+C13IkhF
	 0veV6lP2EGyyuK+ynNbtiuu6AoAcPRcmre2PvrtT9BoFse7/4TpmFxHq78sAQg1Ajy
	 AzAX9fC3UTP1CbSWXRaXx6fBwA9Ykk74+sZ7u5++i6f4Q2l8CyJ2R9UH1B0CVWfNo0
	 FpIpl4ADA2d8Ck5USQKzLbdcBWpJHthSTuPCqTWuJBp0PG2fCkuT1SeQe2F4PI8W+g
	 HCAmWKHgavDuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEC8CCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176051099357.11837.2548258681559710839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89e772d2d9363ef4733ebe9e1a0073738e0ab3f3be794d277631df83dad7184b
Date: Wed, 15 Oct 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760510993
