Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB601CFEC3
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726323954; cv=none; b=fJVUd3ILW1CC8I2WIDl/8E+JLHxEtQmm0zwyEk3JR3uIATr28BKM9EpB1z211i2/FJsVpbiS7SwFAVCGOTYFX6oNaSAqlxwEz/vEVbzVHI9TuglWEAgFAEin/FksJaWl5/uuv+CMAam3BQUTFRPRhLo2b6hbZt3q2RvbsZpxhVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726323954; c=relaxed/simple;
	bh=WNws4XX4wciMM0jgPiu3XCTPoQ2zkyjqznCFPVmJQFQ=;
	h=To:Subject:From:Message-Id:Date; b=YwA2oLSF17f/w1dOARvgSMShPzbPXRWbm8ttmnJ8Ow8axcVZO1M9bbBP+AjcuSFOl/GZ5rtkLr4MaFqv9ossfMEQZlTAdlOEIxViWy2LuXS8J1p+YDscvwDmMfuCtH0p658TsMj6NozwzKj0ki7oT6XoPuwW47JEsB0txDM3syQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ac8jYxYN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ac8jYxYN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC43DC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726323953;
	bh=WNws4XX4wciMM0jgPiu3XCTPoQ2zkyjqznCFPVmJQFQ=;
	h=To:Subject:From:Date:From;
	b=ac8jYxYNEDHQXx+9yXjCUAmHD1ZZd+B/CHAVddkFUdJlFQx7i8IRvE2pdN2vjh8iR
	 SDx8hNYTvgOtq16FcAomSfCBvAJdUFjl2nl4gJZFEWM42VBhrM5w+QU/1DF716dHYQ
	 +5XGXm/1wnF7PWO4zrynBy/WDypcSWkMSz7KcUAlkj6n+bHoYSFYkTyw4vpwAFPYOY
	 gQnXmgXzzHCD7qISfVypkTbbB3xhvJUQtwPkAFAOL/c3p6I9DpuWmNqamydgX/4e31
	 U3zInTgjwgBP2ehhEZP10W/pOsrkraSZkfb/4jTO7mNGxLSLy+ON3TZxkIj0YM8UHl
	 GpXkQzkOPh+eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7DAC0219D
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172632395361.573.7936134273226093605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 107ffdc0cf748808004a39ad4bd26c9f3a8f9038fadda4770f76dd591bd13091
Date: Sat, 14 Sep 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726323953
