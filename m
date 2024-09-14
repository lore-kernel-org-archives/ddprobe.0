Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294CA78281
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726341354; cv=none; b=UeLfbERMCMOhv6nWJx37qs+HIDPMaXJvpA1HJRXxkbz7FlRqIhPmZpSvD8OijdvdmMWJPI1GHVasB31AiOgOjwiMie5goQLKCQCv/TfQI/dpNg4QadMioues93TqLo70IzWGMrbib3vShSNQHMIVpbEk9U788n25FvNDrI/zac8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726341354; c=relaxed/simple;
	bh=+DwIlKdwMQzpWsGxNHxwUfyyE1D95AJRdVAJyWyOIL4=;
	h=To:Subject:From:Message-Id:Date; b=R5pwOki2Zk91kOaVuAMonhnctFHocseJQ9lpJ58ixDhN4eb7Kk/BQCpKnROQKgFHHoM4iMuFz7QTNxpueoCojeaYsJWaXNCSTpBN3jxoJHoIXvjbpKm92fbwHEj9ViK+bJawfF9oA5jk1TT6rAYxEZ3Ex9lpIVrxswdxDARB6xI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGlGWJJg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGlGWJJg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A18C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726341353;
	bh=+DwIlKdwMQzpWsGxNHxwUfyyE1D95AJRdVAJyWyOIL4=;
	h=To:Subject:From:Date:From;
	b=QGlGWJJgTxGVIGXjpj2M2sXL0xbCAguL6spch6dcj4R9F68KJhX/iUP/xjepviFJn
	 ARTsijWLaIUxDY56ZP3182v7UaEWWl0+Cnbmm+eFCSgqY99VwjELmMlHUNu8SZz76G
	 gCdanLzC/glrAZxOAvcLBhUVCGPzfH0AfpxjR2tx4sqcmhFh3uWI9KMf0ztr+P57ue
	 +01u1/ylx+xU5lgfzlA27ypelYB1pPGKT4jjt0NOAxVi99KP0vbqr8qtmWtpLYxuv/
	 trdcr2BtOSZk9+ObmxO9ARus/zpybhLUpchV1rMwFQO701I7kB5h4XSQzkn1qnrUGM
	 upKRh8r63SvyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95533C021A8
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172634135358.6957.4065933529067298817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76350e50079243745933a820e16125e7be65829b3623d72a88f30550738fb420
Date: Sat, 14 Sep 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726341353
