Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66B26478E36
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788259234; cv=none; b=RX2ttEduo8YryoOqxLsGN9Nm4+rca5WSfOmEsFW7h9vpPa4qyLHIybB9+w1tPQobfj9lQtMS3paRXTbc2nrynvMHRjuB+gH7CMtvSsG34xAf1HejFuaG8mqCQDi1R6v9/q8gajPwy9XdpSLz8srDahwuw39UXqdNBkBT549erEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788259234; c=relaxed/simple;
	bh=F4+8YdzTLTBzEE2FiiaQHXetATfXcLaTkAIzd4ZXC58=;
	h=To:Subject:From:Message-Id:Date; b=hFLnNVhnUIwadU078Vrnd0BGXNbqdBzEAU1MROJNjQF+jozYRPBF8WoRkqj/O7AHwGCir25YFYE/RBRhP6v+CufTlhU0RriEDIqCO7GYNLsk0iGqHD8d9+Nm8uWWLSY0FXZ/xXXllsBCUK5q5q9kKErot0IRstOarY0UFGHjFeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cklg0GJM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cklg0GJM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D41B2C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788259233;
	bh=F4+8YdzTLTBzEE2FiiaQHXetATfXcLaTkAIzd4ZXC58=;
	h=To:Subject:From:Date:From;
	b=Cklg0GJMcAl/EWSYeWBy6HZTeewXvF/jNZkC2il8Ps+wEVOx6BfO3xGDn2tDn9ZG2
	 6a/pP5q2bC6wFQjuWaSp1BrrY/hSZdForyyhKybaa8LLo6VyfGX9hVpwtg2LXt1BfV
	 E0WNddJuhDHmkSLpcBrugL/N1WDnhsXgCSy6R1C+1XvUUP7JymSyAxmX9kZj0DYLS0
	 CtcBtT0mGt5/FSTQH0skRmZfqrXorf2jCEwQvH/F4Zeih6kh4UY3PvO4LrvZq34Rmx
	 GonlUUgqH38EYXpelHywiKt6uFOZZLUpvRrwEZ/vHpLn3OoRNfXCBPAETFcXK889F5
	 YScXPJuUizGcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE51DC624CF
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178825923370.1474.15029116952299670810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b99dcd2b1906c0c21aaf5d6be9e29cb45f71743963ce5638ff9cbaef39ed844
Date: Tue, 01 Sep 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788259233
