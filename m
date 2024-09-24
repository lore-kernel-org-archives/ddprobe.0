Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2985542AB3
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727160954; cv=none; b=WS5iER3yEZkfJeY58hJQQYbS3uKjJJBB4I5AbZrPC9sgwUMJ6LqYorLll6Ikit/7Yg4qK8OrUaMZB+IUWplPfS9z+9KkCC8lfdTv/aiVIoi5kv1WmSV6lvN2I4gepor0q7HFtUMOqlIjND0IllIOqeogpBZqQl85qtpqyF3qSps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727160954; c=relaxed/simple;
	bh=ID4HxLBm+Abmd1Hh6vKvcQ4TP3I8YG2cfzYxQH3oRIc=;
	h=To:Subject:From:Message-Id:Date; b=DCjOLzFvUPeBVv/FPKf6mTOsp9cbWgrz4k1DDW/vL2gQufDx7PSjKYqstaD8GgelQuRBNO6v63oMvp2+SrWIwyWi4GgtkHSLQjZTs7sIkW+9vT7YhaCA7XRRmMIzEl1OdGKVMayY+6xHaG9ufHga+Q6nOaCaEt27bGVMswsFPKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=caWdyGBZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="caWdyGBZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E8CC4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727160953;
	bh=ID4HxLBm+Abmd1Hh6vKvcQ4TP3I8YG2cfzYxQH3oRIc=;
	h=To:Subject:From:Date:From;
	b=caWdyGBZcVxZZjxiiC+4+PSJCpnfU2v83S6QMInr4NOLDkBanV9rNmWbRDVIj1gF2
	 MQd+ZG3ERUhjKEMOQKOV2XubZQ7tkq1Ge6zdNBr+S/ZDVq8ppKdK2xiAxybgoyhxYJ
	 kVUoTZO/zCqzorNVIo058SNE+F27kDmiTiOLSmjp5cDRebycvgXdNQBQ/Ii/vDW7Ee
	 3NfMhlEyQG0iM/rKsSe+rsIeJ7lsGpzvdJIL4ig0U99RgdADjyMTSRaTt/15IoO3eR
	 9BJZbMCsVAj6v9vKF8ek+jbUjpt0I+LfK9VItsdEc8qKqNNXsc+U4taGZUAVaNNg+P
	 w0fZN+hdbAq1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91276CF9C71
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172716095358.28907.4286493113691738540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d19879dbf4c0d7556c2f200642faaddef4dcb60060f7e6606051587adad5778
Date: Tue, 24 Sep 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727160953
