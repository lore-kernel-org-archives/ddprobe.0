Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DCAE19AA66
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 17:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717781243; cv=none; b=X4Km/95sBjEz813v1gEOeHdAVvmoyOOkvQt7nJPgYziamk8oMrGIVyfVcYUUVHXAJFTaJso5K6h5K/ZjjV4eOiQowBc8/iSVCqDZBFc6Sz4Qs+qLjoHY75EncPjlfq5yybYAujBbaxZDsuDgf3hHri9pwFvXzK4WNxuTkzl4WbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717781243; c=relaxed/simple;
	bh=FlYqIhdVem6cjIrqmcjMNIL7Jcn7qTVduCUCHXBgVsw=;
	h=To:Subject:From:Message-Id:Date; b=lSJQD7mdGB+21Y70WLBOyilc6hWJJQjNebyPbT+8uVhkfqM97cyD9YCSTBbCUteZrPaq0QHHd8N6Nn1QJfahiMqPmc+fGnbwhQhIimqP+ufVSN9hKTrTn4K4giDvuG6PIJ1e0XOurPtK7LZNF3muTchf4i72kGPEMMngYEpc1Jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GR2W58yX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GR2W58yX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFA4C3277B
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 17:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717781242;
	bh=FlYqIhdVem6cjIrqmcjMNIL7Jcn7qTVduCUCHXBgVsw=;
	h=To:Subject:From:Date:From;
	b=GR2W58yXghPvm8tfgsipcmff/d120NULkI3xJjp/NwDR6VxwifjcJlmAI/xNgKD0u
	 qJg5dIvcpyKazvuhUHD3hQFzrRp6dF2vdU4qQ5Fg/WzJ3N0M2F3YLuxOnj4GMfpweL
	 o0roMjPYKL7g+j6h8hSRu7aStjsteUxgM+h4qj3XV/PYKD5r9lcQiu2oYQBRGriSQG
	 0TJn4zv0p8FT4JQN2c1v9MYSMcSFwk1HESn4jar1As4yqFjlWG/y7eTzNxbJehs8sx
	 4a8uxH+3nx1zm8qL0XsugPYRW0n8I3t4rc+Dsl1aM6muq3kymniz+mM7i7dVg6IDOz
	 ijyKagdKv4A6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE3F4C27C5F
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 17:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171778124276.418.3430629845165284938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea1932a59a1ec3f68a1b19097e260f842766aed296758907dc7d507eaf2f680f
Date: Fri, 07 Jun 2024 17:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717781242
