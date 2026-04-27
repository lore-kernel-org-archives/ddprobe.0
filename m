Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 453163EC2E1
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 18:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777313254; cv=none; b=YxEAodyA3lSr7MCtLaHpaCi/SpKzvd+dye9ycBEyogK9B3ogXTd+iWY9RSaR0NXSf7brm9LVB9kvVsowcnt508ON7fR7WJ/zC2cAxWwuOFhHZAq8DqypA1fL9qgcRm19xT5gG6rukM0SoN0Q5vNxcf+jzcaiuZVAI7Y8iGp/77s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777313254; c=relaxed/simple;
	bh=Owuric4gQtPAG6u1alQ+htqIm+RhQEbZT2uSZYruBlo=;
	h=To:Subject:From:Message-Id:Date; b=FldSS8U0IuFzM7sZtz3WaRjityJCFnJorDy9qYbJll9XPMSRRTkFvklGQ7YFPJusdE5RaWQbh+1U2MzfVxm7cxX9F1/AO9MYeeWiWdM8FxtB8TntzWRgZP67Cifd3S774s3+GOlEuhiLuo9KFCOC9UB5lyF2fVH2U9SlQg2yxF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1Booyye; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1Booyye"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A56C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777313253;
	bh=Owuric4gQtPAG6u1alQ+htqIm+RhQEbZT2uSZYruBlo=;
	h=To:Subject:From:Date:From;
	b=C1Booyye8uSap9q4K6oY+DgQy2M9s+bk2vI1lsJ9hVeGqFTzjF7mEC+7gaj/h4B/j
	 wyERnt+CKRmqA9Hcb+zSNKAKDv/5o4X+xwSQn+kV7vQIA1/jeNl9p6au5tgtpE25h+
	 zzQFkbS/fwKcAHwvNUxkzC+Vy8XKTLI5J9PE21gcTpCNno2jlqrtXoyD6O+iAZBSCV
	 gRi5UrNAPSz28V6mAJ7OOkqDODmeAs3Ns56T/f+AEcevYgGj+SureNKvMVrviuh7KE
	 NV3xaztcAkCCB+eQMhmDb8hS6Dpq9KmG+uiXh8nz++gb3SISzbFkvUJCu5DUW5MmL2
	 6sgl8s717cPNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C86FF886D
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177731325369.21529.9612064388209436959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7912b0aeebc973fef8f019d5d70340df72778ac21286441131f6d81b5dc8c9f
Date: Mon, 27 Apr 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777313253
