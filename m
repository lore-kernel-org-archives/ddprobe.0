Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30AE441AAC
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754599194; cv=none; b=WTUw+WMZn/+fYolfsMSIyJiHY3LWIUUiq9L8seIja6VQkgRhB7sDEWy3OxsO0pcnDmhXzdIFall2CkEVABAp+26kMOuh1ZRTfcItw568RPUROgE82jhbvjb9HCKQUK6MPdy8L3PEE3uvIfpvYVyfxu2klasUjl2ctP5YWFNaHe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754599194; c=relaxed/simple;
	bh=qrhjOUtd1JsijMiStIzI2HtGaSFauySoyp/M7ndP3/c=;
	h=To:Subject:From:Message-Id:Date; b=nwxJJ7jgIWaOph20FfFf3y7Pz/bXDSYbZv6TLfOFaAcsrpt6ZfnvAf07qpOLgpPu2G68MCMme6BP6cBvGPCKkSRyu/egXl33oRqGnk+2U9rLZD918Ic8gEXyBbvJ1R+O5UcG5VKe4Fn++64DBP+rOrHbTaOnInK4NYC6fBq0uq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atCVMlgl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="atCVMlgl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEA8C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754599193;
	bh=qrhjOUtd1JsijMiStIzI2HtGaSFauySoyp/M7ndP3/c=;
	h=To:Subject:From:Date:From;
	b=atCVMlglpK1a3NzVZMJXivBN8iTHzuJrgFOUPA1TJD0+d7qffVkq9YZjpWF43vz8h
	 RKbiwkw4scmzE3I7fam/IAy0Z3LnJ6PtU8UkmWyyd7/G1YYLNg0A8tSWpmJ/c2WVE3
	 jRb3p9/fhK3W9TVU8C1uCqEXXcLUNFDn/e/64o3p3Q/JmQEF8jDjwSz6z4SuK0Z02z
	 9fDZnWzXr4QgUMWFAzAt91apPcl10yny3SKKC3qcpLsN4mreZptcwgdhZ+79qbRgcO
	 ueb/SlXZpDZCNXBcpvioc0llJQsR0z7l/NpdqXeQpF/e8fm2k7ng0JvO7g9NRWcMG8
	 8M7bLwmc+KQng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB7CC87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175459919357.21872.9952330111913494640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08f90c9fc0ce369db1547c7e226ff5ec5f83cb029616fa18cba3edd371afe39d
Date: Thu, 07 Aug 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754599193
