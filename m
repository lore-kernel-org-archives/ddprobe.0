Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7614E1C84C9
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 08:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741940934; cv=none; b=KXsjjgCiQwTB0pgkT/me4tJjcsoiY0QDlu3hq+dZd33Gml3lgVJpNKK1nacm4zvN5jisVNxrxMAor9AiKOlXv9L8xIPPrcPHJJBfFf7DQtoXN7XyMwytpELs/pp/yH1kjdl0ivuERwumUkTqN0q1iEu2IWc+cxGwwRkY3ELD6W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741940934; c=relaxed/simple;
	bh=UeKzUhAJkRW00f2/FuVyxIbyK6HbrC6VWfzyM5Y8LFM=;
	h=To:Subject:From:Message-Id:Date; b=Aa7sSWmmb7IjsPGjZSv2ffculoC3HeUx/Noqc6O5nKnQma8KQuDI0ry95XA7CpHpHnavb5SwpYC7EN0o5KZBkFaSf87Mzq7/V6ILJpP58jjIX6ADnM2eJPk4UWHY30G6j+ntNIM+aiz5O3VC1NAysO2r3gtwGn/dLKJ/DQ5XVvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DawFZBZ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DawFZBZ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD98BC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 08:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741940933;
	bh=UeKzUhAJkRW00f2/FuVyxIbyK6HbrC6VWfzyM5Y8LFM=;
	h=To:Subject:From:Date:From;
	b=DawFZBZ1Lk/XzBCZ5N+ERkEFtP2D1/QO9e98Tcq6tXvEuRQvInlOMQOgZk7vLUBCa
	 KDhFbW7EB15/d6tUc1JZ9priloykgI6ykdwBw+IuzZGkQsAa082oU9m7POb9WM9pE3
	 hlBWlB2hQhVNZPCjZZteRg2w09sLiEzlmvDmcphpypG5tVTMFjKRvwO4h3CCn5LHKo
	 e+lCW9Q07/Ez4NRRCmx5yCdPtmygOLf+cP/q2lnhKkCNS2kOAcmbQcbDJJ7xk2ZGcg
	 MaQaV64w1AJjo2R+qCvoadPCaeBPYv82JA3k2aXzGrF2JbZ/MzFhk4omXtrRgoyCHj
	 OOZos1QkXtNVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965D4C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 08:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174194093360.27571.275571004024545250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 432da26446b1e767300ded3063e9fa0ebdafcb8551e11abd5e8b045bfb88dfeb
Date: Fri, 14 Mar 2025 08:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741940933
