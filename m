Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2044D8C8
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727364954; cv=none; b=lFBv5bxkK/sBNbjz0SOx8vWx0yZKQlSzhPxtDRSTLnlu+qXr2g1zrj0/Zs1Ov4ZzXIx5w3HFIt/tB4Ub7Zwx/rjeGqBMLspg1DhzthFX0xYSmCrF0oBalprALJzDSJhwPBzUhDEoqriu85uC8zvc0IyrRGW/N9iUWYG+DozOD6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727364954; c=relaxed/simple;
	bh=jmAbd7a1slCL5YKx0NyGArFIazKhsct1+G5BMlX951U=;
	h=To:Subject:From:Message-Id:Date; b=NFuP7cpIHLLsxLwsQv1foFE9fR8Cq1qVXTDbYoS5QFL+O483Cr2r400UPWXIf5zdnygmUsv/ZOsjZjB1VXc2p7ZihNNcV83hHmD77og01qT2QUEL1B8OYovhsvPJM2wKclycrxX3JmRLaZd8TlDBd177tGWCeRF7UND1wLEbsUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rm97wTnM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rm97wTnM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5770C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727364953;
	bh=jmAbd7a1slCL5YKx0NyGArFIazKhsct1+G5BMlX951U=;
	h=To:Subject:From:Date:From;
	b=rm97wTnMI/hqISkn6sLPUB0pkTUqlfzbT8Nr/MLJz1RtsnT1Q8+pnhY77cq1dRml7
	 RMX7iu719sJbrIOhBQ8xvQw+tjpADA0Xsc3fG+P/VHimsaAH4fKKKd6FjL+ruQPa/T
	 iMKDqlZW1bcdEFl3nlVzjacn5AQ8QfyGpPqjuUa0RBM7BC43LdETKC5+Y3Zalzct4X
	 5xT660glhK3xcd/FHQMqC3zU+5raOoRLCj2WCTximYV2B02HmlFwNvqYvX8IyUy0oo
	 /7tewv7ffoRicXoWOjbKoDD9vouVueSxN2gv+UAxZacupo7h0F5BGZ6c4v16T6oSyg
	 6nqkfy/05ue2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9149ECDE015
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172736495358.11760.17935679120128465449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce773dc1e11f62acf8953c3ba279e2a9786d885fe4f9918e2b254416839820aa
Date: Thu, 26 Sep 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727364953
