Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0151DED53
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757735994; cv=none; b=PAqdNygUb/6FT28eA8x+e95LO6ON596FglVI1mLAD//vRoydzCSJUHNHL/EUEOndEJD0qKJq6GspeuU1OQoj6PZd2Ra8b3odiMpRbMKk70zDElclv+OGaPx8MT1etzCkhZNj55Fiv85X8obGQWalsI2y6mv0gEcQtUGN/Pq75Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757735994; c=relaxed/simple;
	bh=aeBEI/wZnK+cMeXi7m6dcK4+6a/ErDF14poBJUk1u0A=;
	h=To:Subject:From:Message-Id:Date; b=Osdc94rNGKneDO/e+To4Rf8e0sCoIUAupTEDR1tLAxqAmWT4NGQZI5b54uzY/iZZaXV/7C5q7oG7DGWvmIoENC+7h5WFdzNsNFArTqewEu1tx5T4NQEriNPXiGMD6a9yVd+mkcXLQYlpJJ5hH3MDlWfrRRjsTY+d2Z2XfpQKNnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgPjeoER; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgPjeoER"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A097BC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757735993;
	bh=aeBEI/wZnK+cMeXi7m6dcK4+6a/ErDF14poBJUk1u0A=;
	h=To:Subject:From:Date:From;
	b=cgPjeoERgtz1zUJGZKl3OIQJiZSG4oBdooP8tG5L4MxkB/brUL3/eZK6PMLhadE+S
	 f5ZTHB5Wt7fvTpVhiSnrFeNw8wujk3gqT6lADhEFdFKHRp5xTH+ec4ItW35Ei4X4RN
	 GoOP3G6yhRvuuoTQFTSZmOXLeW85rMSjfkWIKyk2QDPYqTbpWI0a8oJnppxH2HaBJ2
	 OtLydwk4WdnqAPszpUl9shb1XocULQgxnxwyLeIQ3F2rczeo26XsgV7LCSKyT5h+Gc
	 tYus/m82Y7bmjTGk3vfjvfO3c9wmHUzb0/uMRF+IPbx7igwXkhxWnACgqDxz0JYUVe
	 H6tIirB+apGOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91676CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175773599357.4868.6233328292628223572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f4dbf7eab7a8a4269cd41be49f9efb8b887ba320673dcc93a2e1874b6e40e8f
Date: Sat, 13 Sep 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757735993
