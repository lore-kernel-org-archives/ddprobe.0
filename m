Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF56735AAD2
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756219193; cv=none; b=KtEZD/kAV3saYVz587EUav8Ut6Z6jFg7lWoGkzBCzpNQD8ENBoWiMFUic012WZ1NqaiSnQVNmGlZnkOoK69P9t9MYKR6SFQ9jTnJQ0Pu4r8LMpfKlascD8yayH7KIcIEJLpc4qso+hN5tx1nJFxbEuxu8IUjaEUeigUzAcIwkek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756219193; c=relaxed/simple;
	bh=DyvSnjhtZQb20/MQgBCTBUZype/OvcxUcyR8BIgPqPU=;
	h=To:Subject:From:Message-Id:Date; b=CxulQOy/N1G93cwufcwjBOvbn2Qe7v1Unr7VX5F12Q5T3JjuIW90CDcWV2n6w0Dynf8mlCl00X5HmyLMIZNchA4Pu1BH2JWQ8GcGCYhxrfb0ZnS2NMjUWtFUs75y9WdB6Lzh8xCEQhJ6VCLT3db4p2ZpCSUbwW1KkzlYU4TxcV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQNY4uHJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQNY4uHJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A21C116D0
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756219193;
	bh=DyvSnjhtZQb20/MQgBCTBUZype/OvcxUcyR8BIgPqPU=;
	h=To:Subject:From:Date:From;
	b=bQNY4uHJvnIgqTE1pcLItuGWNvnX5R6VX9n+s11UKokVYt4W0bPZEVUWjFeHUe7mv
	 jF1UJdEWwjSNV4up9HBwMQoT1ft5wHdb2CC3J/kE+vSieBFdxh4hj3IANUdAQ94KuN
	 T74C33JjhSTEbUAIq6ZeFc7hYerliEWR5HVsx0biLmKYUmy9tx5or83UGlvghxJ+Qd
	 LEC9ZecIJQAihBhe+ljTqmpr57rmfcWYnEOoSKbQ5KC0nSuRzZXnUpkW4JqVa5392r
	 /pbkct9ez5VZuey3QZYLFpTwBVtSjpGgqxGoebNa+R7hQj5zJTfbGL6VZklsAtsPTv
	 EPWH+B1yAFViw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F72CA0FE7
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175621919357.17352.8178828209629240401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9f9db687893bb2e5f672a1b62053a56bee75265d796bf7c612f2158d3766f8b
Date: Tue, 26 Aug 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756219193
