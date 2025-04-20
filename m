Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4809F1AF0BB
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745145595; cv=none; b=qz5sQM7S1RYuiYczxKcq/JCPvtLRcsV+8CX9FG2ymzzi+SSjORp5b/pPnlQHZDSD9UJKK89o1lzf+adOvpGmUV01IDEOhnPf2UiUfD3kgi3RMdqvJVoADZuDQJm3/mqOkh713mo8IiBnpXwprEVWeK1loBzJQXeutoFBw93PIYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745145595; c=relaxed/simple;
	bh=V8eCQYlWVLtJAFgVtQWuSNMrDiPbZqbvawQbOzB4H9w=;
	h=To:Subject:From:Message-Id:Date; b=CTemoX/hKXarBaeCB+hDvt7k83R6hjDzKzPcMncOozW4LypMKRJYJjHof/lGKrv0r9ZsCWLnTrQtcnIJM1Q52YG+79Uh7uc6vf0ZGd+6qrBuAv4IqBHmjDTf8IxLnzEkjHMhjunhXyGnlNXxzg1JqbV9fqdZnjt5+jfxWGvyFr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+ZSbDOM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+ZSbDOM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D6FC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745145593;
	bh=V8eCQYlWVLtJAFgVtQWuSNMrDiPbZqbvawQbOzB4H9w=;
	h=To:Subject:From:Date:From;
	b=t+ZSbDOMUBE2EH3QAjDxW6GL8JWEvji4z2Gu++kZZrCyMNk7T1oMyfC2RngJkJIkx
	 1PAis3XUsh02GMX0D2KO14iUsbWpMXEIVYqVoz58ixtExvJdc6Bo2EGFm3CwwYZqN/
	 1RRCHjvrr/+MVlSodyCrlbLl9Jo/Eo+EqHLJU0KhkOlxA0LTwxChma5yzG+esDlF5H
	 9JJ3kfOTPKuiHOWwMYOSC89+cKkprDtqTztHpvAn7TGDulmeVFizgtwKVSeqQ5VCuo
	 HMoKXXMC1iHoprRYIT7jQPCw9I997x+KAGGeOrVTL69Oydei/JUVs6+WNav0jPJs3e
	 9ykF8IdYCWqOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF30C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174514559362.27729.13611284962457783867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f31908e91fa3e3425dd5849091a0bae2dbd33c74b4c174e79cf00904dd017308
Date: Sun, 20 Apr 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745145593
