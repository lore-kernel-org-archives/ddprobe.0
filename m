Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13552303A17
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761408594; cv=none; b=rjNVL9Hl9eSpQGpm+vVg+hS+kFufzjMmfieUbecp+vK5EUBAe8gG7GvNKTFb2ydfcxdHbAH3NYM4H0aZn+T1wpQPmExW/l/2nKNQHkzG2sWulaMhFlTyW5o4K2WxEjHvCc9TqN6fjRdQOZ56mGixx5zHZ6YThRJIYJk42OhnvsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761408594; c=relaxed/simple;
	bh=DkI6li3SzIaSepzGCip1Kr70WnQT7x2sTU5xdKklwTM=;
	h=To:Subject:From:Message-Id:Date; b=eOyVu1NGSl741nHEvQjB4z6+T2hcl+IlBBLe2VvI3ajMonzyqK0MRAS4Y5NFlLfafazZ7UrsKJZKNrHBLlvO5GtmMn7g2U+82wviAp/2u1y7Wj5W5Nh7VTfCvtbZyH/ezCEXBWkYRZxW2pQsXrp6NqCRcNlqsvZnRHX1BODkEgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HYInce8E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HYInce8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC0FC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761408593;
	bh=DkI6li3SzIaSepzGCip1Kr70WnQT7x2sTU5xdKklwTM=;
	h=To:Subject:From:Date:From;
	b=HYInce8ETyjWVgbUQMu/LlXbbvZiYoa/26/N+JMv4p9VWmzVd3hYKBVWgTqiktcPb
	 25ye8yoMIL9f7HjhNFG0/knZivkJXG5td02h8gEgStfs7Chix3SOMOGcDz2GD5o4uy
	 c7Hdhx6xg8PXbuuHWQepNCRpbx+s4HuSROUJ3D4VBKJ9MqizuY8zAOtAVtS9jwur3P
	 Rwe4JNAQgCH0/YZXZZU3QKpJWI7zL6pe/is8hYUOvGIqs4qxeR0mX5c7xiJlqKMB/T
	 UM88JgzCapmouMCML4blvhIgVDLkP2Hx3KwrDQYFqXWjBVg8Rq0MzvE3BMD+c4cFM9
	 jFsA7yf3rdPtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE4ACCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176140859357.7061.6499769807206810822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e870f8508c93ff7969201832f2a943aef031735ff71bd58b3474816d45ae1435
Date: Sat, 25 Oct 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761408593
