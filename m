Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535791428E2
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 08:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720773443; cv=none; b=hSuuiWJNQI+3fvHbcC/AyBmUWlrMy8PFaTIbtAN2ApaA2suMMsMnn2gFaq6ySOIFLZGpTY9jQI5LQkejhMga5y4Co+ke4zLKLWLUccteMVDyUKYocw8MO3AZh8g3hni+gTWu397rkHYGx3D53ZBrg1eE8/trp9lQZH7O2cORnN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720773443; c=relaxed/simple;
	bh=CDj8cAkTdlfTXYmQTvNgL4ZgyCntC/lhpqwZHxUfb20=;
	h=To:Subject:From:Message-Id:Date; b=fdfaXgrCwi6HQmCjUPm0HjQPeOD5efEAnhyvBGhZVyJMrLrEW/UfwnnTRc9IFqO0YRdAbfbtyheu8JdxW9CGnH6aFqgSY/TfyNEDv/fQmBdIWaFIwksLH5Yo09f+S2km6aL16xBRqAD2+EY8CIc8scKRhrS0jbZlEdM9DWkHe78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPg5cfHI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPg5cfHI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE4ADC4AF09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 08:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720773442;
	bh=CDj8cAkTdlfTXYmQTvNgL4ZgyCntC/lhpqwZHxUfb20=;
	h=To:Subject:From:Date:From;
	b=PPg5cfHIlyswkfPXAo+D1F4lafSY6QRXOik5ZUKmLsk7b8VnoNlQsmbOg5LkIXPQj
	 3wdnuzm/D5v5cT/KIoorxzxe+RRRKieWiRoKyEYFSL+6POsPLwyU9wLoK8+zedR7Oe
	 BjxlU8BtyVrzehjItLbfgr5Otb5hdmKV163G51Xm5DJFbZ67d9RWJ0js7RXNM5m/r0
	 bUJDjyYvPDBT7FSc1XRRU1MKAFgDSOwVfufaCWdM7uel36Yy5Kd4TgRkG+SNTayVlp
	 EIqFx45JaQ7QYHV3/gSBEUxLf64Wf4jrV5fQJVsOdDddRs6zn9eYaiMLpESfKQjdm+
	 MfYA+ehkTvvOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6031C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 08:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172077344279.2271.10936204793682282638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b463d2473991cfbf9ff6e6af63c6a2fe3d4cbf1075b994c1804b28a507ea44ba
Date: Fri, 12 Jul 2024 08:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720773442
