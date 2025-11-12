Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211FB29BDB0
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762928394; cv=none; b=kpoC3UGzCozYe2JeHm8da65ahF8lql5rWfy34vyvtOfyt5F4V+ZrQdreea2IOC+EomSytfxixZhrwDGC2ommbHeSsT2GlDAG/31I8p/BHQWVDnS+5JAN/pyCypN7dx4MQUAGt19pbJFBUcrRVCBgzf5LYKNd7fSuEhxsFkyz+Jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762928394; c=relaxed/simple;
	bh=b+BVE8TNI1cpKe80fxJRevn2/vsX6cJt+tIsU5GbXz4=;
	h=To:Subject:From:Message-Id:Date; b=cvmOJPkHqrWQ0sscVVU+HzK2SflJkNwEVwJIXDZnXNvmMJ29RwY9/U7UYalvNO9hHwXbcwQV1FtAP6gHqKTg8bJiOxsa+lq37g3Z1wk75Wx+yqyiIOsRbnS5Ud0/bH/2C9C67KV4Nb5HwWt1jKlU/ePlBLdIzr/Xdz5U19jm89w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDbU4W2t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HDbU4W2t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EC7C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762928393;
	bh=b+BVE8TNI1cpKe80fxJRevn2/vsX6cJt+tIsU5GbXz4=;
	h=To:Subject:From:Date:From;
	b=HDbU4W2tHOhXb3BD1aJ2RFrAOziKYcsKNiBy8p7IPs4UY9YQI68ODw/mmM3fUY3TQ
	 d/gUYtvgGlf50reO9idtjr7j0uUFbi2dVFDxvN+TvnJi76L/OUh6TknrJ4vegaqhhQ
	 qjgID3yxILYRD+MHHq6KLk0z+Ss5qV8nnYDtjjqJpS8ZN5VFm3m+pxta7+HcBFiWRp
	 a7ACmZ14BJFjMttmk0s2pd6FcgWvLXqrYiNVlASx2sVRxwrEuSIArcAAVoj7g1I2S4
	 cCKZJftnPf+SLEy+Md69jMHvQbWbfaHL3iUbhaezfxdhKgOLJi9EJ3ESVOBQ8m8ZV7
	 g3FhqTIES5XKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978FACCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176292839358.32665.15387789680983749811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b136f33b1eb2d287d125e1cb17ff8d1274b1653183e4bff16b4cf5098b2fe5cd
Date: Wed, 12 Nov 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762928393
