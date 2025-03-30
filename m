Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A231876
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743378594; cv=none; b=oOnR7o53Niqht/e8Gp4U1N+QU1N6fg7IVxK9Ij8jCyaZ1KJcNAjhE+7mS37CS5RHzdFubrS18kkwVB2ev0+vJIvS2vaFclgw7KMDeQPISMq8aDTptUvurLhm9A9GR55RJu50qvASuI5H+qv5Q1EnmXlGpSkU4YqYLnfG8jupp2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743378594; c=relaxed/simple;
	bh=/kZLlijwEUkJpxhPiUGwG9d7poJrvjkIjbLxPYbjMcg=;
	h=To:Subject:From:Message-Id:Date; b=IACsl/jLZjgjlCPdsrcrPpn6y6+1vL90U1z7zTnEb6U9fvWgeVtnLRYQIxO+hlMXDlbPHVqvPc+8mIKAjmyO49R6USaL8dmTB1rf26cgVQFjHg4qwk5SBND1FZdYoqm+0z6mDf7EQ1mUDScY+HINOKAVjuUkHISid9lbVSbX0ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I9horLJe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I9horLJe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B622AC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743378593;
	bh=/kZLlijwEUkJpxhPiUGwG9d7poJrvjkIjbLxPYbjMcg=;
	h=To:Subject:From:Date:From;
	b=I9horLJe1E7kuJvfYD39aW+I0r8uqWSI5d9xTMlPbU7/gZL1hbPwT/c7dq+IWvUcj
	 yi6WU59vuaVqKrhIiz6ttYJ7v1oW2VOVjMXDd73CLwkIN4iRc9kG7rbBOUea0EbzM2
	 LEPHZZhvZ+ZrmFJIV+2OnfVyRlSLeqkxDAq1tO3X1Ug0QkJf3wdZBtEwi4hYpSLCM/
	 Z2X39iin4+17SdCfiXQ3Dh3zJ+VnTI2zvBdJebXOxJrLZuO48ECvtTIOrvP1D4IX0K
	 M+nERMC4YDtM9xka9rlqwqVmKG2HrZC7xWz2rbY4rCwgFshrcZpaJzxDTrDY+HVv49
	 DYj72JLE2ObkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D25CC28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174337859363.11428.12611023873332819112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0d1016c6e7c69a6f2020befc7c25892e5336aaa7309e3e25b692eec6e72ac82
Date: Sun, 30 Mar 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743378593
