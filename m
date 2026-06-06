Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CCD23BD1B
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 19:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780772674; cv=none; b=QgWNlnPiLxPvKF3J+6o9jXmrj2eAsfuNr4oy95fxeIwwf7x9LgdKAYsy09hWJ5pretKQGMTfK0ju43Jaml07tBm2F4q9nVyyFMYz86B/0+XIyBdBvXnkIfJMkQCA1z/jSNj2TFc5f5lGKheRggGJdqcLPwop8UiRTKbJ0U4uINE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780772674; c=relaxed/simple;
	bh=GIILOWlqUAmx0P8+pRZ1/swgLIsCvP8X/MVGW5isFf8=;
	h=To:Subject:From:Message-Id:Date; b=mcGgE1d2ZMoEU1FSmiOKRvSA8dobx4uJM+ZP5EOshpd9QOVOuaeGTu/EcILdlbMWQ7y62iJzptNWLE6xCusWGb/JOibzk2P1gG373kD1iDfoombeUImQfOYm1ZUiUoEFWoPMz+q/zfqVOiBDDnfGyL6oRnZyt9dpEsbceP8GvDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4WtAwX1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4WtAwX1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA90CC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 19:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780772673;
	bh=GIILOWlqUAmx0P8+pRZ1/swgLIsCvP8X/MVGW5isFf8=;
	h=To:Subject:From:Date:From;
	b=l4WtAwX1lir70Kgrj1goit/m1lA5A6Nqhp80AolO+kVZ6pM8Eu27gwVkfFwgTvLrC
	 24VSc9aFJYTCQ+yEd6X4IOnglmraSBYVxaJ8TFmSZtOXvgsFZJwASbpltJIcDiS4uS
	 FSpuDwy5jrscEfFLxnOrDPb/P9NGXxgolMbWBoPrafU4E1dh/r1SERpZ8WCnpIZZFw
	 QPNMBAwNwXESsGhLNHOeYs2O8xYcw+tzxXRzyp5jgcpFvTlnGGMBGPb2GiBwoDgrfz
	 0pa+AvxRra/jaeBI0JNOrvOmua51gSKLtmBgZz+1MxOHKkPkfU2Y8ZgaK1FFD78+Xk
	 spbE5Gxt5T1Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCB7CD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 19:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178077267369.7782.1024246811391703814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 449efc3f6242bb09c05a5d24b784f089f5644fc9577e3a1de567784794d4bf40
Date: Sat, 06 Jun 2026 19:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780772673
