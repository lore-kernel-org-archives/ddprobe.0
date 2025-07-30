Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257DE1482F2
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753856995; cv=none; b=tG/N6uVgzxa3Nkspn6flVpHvvCUCT6qLwfPZByn15weKxMLkdXUkSSviWfgJbcngluLrCl21p4f0WsGZFUKzSHsY7JbX1uutzphKeSj0Of7KLsxApUpGojD/wvph1xgT0oT3vXbNbvP2qgcl1CLml/EHqT3iXsahxwdOwCxFW6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753856995; c=relaxed/simple;
	bh=6DKxWqrrzUlXDsIi4sq0QeRaxUxTbHlIGaW8XLzonno=;
	h=To:Subject:From:Message-Id:Date; b=OzTEfm6sjPags1VhNzBnTCDhXAkkI/Cp6/c/Lu6pEzqq7o2olKNkRUMZ014rqH67gNfwkaVZ5ij5H9H97OK5Jr/vIBPodNv/B6c2OMg9Fj63BQRD/y4gdfDFIXr8JSsbcglFDeB/F0MGhbx3w++qMUzzDS/2rlS8EOQl4r3S4XQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZf6bE7x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZf6bE7x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F7EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753856993;
	bh=6DKxWqrrzUlXDsIi4sq0QeRaxUxTbHlIGaW8XLzonno=;
	h=To:Subject:From:Date:From;
	b=XZf6bE7xa4/Pp4b0E6tqmUlf1jrp7Y9Dmcg+UnY1AVmzoRlDcw6qndcrH2Fqg5xs3
	 jHCaFhM0s/xDys/iJiWGRs/eKKvhVtRiF7jcbbfKSpOX1qw5bdhm0OPOqs2vrHXhmS
	 aae7aBlijxIIYvevmL+6ounZXlWVXCT9dgU2rAA7Be0dbIz3Fej2lsMHjaIORlmYgF
	 /WgyjhVUGOaeKIE/jwe5WZj3Hkcv9dfniClSJZ84dE0s5HJe+JwwP9a24Vu/tbC8kt
	 Kb6jMda0eqGzvaIcqMmzbsQBNH+J/6YVeHyoUgqqmFKTYhc6jvX2KH0/AdYzqgx3qp
	 ke2iHcpA9nXOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9237BC87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175385699357.15004.3761016172457204472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21f09398d69a274dd944455ad942bca2e129844cef61d3bcf1a158bd0d611a94
Date: Wed, 30 Jul 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753856993
