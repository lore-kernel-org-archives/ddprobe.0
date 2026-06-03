Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDD53812DA
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 11:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780485874; cv=none; b=UkuNDYrBoT1wmTqP/mx9wNSg1tCvk5SFgA9dDIWX3BCOnaWlLQHRs+9kTFtEBY33OAS+sNjHSpqXZlYd0j6Yp4UWW7vnVz9Ow/s9ZNUk4th2UMf2BwrsE6X9tUQw8wZLh9YsJfWzyuqnBitED1cIUYNCoWbAohlHEVP4fT7l9Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780485874; c=relaxed/simple;
	bh=vXKdxwiiCBsvMf0op1Dw+ZOQkupK3JNf0LR/uLz2AlU=;
	h=To:Subject:From:Message-Id:Date; b=iA0Cw50092NlcC4Rm5OoYTMjG0/Oroy4YdqrgsyOvnyTj4373rAt23sRYCPGRS9Z2LKdj73Ev8UeoOXemvVBaKlTtuaI0jIgzd4W5xjgbrQjuQVaoSc+Fc96myqRvWBjx0qnVQDVUA35CMb9vbo4L2p0Ss6YvugwNxEfTxnfrUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oLEe6b5Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLEe6b5Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C168DC2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 11:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780485873;
	bh=vXKdxwiiCBsvMf0op1Dw+ZOQkupK3JNf0LR/uLz2AlU=;
	h=To:Subject:From:Date:From;
	b=oLEe6b5Z0whnMnqwT1YwCEt595rVroacNAqj0aTCkKQAdQMwoTS7YcjxmVtN6kbly
	 Ctwc53GGBH4lXdCi8wGg6jZQlIj9JBc2CFGk3bDTVfuAlIXqIL2s3coFnQgUefvMaJ
	 EVBHop3udPTOhQnE6ODd+sxyB+RcVOe81BB4JVMlZeSpLzFKeis7sKsqo76DcWcvoR
	 fIvncS3t6dHkZb3Uu8uWRhxgNCLON/jMYs9adwd1MqpKKWa6uX0nINmivTr2DwL4zy
	 xvsDTmopR/9U0ZINnRb7xhCrfIKzE/J6w9+rGjB5dHeFtqWOMpck41E7DDUoT6PG4I
	 g/SGKLridySuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CFDCD6E4A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 11:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178048587368.23022.11601673863393919377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8864cc5d044189bdfe8221ff5a4084ead29c6d13e899d2f4c5b6d0bd2a60106e
Date: Wed, 03 Jun 2026 11:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780485873
