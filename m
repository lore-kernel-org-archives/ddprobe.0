Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CA2E4A2E10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 22:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780525474; cv=none; b=p2PJjfVE+caP0JJididziygnqJm4ffZSXtBRWAFSQv9khUW5k1iMqnfuZkYuRnpdYTQMsV/X2nZ1Cb2hhT+ABNyTOsKESJyjqJsOZV8lkFbGuw3V7019AsT9SUSaCtOmMNqt4Ph4rZke4UKyBEc6/bQNBUPeT6wSekpUIsbyakg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780525474; c=relaxed/simple;
	bh=KpnkCfuNPuYypgUiDmVVOrEIm0eQ+rzOvw97cjhomhM=;
	h=To:Subject:From:Message-Id:Date; b=Rn90wbTXGur3i/xyAalqTInqXZU667IcEqvAnv6TBHk3ofjUzFTC9HCOqfXoK8YmAZXemZ3CIsAGBX5UB1IE+5sXZXxR3R15QpJaBKhi2ofV8fk11iKTadAsGEEv5yK+nHCwPhyh7OlrZRApviwYjGgLxz/HPMvPcrWEBbAlvUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uynINYmD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uynINYmD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B1AC2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 22:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780525473;
	bh=KpnkCfuNPuYypgUiDmVVOrEIm0eQ+rzOvw97cjhomhM=;
	h=To:Subject:From:Date:From;
	b=uynINYmDXvpdVRd/UffgZYTg8pDifgRtYtEAi1rnwdb15p1rVSkr04PpWCVdwaq4x
	 8QQ9YL9JMFpsEzolEk/tqzMM+nFjgIlFsvTTrPnnwjumorkP8nLvDn0Nmd4aTgoeUK
	 bjmS1fdNdFzu4TGct1wxhXtP4JMNLNpebcwJ4RwlHzOwjFKeiEpRcHyt4kHdKjIjQk
	 22WZ4BeCECzt6FPfBoGYEVOKTk3cP7HbMRC31+S28hNiPHaend6ZpZC4hEMNalGgC1
	 PmWg64iVV6M5Pm+fhgMKst+iTGIiZzWy818wkqQBqg0ZlXYWXYGr2w7pfFbKxFbzFO
	 m/ByFNiqlXyRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A963CCD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 22:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178052547368.1487.2185891537796843441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c857c60961419484742ccbaf9d8c5dd32e7dbeeef3e544a728f3d758cb7d2466
Date: Wed, 03 Jun 2026 22:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780525473
