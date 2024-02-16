Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11BE117BC9
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708076897; cv=none; b=r+9N47BL4GMfZynQ9OpoSaa5K7/GD6gv2UPIDP9tkX0KCOnp8TAjAERQ/HvzFMxqg4BIrBq5RFb55oDuX08ADaxyA122V9cRiPueOp7KBs0P8GOse5eBFZOp2ZqDOaDLxehKnnXVU7KLqvPgC2SOuiqQY02dNmVWdj7PiRJ6dSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708076897; c=relaxed/simple;
	bh=i154Gsefy2ZjA0GK2pXCdmlnEJ/4gUxIX7IDp75k0M4=;
	h=To:Subject:From:Message-Id:Date; b=HNzQGKoQ5oKzvq5Cpjkrm4Aw6DfOtH2Jf10mcl5DQswr6xXBYMZBbcwzTLxEnDx53gpIH67OloFNb4ogZm75dgsOXbeR2VUR+LcXnT+k6CNobgMlYihhNcZmEJ78+0RYh1ay9EcDZySXvB7x+6e14cy0lckWQifGkn+9Fn6rzwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S+K9Snyt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S+K9Snyt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E402C433F1
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708076896;
	bh=i154Gsefy2ZjA0GK2pXCdmlnEJ/4gUxIX7IDp75k0M4=;
	h=To:Subject:From:Date:From;
	b=S+K9SnytcX6KXUauBEpuMbElijsdUoN14LCep3pr2ZMScJgXZmdE4Qj+b3pGQjG0B
	 L58W+0DWtyPOqjaorVMl8PXGbD+cQUrpOJyeRwoFd0XcpkeVwPLwS3uNO5BvISTmMk
	 +czv7sFqLfj1wVt/eGVvxMAJlG8L0iT7V20gqlg+/MBhs3JeafRa0yVykuh8ZwJYRr
	 51cfVvdBrNca1z7SRBHTuCYIGPC6QCK11sRmUTTDSNaYGPdPSyXevrlLE8mNho6NyL
	 pxCBNasuYvXQ2bG4xdZHQSOKpY0JXhig3Y03ftwWP4IrWntfn4P4tbjLQdsHGh147x
	 1goDKV8I65j5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61068C48BEB
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170807689638.26507.1835310403043235385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae9741ab324e65bd4933d9c22efbf27f580d8907c68d04990843925f996d082e
Date: Fri, 16 Feb 2024 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708076896
