Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46402347C6
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766981034; cv=none; b=dr/C4dOfwQMqDVk8f622paeDTd9uNJVAe0JfxC2l/Oc2pNfMsQ4yd8b3N33+fawjQFkKGkuyaHNPYfJrt0fdrfLpD+Gv7T+WrI7TaNDXK2Oxw1zWksicDfpYyNu6ldx04XFmjW8fhtJsd5f0V8DMQddI7T1HiQsMnKM+g49W1I4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766981034; c=relaxed/simple;
	bh=syKqytMHXIXkegWQwq9oDGKfLlhRIkULtf3ffK+R3bU=;
	h=To:Subject:From:Message-Id:Date; b=d70iFq4BnAqnTu+CA6KPvJclPIjfCHVnfaL1nePwH+5lH975nPv3j310kf9it4A/xe4tCOGN0bDaLJNIVb+ZISvE5jiJ/Pq+ExvsZmv+2NcIAXMT2YKeKReHBQ70vfnu/skaTqGTnbj3VOAmxtpLJfcLL0BIFTqwTGsVRe84Ork=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLzonHQV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLzonHQV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF98C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766981033;
	bh=syKqytMHXIXkegWQwq9oDGKfLlhRIkULtf3ffK+R3bU=;
	h=To:Subject:From:Date:From;
	b=cLzonHQVz9BFvM0iwLH6dfFvZCWxBybOcm1ixxLj48EUOsYWLtO1FwwR9I9kfHh/e
	 sulmTFVUHLCGgKgwU46xJCeih97uEDZVmO3q6OjusbAhbA5EL5sMVBZ0ErfK0JhnNM
	 9OAKqXa9R9yUZRA8wefC6cj2Wa9MH1VNSN0mU+k3aoOr/wZgB9CmFQtQAzTQK+xnq5
	 pZMlnrmWAFpSilCMwa00SPpe8o2QCFRKB99/LdAIvPn76DmDIfMqd7xNy/pdONrzcf
	 lkTO8c5fYiMR5qzIgsRjt7HM0z+2AAzs8F7/wiLTCdQ9VK+zCQV0C0I8EBHbV6UbWk
	 kJ2ogn8Eoi07w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5ECAE8FDB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176698103363.13710.16748941541154656060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9d1dd5b9726d476d2eea86d61f164daafa48b7e91f2d854e087fe3065214bf7
Date: Mon, 29 Dec 2025 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766981033
