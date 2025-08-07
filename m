Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7655E265298
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754577594; cv=none; b=FNHG4sD5TUcU5HUo/RyRJnFgV47baFWjE22AXVUKG49SYXJc+Kyqc0XT2EQc56SB0kmOAitJzaAwcWG4b+ZrVoGUXHlH8xmjoEA19GzRgRuSWThMFb/XzcZTX2QAxi0TFwylPq+uBX4wQKhT2MDt4VT0fpZNq/yxTx62u/v5rhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754577594; c=relaxed/simple;
	bh=yrg/F5jx4B5zBkzEHNsyhOA6/ZS1wxIBtQnb/JEr4EA=;
	h=To:Subject:From:Message-Id:Date; b=jhSO+dNF+bPpgRQ4xKcRHiPgBKDZEjnIubM+wDLZ/VGNkhnclFFmFAaejgXFMXuiwOiadp1scnIFW/9e5qNiRBUTCpBudLUonEi59EuQ8VxxuuSHHvkVUiRwSKatlr67KnWrdOHrpJOsbbpwbd3oCwgai7RrcZ5H0MWOBCPLXxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ELd1S1BU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ELd1S1BU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A022EC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754577593;
	bh=yrg/F5jx4B5zBkzEHNsyhOA6/ZS1wxIBtQnb/JEr4EA=;
	h=To:Subject:From:Date:From;
	b=ELd1S1BU2QmJe3YPkIKOqsI7fKehMHVV8cZrbU6pHjmvBpuJ4yyiqVXUcdXp7M+YN
	 ujmtZUO9Ji5+k0mC/Keqso6gs9c2UxorelSb4+DC/7gg1ZkNsXpWRpFIMN1OohPQU+
	 Sg/LKx3rG4UBT68euhudwRkAlIamE0tKZhqU0QfXfgDWRj53x9skz1AUhyMPs1WKpL
	 4WGAyKBfpi8aqrPuMQUddY4CRDJwumKY5/h2/g0/wsSQj3B5HUH/TQZQuNBhxdgVgu
	 9RizqUWaB7pG+AXfC5GMhI0bL0f8XtRtBAYT71FJVMDps3Lw65Sm0hWfzPXArc9wtB
	 wRLU3qlhCb7qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909CDC87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175457759358.20067.3317138450873489252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 958c5626a247339298ab9fedc8b05c6bb6e17094d2bec1ddb6e8de7cc28977cf
Date: Thu, 07 Aug 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754577593
