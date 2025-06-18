Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3241220FA98
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750274994; cv=none; b=R3wJhMVhKegJAtYMRLDSgRYqf7tuPlD15wziG/64GWFOgfrB86zJXB5oRXAA5o3cc3o5rLwqJllWW42STuLjyq5LlbDfjxqkLceE1vAXC0+hd/bYw/R7mSsQnqg0lW40UeoLIFgu4mygJkV2pf5vA7hIwRgIxa8xFzd7FZIvZ3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750274994; c=relaxed/simple;
	bh=YLVFLS6aOane7qd6JxIzgpZQ+OFBmGIZqVn4ykB101k=;
	h=To:Subject:From:Message-Id:Date; b=LRV34dAFkXz/GWyVovceyyyYw5JLvzJ9N6JEFOMLkZOBjwabbflr4Yp/HsLEbxK/i0usfvoaloH4WoEQ7XZeTq4r5SG8lslhk82q0/NY28ZW0daH7G5RNavnBhI0XtyrejKpehB+GEMZxg2nZsayc4Aftjei6Ma1te0IQ2u1P9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qkrtBoXJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkrtBoXJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5300C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750274993;
	bh=YLVFLS6aOane7qd6JxIzgpZQ+OFBmGIZqVn4ykB101k=;
	h=To:Subject:From:Date:From;
	b=qkrtBoXJTCu3v8C4AjK9BnSlmscwRFvAxGhpRPUnR2AqgJiPSYPtZH1hkUy1dUdtY
	 NNTIuZkTGVfGXoo3Zc12faI5kilz5EW7y8I+rdIBhPbfJaSAV1BPzLm3QQnvmY3fBh
	 qUudxaFg6wX0YnxOExcYHKWb9S2YvYa9GlVJSbvwHdz6NlA9wV57QDgPSz94mJx+pp
	 uZAQOIZaDILzeSiiQ5itiiwkC+a6CO26F/YhZ08RIogB6cQ3p0Twx933HeYhWYURlA
	 tmK0/vYGv1BzqmU1ZI7WNsj485KIvL+B8bnCrYneP2bjkEdGZC5arpuIIcS9pPSgj8
	 +MCQM01k3IWmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9690AC71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175027499360.23138.18282777212374073976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61acedd70db6a6c63cd8d50695a25dfa066ed6c5a06346cbc96bfe8891a38829
Date: Wed, 18 Jun 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750274993
