Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F1D18BBBB
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745883594; cv=none; b=SJhZ6z65CifJQLBEa1Adn/9Lo20mjxAO8FArJgZIwrQnzHYZLmV+DRz33n/a+cJdKCXpNaGH0zpCEdF+30T9oyITMWn9kLBy4DMkkOEAk42bO14cBdv6f0eAiRzYg9xVSdCPKlE7NmJAYBFb1UbsGoQJvcxhiw3HPnZwB7boVdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745883594; c=relaxed/simple;
	bh=hyJEPpEjMMx3ERV70VZmKukfuorVs3n3Ug6jpI6RAGY=;
	h=To:Subject:From:Message-Id:Date; b=MjjHUjAbkPRj3C5cBvdgIdUlbUB+VmwBDBM2uW1L5+WI4wbmLlzAtIFAMcRcVVtnW93Rvjm+4QW7vdQce5N3TjGY/0s8ax/PGu2XfY2GTI8jITXUkZsj0XcQWUHtJLfh9Zizh6UXTOzsTrIVARurOOynCdFE8WnxOxY4hB6/ZBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZF2PyLb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZF2PyLb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E66C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745883593;
	bh=hyJEPpEjMMx3ERV70VZmKukfuorVs3n3Ug6jpI6RAGY=;
	h=To:Subject:From:Date:From;
	b=bZF2PyLbZN+5cne/wIShr0nOa6I3kAi1US6baEVEG9w8Yquoo0JezwA1MQ12GRBTB
	 nqxNRTvpp45sXrrtx5EgAzWtnxRS0kOOC1ST1XluS6fmRVq+gVJ60JCNOSAPmO3uC9
	 wzTlbCCYbdM+FoziPSPkhwuYvDPCaD0jf5GsnhtS95hsSrsfKGk5IzK4YHj8G5Wn6s
	 sr/nOTpqdhsQmHWvlG8cUu+owCaVpJi27M44dBJZV+xHhVqX8XGBEJTHrMa47CyOVO
	 mDdp4kTtIPqyEGeldJvkkyp8Vc+vq9rb8hcjNBYGMPfs3jWet1/pHMpwbUmouCUH2Q
	 6RRVr9PEQczbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FA2C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174588359357.12498.5810660305163304537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43af21c1e3e4d1a5ae48807a2e49c3b5b5db70ae860647d9e1c6f4a3402748ad
Date: Mon, 28 Apr 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745883593
