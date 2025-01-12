Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FDB6FB0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736679954; cv=none; b=MzyvG61DY3v2KuQsHXT9U4rISOlq0axa5gQ5cixPPbOQwP02rGksdyfVmd+9mNzcVPUq2bJ9pSw2eGYougd52B7hs0MRTH5dtZ/0AdxNH1fT1rk05i9f+8h+VsUZK6NORV2P2J6oVCh39oyrCPF+Di33d9Tqe3ywL7lVIcFXntU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736679954; c=relaxed/simple;
	bh=5NV94vXxpltEg02acJPu43PTJJHxhRjTWgBtBY7Y8y4=;
	h=To:Subject:From:Message-Id:Date; b=OaSScYvV0wwXHTTeQZikuHm7B5bEqLrkcoo6HZZjfUhaGlllBI3bbifD2C5sFcm5Z7P0cGrw5jy2BFsIgylpp4hx9eay2elnaJp58ouExN8+kSA+QQ8OZ/eJcKVXSaF7nvA0v/2fJRy1SV45pf73MZi/uGvN/FBYMUqBuztl/j0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJaGk9P5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJaGk9P5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E5BC4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736679953;
	bh=5NV94vXxpltEg02acJPu43PTJJHxhRjTWgBtBY7Y8y4=;
	h=To:Subject:From:Date:From;
	b=IJaGk9P5rDIn/gZOJgw8L27Frlb19H0qYC7MXzYBctQCTZXH0rWn59e7NpV7PJ1wa
	 h8tbJcTbSTXDgTREwILk7kcPlukZqsm1JdXmrzQ1CxzEjQ7qA7eb+BlDt7tuWvpASH
	 eS/4P5lfbGwYaJy5/kaNOrmbdiAMUIscFXjfcprgHiQk9mlqDGaN2wDfyqCoq5eG3u
	 SwjY1bCzVRdw47lRAB0rhQQuIUDyZtb3wqi6BOBWgBXsVdxsb2Q4G/5lMcq8CApY3e
	 KcXPuaCQEIoLlsCBEWJCCS65ccMiauyA5VNAZksVt/xcaCoVqYDSVFSD5geNy8Evxh
	 X0E0jdmjC1V8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9952EE77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173667995359.22865.18375777266612622328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d524c648bbe73f19352052b17bb58d615144a4ba437da63581ec6c88b61d6069
Date: Sun, 12 Jan 2025 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736679953
