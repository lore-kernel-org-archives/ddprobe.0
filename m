Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EFF61799B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 02:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720577783; cv=none; b=NKLzRvQb1bjXHjb2CJqtmm0bkGD/RWiRai3xbr2kEeJhoV1HecceHAiEW9a5yjS/3+03MNTEKiBg71W4oWpju2YAMRAknc8G2vW2rKvG0RBx6//lqxO2izaGyPT5570XKYeTHwoqnr/tW9X1T2FmuUioJ4NUC3C+EE77DuYG1+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720577783; c=relaxed/simple;
	bh=NluaPkAAOq4Pi6q9BRR7tO3F9cIX4MHMQDriyAEI0+Y=;
	h=To:Subject:From:Message-Id:Date; b=lgCmbqEAM6FAV5nvEuGa2TK9s9lIuB/BLei7P9F1NkzqkadsmCR4/12CgilkfT6WewuIGVmxwR+BoFxuJ1MSLWqYK3JvqWI9mmbg07/a7nV6c26ozIrdFbZgeSXLANsFS2wSNpvd5lXjJqa5JAAUYzC/az9RVxfN122jfkUOMn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=buHy3HKG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="buHy3HKG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF22C3277B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 02:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720577782;
	bh=NluaPkAAOq4Pi6q9BRR7tO3F9cIX4MHMQDriyAEI0+Y=;
	h=To:Subject:From:Date:From;
	b=buHy3HKGFqV1Nm2LRTplYlMR63u/VvPWX7L8HtaNEswUTxbkXmRMn4P/RvX+q/qYc
	 FPEsOq/PL0fkSnfrq1qASJTwvNyNN1va6wiL1ioeJE1IgcUG+1wozFoe2s0uR+Zp+9
	 4AGRbKX+7/tfNFy9NFsc8I3QDiA3vBfjxz6IEZ6i0H8uapUBM7dr78MP45d3alBFIy
	 laXnqmlQTaZmYD//braC0OSDh4dYHbuap5C0CW4RscrwqA9jNiVNYMgpx5hOGK61If
	 oF7KsQxvZNGDscVCOJEvZjWp/vnRcbHz4x/gucCu+6kKN7q6bQ2UYtWuXiXOTP9Xxz
	 XkNqaDh2LZdtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA302C3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 02:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172057778275.20669.15165243951484874053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d56053ac37f5161124d3ba288f30530b42a21868f7927d1439ef330da3a3b82
Date: Wed, 10 Jul 2024 02:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720577782
