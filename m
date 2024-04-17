Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E9937714
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 19:39:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713382764; cv=none; b=ZH8tWcP9Aljvzqps1BlXYfMo1X3Hx7jXllk06IrVQnMQWX66zxWMMsYxUw3jUtmR6td0TggzRja6h63efWEKbdyGW7HdGGLEhuoHS72+Q4q05IwxtL+norHpjbhA+0JqjbmYbVgDeUduOfb2ioUEUVgphrxUbFM0k8v/LHALcD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713382764; c=relaxed/simple;
	bh=zN0F6MvmY5wgpGoYz9tvytozh/VfVWd2f3GrF4MrGFU=;
	h=To:Subject:From:Message-Id:Date; b=ZQGeNRVVza2/YcPFwHCw158Frb75zKW0b7ZXJ5MgeuONb92RMlgp9RPIYHvg/z7sijOeFw7ngq6llJjUo1JiLi8P+35xF8jr4zdsg3n/+77bu9wV5T8NEckadzNTOynj0J0pFLVIDDTt3/I1xNrTs2WsWB4O3XR3jcLYPancXnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q9OoeHWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q9OoeHWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3CBDC072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 19:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713382763;
	bh=zN0F6MvmY5wgpGoYz9tvytozh/VfVWd2f3GrF4MrGFU=;
	h=To:Subject:From:Date:From;
	b=q9OoeHWoBQzKcToBRRBh537wkZc1QjMWrX6qVTUAZLJfsBASGVLv5aJWkR8hrmo21
	 3ng1L3uSRbrsyyBF/5oLFf8sw/F38f5Z2crhAlvySxYVyJ8WdC6OKg+goqHCbMXLjT
	 5u6ecPzsAoKPsbxv3KflbUjthmFT+IuMbZSEF+hXa0K5N6hPiy4YKLin6oUJ0gNdYR
	 i4IAel7jCKdOePpvIHuOGdpSTBeklVCTDicQHrF7xhHbHlu/Kicfo3SUb/jerLgpxS
	 zXi9+CJCb9RDLD7R2F8otF2CJZeOPV8uaGCAFYO0htzGLluXlmIVTHaI5TGcotkSC7
	 KAIElp/nLfhhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC8B6C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 19:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171338276282.16856.14503412418555404032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9efcc0a8c23ddf6373fcd34674e764c6667f9fa967d2237292b8c16213bef043
Date: Wed, 17 Apr 2024 19:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713382762
