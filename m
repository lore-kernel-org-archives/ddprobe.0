Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36563D531
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727195154; cv=none; b=TjDJD4stmoi9TJkhIuUxwlmABph0M9HquJLMjGcGdWBiZleLlW7hFskIPWi8pkPcGLpfwNtq4uvrPul6MX6LI89r1YIDj6+bJOiUnGW62s/GvWDiPIakTxNUYWfj1KvvpunbUAvF6xTE7aSqQzRIW4TzOFvm2u8AY9XJMl37wgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727195154; c=relaxed/simple;
	bh=E3YbeeUQcL8XNMw7/yDFcsw1y3XY63XAKB/Yiqs2BfY=;
	h=To:Subject:From:Message-Id:Date; b=KjCQj69VLpciR7/7F6zA3pZLAf69mfblzBX38WgHOQvJyjcog2zLZjgxZMp6fCh4IULVC5JL+InkHZhBymCk5kxrwtutsy3QRMBEQGDJB1eyldDeMgMu8Byjg4IttWlz9rCUeIavrjyz/wTYt0J/RwCylWtwGNpaOe0mI7Fz0e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RxKEn0pA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RxKEn0pA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7102C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727195153;
	bh=E3YbeeUQcL8XNMw7/yDFcsw1y3XY63XAKB/Yiqs2BfY=;
	h=To:Subject:From:Date:From;
	b=RxKEn0pA/8uORj1INf45ncyVscjREiGghjPREFCMTiKY9wDKDv9ggbB+sZXFCcQDS
	 TjNZD+d6wwCmI+J9wcXRJBD5geOAABeIhSTdvNXpiNFuxFgo9t50aQMJfREx8fHQct
	 K+qZ3JTJFwGc/QlhuXUQsRju1BdgPRf+YtuUyve3i7AEaMVNVOZwtpM++Pa9VznNg7
	 u9q8ZXuWCOp6cxmGR8WCnolVbH77f92uNGf9XrmCjDBThiM2TVrqDOSPhQnpGVVgO7
	 AA9xBDsKYrjIFEnHEUtnjgTnehUEuuBlf1DRVLpy8ELVhjw3QNsm9v1F01puQWihGt
	 hmE1lbPHlr9qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EE1CF9C6F
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172719515359.22450.10274839177847191685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26126014b765cd10e7220356b1fc5b912c1a28a1fd5db018077500ff10fd73ab
Date: Tue, 24 Sep 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727195153
