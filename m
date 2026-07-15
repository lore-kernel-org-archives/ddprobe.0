Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AFC2EBBB9
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 13:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784123314; cv=none; b=JY7vCimwwWcrFKFAJ98zLRMcIM0SLT/jeIPaGpu29fCIzYd0Hj+Zlz/gg55QyAvWdwioJJZEOesVU5qJ0Nswv2I07HD/mfAuApGq/3qJYZWC/UgkvvOOr6OCNi6nYTlbQGudF/XQyXdgnyFM/bfO4zMq+gnltAEyWun+jfj7CEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784123314; c=relaxed/simple;
	bh=/6oZyWeC4xpeioZi5tm124FxSCnbVW62wK4LtHt6YA4=;
	h=To:Subject:From:Message-Id:Date; b=UXmWLFyL/fxsL+JgyWslbWzN1ou5Rv5egth3TK8mQCPQHKfWmiGv5mvKln2UuHvrB/vtmj0x50piNwr7/HfqBXPnOlaH/VbmJUwcJM4BD8KhI4lQXwcQc+XqBBQ/+AezVYdlribT11+PT/PwsGWoFiiT0IWQcNXr/bChO9pkvS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tni8/PYJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tni8/PYJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE18C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 13:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784123313;
	bh=/6oZyWeC4xpeioZi5tm124FxSCnbVW62wK4LtHt6YA4=;
	h=To:Subject:From:Date:From;
	b=Tni8/PYJNytKL+8dUtArWuQaxToukU32a33sy6qYTXrUxkhG66qMOx27wm1vnbegX
	 ho5FbCkEB4Lwf4zFDZASxsZBPewG+BhmY/oBd/bLyC5RqO1fcnXV7kLgPSSu5g4O6T
	 CtV2Wo4AJ2+Y6mfNkfpKEn0UuGy0IS3mW0tkx1v3upf9juC5fYMkP0DxHrokUf2YI3
	 /z4Ey35rsj2n+QVexwA4sM0Qccn7O5+ApXio8a3YEpiP80RYrqsogxn5iZgqrlIo5B
	 /tx9q74svNgyzumttc9THt9YFIaY2Pc88ZKeT7If8v4DIwF8skvl6lyA0uPMsoQPO2
	 FLELGvDHMOgAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BDBC44510
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 13:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178412331371.14919.1597665214985584503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 033a8515d4401f8d37370c6c0904b30fe8a95cbb66fd72b2e1edb1f47a20b34b
Date: Wed, 15 Jul 2026 13:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784123313
