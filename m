Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8B7320A00
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 08:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785747034; cv=none; b=BZ7qDHlRYky9JavBkth+gxWJvzWGkjjVf/QH+f0T4IXMb6qYJRQoHKKElfVGCF4q47GcvpgDqmcpgjkWsDmSU2kE75mIDbuBK/yRAxzYrI4Agd0ihIEUrPIhJet6U+wb2WhkA8ym6cVMXfrL2xLc9v8nsu2cocvPoRw6pFJvFzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785747034; c=relaxed/simple;
	bh=0F5YYCQXu+UTFYpXSEV8pmW6EEG61QZT91vKB5R0atk=;
	h=To:Subject:From:Message-Id:Date; b=B83e9icfNuuL3n1V+jcJBenNBoBs1sK26IaiPI8pDM0O4OcxtjpFSmmwlMiXCWUSh9ARhQkLRZuQoIdTRQX6zzpIw/UC8izvPRo+QF7sWEpGkLIHvAq7lbevcfDKdnE2ZbDUdwl9Px6kc34A6IWsgIr2792RsYu/yTCZj6SDiCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7dco0za; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7dco0za"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C44C6C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785747033;
	bh=0F5YYCQXu+UTFYpXSEV8pmW6EEG61QZT91vKB5R0atk=;
	h=To:Subject:From:Date:From;
	b=V7dco0zaCYo06b+deCZfy0Y8fBZOFMGCEEMxRoEMhDmiyx3vv1ElB0vdfj818rOL5
	 0IBAuseMKPU7n7rafYcxMdOwX87nYKBGOZOV2ygAtxgwtwmNrpsHjxpT6rx9Pvax71
	 OzpqXPLn6q75Fnm06USfYPTlaYWxSVMnzu3MG7LhVG6JbDLNvxdI4MQkXjdbVgEL2T
	 A7Ez7dC5/ghCfUqVALbhyGpbpbQxV/FW/XHeQCzC0oy/cf+J5CAoWZU2jjc0nz3TU+
	 Tcjb8htmKv0zjZMU8sZ6xUE48ctfo3RXb41v5ge0Cfbub4i4Xz9EqB6kuwx7Y20Tt5
	 cG+6MTUzqx7ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1253C55184
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178574703371.8551.5352874090744365154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acef00e45212652954a819ccb1337ef10561ab034e59d4714ac64334cd229ca3
Date: Mon, 03 Aug 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785747033
