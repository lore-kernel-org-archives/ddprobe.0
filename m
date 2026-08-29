Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5576A1E515
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787970034; cv=none; b=dfuxj1+jOpUgbG+MVLULY8c9Ip+dqj/zGj2yCa6wnkdawBmBy4ia5L7mEl+T+IQcvrfSY7rKuMsEwxHSd9s0nq+NRhp1XVwJhb1cV+YYXb20oZsp2lOm13L/sarNfhi1DaNcfXXd9EOd4W1+F3uXhqkmVGMabasLArmk9Pm5ZcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787970034; c=relaxed/simple;
	bh=EE7utvxzW6CLwlzvG00GRpKbFbsbioMpCE1SoyhK4Io=;
	h=To:Subject:From:Message-Id:Date; b=QAl+WR3i2jSXu1UwPwFLuPzLywHYS2dc4U9JbvtNEOJK76FHMqxXrXsE9Dc/RstNd30y5uF3bfP7uxNt54tnmjwjqfpeY5gWMqc+xDndCel01oLVuK4+PsX13UXvcHhRCmp5jTlnFcWhBTVhBoxz0azPgV3TPnE2OVNIKqiPFVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pe4FNKsq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pe4FNKsq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4460C19425
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787970033;
	bh=EE7utvxzW6CLwlzvG00GRpKbFbsbioMpCE1SoyhK4Io=;
	h=To:Subject:From:Date:From;
	b=Pe4FNKsqOQ4wLdRD3G0jkfVCr/7ZHM3UsMG2SWtcuY194h+jn3dcVIsrCWXExAeXZ
	 DPL1DHJv1Q2y4ewDNGF3m294RhAh5zOMcKGlnpe2WMqPHDPZtukTTTyBukfXfT5ZPx
	 Qa4Ui7fAn3jVJYfZ2p/sny5nsG5kZYHYP8XElXY8YzOvmpWFbzp4CZdQy8kl2yeWPE
	 AfJnhYReTxqI/jl4itv58UCctV3xsW0kJZjeP6+3E+x43FlUCP8eSo1VPLm/zCVdY/
	 8Y2YtJJtmGpqCF1wBZmtkI+62qJ0n/8U3tQWGYKjHH/HJZfEE31BfRMqjQPZwUWZv0
	 4EctO9ut1NlNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05B3C61DB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178797003368.30946.4041982478884130667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3462cf6a929a7e3134ead3382e78d318b5e3207c64c7634c557927e920b82e6d
Date: Sat, 29 Aug 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787970033
