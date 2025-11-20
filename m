Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0A8122B8D0
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 13:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763644913; cv=none; b=cuuLqtyj+VvUbZWy7xiHlGcMtDoeUqMhNJao1n5lybywcw2KToVw6rO+HnI3kkz1YQgGAO11P/rKhS2Fobpt0vDg0NVqrC4hm/HiQAIqL2a7LZUicNYk0rDuntMmaLn5pJua9U1qXEfOsaQ4yz4nDe4MO5kqNUqiIHCN1R+XHhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763644913; c=relaxed/simple;
	bh=XwTNsv4qOxqxJ5kKCTufznHUF0WglwJWxKKkZZ5hS9E=;
	h=To:Subject:From:Message-Id:Date; b=YzDWPqzu3Ervb+it1GmzSyfqOZx8GRWXSrIcc8AMB3B/1BPTbiyzXtP45mNB7gvvMHgVqZeMHMyAQ+FOPyVF0YovbNhStWCe7ajGAQmecrP2GW0vdA9H5X+F3dzr/VMa67xO8yOq8Ry8JO9z0UDk2EZmUlugZ3tznvv5TWdQTYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QqMUQ8y3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QqMUQ8y3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B6FC2BC87
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 13:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763644913;
	bh=XwTNsv4qOxqxJ5kKCTufznHUF0WglwJWxKKkZZ5hS9E=;
	h=To:Subject:From:Date:From;
	b=QqMUQ8y3mOQYvUOSfxAtPtVK9gq5hjbtTEpjCC/wnL2fzIux/wurQ+KkZfEYiZkhL
	 Yyjz4y6G/rRCO5lLDcIfqW8EKEg7z0IQDpHm/7k+z4tNm7oqq59uIqGl+QPHzfJ4kC
	 4nxftfguhZbvdkAK1Msxg8Hk8gJ4ZHYxrAd48q8STKmdRoPX96kALqyd4kpl3jToow
	 Ys79ziE55e1X24zTXINLZixjoz60GIWgS/T7V8BkbhYuWbaxO9kXpvPNdzRn2b4BDS
	 0S7fEhwviWeVtE3LavZxNq1dYzQbU/0VQUHQlH20eQByHVHyiREsY2DiX1KjAVNLMT
	 QpWcBTT11I6og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ED2CF8854
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 13:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176364491359.24146.2383186742056988319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43471e72cc13385d804ebe54d46e1d1ca718309dce8af6223f85f17306083db2
Date: Thu, 20 Nov 2025 13:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763644913
