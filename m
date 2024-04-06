Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 053F228E34
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712397497; cv=none; b=MMtni+WQL7rGXwo+zpX9yvJQGSahaTCf1TEOVzlLqOk0DM+3g4dBZfRHMyyXGvZq08imCq/qBxW6DqZY2fXSRqinzs47jkDcKUSooLdcrdhH/M9C6u0DNJkroAY6pYv8dN7otxq2Fn6tOC8jteXFXSpFzGATcgIUPIwMn3B6ZwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712397497; c=relaxed/simple;
	bh=L1wXTjJxLgf6XceCzW/6CT0i8lfeZwpbFl4vDAhxS8g=;
	h=To:Subject:From:Message-Id:Date; b=PRM1Sz3ReX087bW++efJ1Zr4EvyOa66COaUVFaSrZF11Y4OVDzfD7RfRX13tUqlReD9wkLcJpdOJX2dlPMN2/5+glDSO0DH22Qp0Dr4sgwRWE3Xibjur1aHtZY8YrsXAv6bpWP9p0YLAGhfuMltIZDUITMQdr9/a0+oQn+K6pXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6TPAdxX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6TPAdxX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77F3CC433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712397496;
	bh=L1wXTjJxLgf6XceCzW/6CT0i8lfeZwpbFl4vDAhxS8g=;
	h=To:Subject:From:Date:From;
	b=b6TPAdxXX1LHsg1wwCROc0Fn3fwNFxWZ63mT1bAW4vihVvvW7Tw5NKQ6Ehpe7fFWI
	 KW8qrYVInI9JKtjRrVvuV0YLhDB+RTV8cMgNlrNnBWL1zrofNFjxgqRAURYRZkQhsC
	 f3HXE3DFylsViVdJEHCV0BiaAdA2bAOVeCS9A1pUSuq1reUTHGipDUPqB9WolKjGR4
	 kuBYflxYK8PKIjRB/wgHaXkmigRDfJwEx7qBefjVsfnIkYAL/buUXKxJV39v7IWw3+
	 zJcUWUm83OFOdO/UXuYq1grHTFYWIFLfDgeny4gluktmsDCx4sW+PJawh/63ZAU5Gy
	 lAZOzt/b6sVKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67C51CD1284
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171239749637.1311.15775182899727680406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 591fb2d5de966841af467eadfb877a6605ce18b13e0a015e3c7aa818af62f7d0
Date: Sat, 06 Apr 2024 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712397496
