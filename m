Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F66113B7AF
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 17:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718730563; cv=none; b=TzKndu1qh4tq8grjToezhm+XwewrQSbdXQEyCABiLzAEvqhE5H/ygGXBB4Y7xS1jLw6NO4px3XbwLeNOsZrStqCfg6cXBpYeQLaA1GY9/ovR+c6UbGs5FvqY02qgtl1yByU+pUuk6+XbgsWSbvq8cgrrs9YqUtOqO9tAiT0cGIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718730563; c=relaxed/simple;
	bh=RlS+cLVMWzoc5h38ls8Xkqr1h0eZWZAqamldEWe3ArY=;
	h=To:Subject:From:Message-Id:Date; b=Zpo+2/HQJewjaaCRQfAeCM1I/oV6i+ZJ9Q5tJsoLltZ0A59wdF467zE/YbTFvliSVlz7kkwucaHF02e4kjNmitPEzCPeibNswalbBoqoVD8Fn4qwOrYFtzaU5b3hi0Fk6GibAnqyKnABM+KZlxPtEN1M3EAEtq9glJAbwFCxqr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6aopNe5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6aopNe5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC730C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 17:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718730563;
	bh=RlS+cLVMWzoc5h38ls8Xkqr1h0eZWZAqamldEWe3ArY=;
	h=To:Subject:From:Date:From;
	b=q6aopNe5UjyV/TEDk1jA9eNqx0YHMjTqsNsRU2AF1s3r0/70D88EWBQdLn3WESmcx
	 K9Q6G9SrdqTyxo8yLbquzIlLNb42qU8Q0gDNVL3GniOQWIdIa1vIvUSSSCjXvyoZl7
	 O2cnd2+KjENO9CaIYYyY2ekvZL8YcWwC8bv7rb1O/WypY1gKOwX97OGr/C83HJF3T3
	 nZFBkToCiwZmXjO9+hW5PjJJHtl3k3WejYjntY+mWtV6ELvH+nPhI7K8KXaAL5dSkK
	 rHa8hm0JRaJ5lVj7avkkOb3mJGqNXoDo3JoPTXQvyVPAwfAWHC7fU9DX7OeOlOv3vm
	 0azalmcC+rGzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB8B0C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 17:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171873056282.18048.6160492814177579529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 112c79ac18a8bb5350c5dc4b317abe131d18e7ba36d59c3e321a006a14507b8e
Date: Tue, 18 Jun 2024 17:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718730562
