Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC3133A010
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756830594; cv=none; b=rQ9ia+qCuWJVEVXEFRdbGcJJY7F/jEVTU93hdbGknJVSHr7KxQdng3Ng0DMD/A1dYuH3LWxd0cuioQCFdwKezJkXHoVHWcXsZ3+zpkqw9BoCaNKh2SvedJjd8rSdyQFzIMHjIbX/ns7vq+D74x7iWmVZxaQO/5Z6rAED3hPxwcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756830594; c=relaxed/simple;
	bh=g/46aBNPlubwprZJggLsZV2vrI+CZjGeQ7T/02OeA4M=;
	h=To:Subject:From:Message-Id:Date; b=HJ4tpk0FhCNFoG3wPPEVek9RsnsruPcTQUZVERJZEZOpbPCpzNtk7ljzMaNQ3OUFNzOQvaK8TNbvxs5LTx0tD2YekAiL9RVF5YbN3LtGg2g67eatm8rhDA9zOF0bBrySGSWsRBPISEIzOHwNlZFxQpsubhOZmhRWSnz5ZNjmZSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMlD9y5I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMlD9y5I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21D1C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756830593;
	bh=g/46aBNPlubwprZJggLsZV2vrI+CZjGeQ7T/02OeA4M=;
	h=To:Subject:From:Date:From;
	b=tMlD9y5IQLTzYMMRU9VsRzSIWRiaezUfnZkgzhjHi4o33U9ZZPRqtoVieosL5Ht8I
	 Wa+sYdEWzFvntBpOgnE/eKrYhFpXQ3XV72dsbVqLATqMxAGx+Fasobpiy2IgLb1eY7
	 arDggZd9cEtfB17nVZN87yYzay4eEoTEhS5HK7Kp75NDwhFuEOHQobQnWtyJkLTjhK
	 FLkXRU0ukY5CEjdW9Mir7Fjn18BFPq5D6LEPBaqkd7ygNtZZf/pqyrpvoIQjWUzt7M
	 hqK/79dfQ2NkkqaxUrJdDqjtN10mnXXbVBqspQLqQhSlPJQOQgYHvp1rNBSHe2y130
	 Z+3r8NjcOH9ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCBCCA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175683059358.31670.10422226601345919497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19322e05771f4be9a60a542364ed2a8c5921cb01eb2eb6801b3a597c00e0b4a4
Date: Tue, 02 Sep 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756830593
