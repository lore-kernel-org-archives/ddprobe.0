Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D9A32720C
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 06:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783061914; cv=none; b=PTtTMQMZ/mkBzqYFv1q3wYbHc5r4jbTWW1fHzSmIcUP3m2EN814eGohU5xkJt2Lh9u8aL0VkXIPGlyofr3UMRuuAWcia6vBNQpdw0oxrLtYssiCIf+JkKq/dgTUv606YmZO22kLQ1OeEakQFV55gcq42yigfXQMglRCUfzNWv6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783061914; c=relaxed/simple;
	bh=o+opgKqsyQVRE2R+tA3mtLKLPRMMjEZSKMRJUrvcZ8Y=;
	h=To:Subject:From:Message-Id:Date; b=QpOXAcv5RLagNCuq59OFEadJzUabiigLp7suPSRYUS5UkTZfoVIkI5PJbiIzPZePtQb9vZyJPXgGwzIcqqStXDW90UaQ4qumYUIsu7a00nNYpWRGeq9ZMMa8cO/dVAUlw9IlQ7qqGcoVtvT5+gSd12v65E122Kf3nmnoIprh2bE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KTrBx5bL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KTrBx5bL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8ABC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 06:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783061913;
	bh=o+opgKqsyQVRE2R+tA3mtLKLPRMMjEZSKMRJUrvcZ8Y=;
	h=To:Subject:From:Date:From;
	b=KTrBx5bL/6dFLSe2olxN0CtiXopJ9qU0pp1b0oyoTWJ2FGUUKQq9+0RWuiSVmirwT
	 ydt6yPKGrDHwOn1mBqr95pcQgTCdg2bFOy9SQjoZDb85FUpsMNTl18gXTzt+1xiaoj
	 /K4ihCeks2Knegl576Tj5n2a+RwM6alYISSviEO9DqzSHYkfZY7iKIQIyPoqoy/U4M
	 XKXh1fQRdFybLbC/p89uUg7KsY/D2y3+rn0/pje5JKe9WgD0AJrnewY560eepvzwGA
	 6ej76roJMGyUNyU1DWsJShSvUf0+5vruTjfcM9hNoYzqw2gGixi4KCCaWOEiWzezSC
	 dbJCKJREaGA+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B618AC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 06:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178306191373.11699.4885354868627892034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8248a7ae6211e46f8a20f24ca0d3179c7952196c4e0e162eeb46dac50f8a4d7f
Date: Fri, 03 Jul 2026 06:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783061913
