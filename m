Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A662E54BB
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768508634; cv=none; b=F+gC0Be4ZhWUjb4Rk/5q9x81IPWlXMfOY2MwmxnQhgEOz95I2dbUjcEyFo+OEcL3p3GSvsD2Rb64x5NN4DSe0MHmINAKulqDPFWS9CzqUIO+slADjiEVKe2Z95/GGdAFfd0hpT/VMYHLfrRaF3Y25UptQj6TgqRMclX4De3zwoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768508634; c=relaxed/simple;
	bh=KuKIkLz7nqeR4MxQEoe0467zYIQclDKfDwoAy7AJfPM=;
	h=To:Subject:From:Message-Id:Date; b=oPQSu3931KM3NileNTI0XVdrg8tg1G0jjh8A/fX8TNmGbOmIpSk8QtZvHETdLyEgsY2ptVXRbUrLaAYkfS4l8KVKSsGVJnZ9/Pz0N2nQGJKr3MQEXgzIaCG6ilkkbzjYB7npHXujorT+Jk3bNMj1gBN8G0sJtZE9uj+u13PhvOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdpjk2pu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdpjk2pu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEB6C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768508633;
	bh=KuKIkLz7nqeR4MxQEoe0467zYIQclDKfDwoAy7AJfPM=;
	h=To:Subject:From:Date:From;
	b=jdpjk2pulYSu9iKwJUHz1/w3Dx6rgtE09OX2uZMFsjKWedQpll2jWySz85PUWxt/w
	 fIDdYseRg5SXL1H/QJP/Ps34ZMCpPLvPqhEyJG6qRokPt9r6DmiGGCzUaWBFyMSZU0
	 G+yXhgN3+bHCtf5mwQVQqWV3xsQ2sIUTixudZJaFpKU5TvePwORD7kcFFonpkHllSf
	 d/m3TkUS4H9SD6aKXu9GR2rzfh9gyczAiv19eqSsO7Tj+s3w0DCgzlFwcv57vuDpfM
	 Si/3ENJznoClAoagkSs2fYmMueyzl/iAU9uC9rxMcgP3aBitByAitsLh+7Ap1d67sG
	 C60+MtIjHc3Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F998D46617
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176850863357.14978.10630624664425146009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4decc3d8a7d12b4d9f424b1f4d8007f014e82bcb0c61193431b5ade3e6611de2
Date: Thu, 15 Jan 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768508633
