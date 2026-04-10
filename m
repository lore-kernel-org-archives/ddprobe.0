Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168D538B133
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 06:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775803654; cv=none; b=oGBgFYANEjp67HptlxGXPMbE/FEAid1U+pvU8cEHEf3yF+N3VVfEzTNTA51Qdd/P3SU6qYmmaIGgTpx6Ln3v8F+MmDvFhvWoXS6tSART9+yJTWgbBy2fwLEfks5XJYg8FwWMeENlWvRcMCAVVMy2WL4dC47ym6kMCZxOzgoZPcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775803654; c=relaxed/simple;
	bh=eUM1mexvIN8V1Qo9CTbXb8vZr1r1XHSh19VJpRJtVXY=;
	h=To:Subject:From:Message-Id:Date; b=MmzAux0GRmTAT5KsrYabX/nAi5veo6U+TUi4/RtEF5+u5jufET0ggiZON6sf9EuJv6R/LiQ8wi/fmou3ORT7+062HsaWXguUKotaIMJLaJNAouWKFlyFIevZbhsrnqa0F15s5aI/eDDJFnCIytmD0SvCCWFuq841mC4lJF+5D74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TRp0Qhh+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TRp0Qhh+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC69C19424
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775803653;
	bh=eUM1mexvIN8V1Qo9CTbXb8vZr1r1XHSh19VJpRJtVXY=;
	h=To:Subject:From:Date:From;
	b=TRp0Qhh+pyPi3dnYDgMUGw7F0RhJm5CEVb94SRaQOwbfObYHy9wjXu/85q2eWgMyF
	 sXAb4KIGdl746i8FSSXxM42XJCzMC9WPB61x5dWcdpNj1SsszuwRB1usC6tFia3mvA
	 PfaT5/vnUOK3Syg8ipb3OZ2lHGsYzTPUDioeciPvjIeVEeUkGzvn9XcW6FfIWDyADE
	 3wMXUzyKPnKQhCE7TXVKfNnmhKvuUwvIR2zgVQFoHS1af9CZbT4jQGG9gjFUXhP4XK
	 2kZLhQhtc9v9LPouF4/V/ctcj9vKD2KIejhhc7SAIdPNKFhJOqeTHu9cC787aafsmI
	 w/+tEaqkaGTog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9372F36BB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177580365368.3027.13380961308451809264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2b00c572d851f5217e3a6a69cc90c18ef1118880feea7b849bc2dd49a957437
Date: Fri, 10 Apr 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775803653
