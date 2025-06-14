Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312801A2545
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749927594; cv=none; b=jJfVx3k6Dv/zKyZlIUsM2Q4eBLMY2Y67VQamxao8MvEr9c1rZpILXhE4m/9XxGuldx0ncgKWwq9Jno4LhnM9v9dPnbbhf65JlbSl2t//KICRK4rzd1gi+VR713hziZjsu17T9qCjGmMUFZxujLTENzwnoy6uRBQC4qe0qigY1mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749927594; c=relaxed/simple;
	bh=qb20I3AgSTvABFeKzbqSQB5hUecDfe5O9MN0sjujrVw=;
	h=To:Subject:From:Message-Id:Date; b=O6CoZIJ0WOM3S6MJMNnWiV+DIfJuCVq6L9mTn282FwlVoFmp/DoQ/AJbBnUcCHQDj6rjfuEP+HLv0lhB11uo/cTsbD1/Z0CqYsxpeKPXyagOrEccp6aYlky415XoGw/M0oqqBqQ4iV3BOdHfPnqaJSjE6b7f84PAzD6vSi+UoHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HJ4kJU0j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HJ4kJU0j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD2DC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749927593;
	bh=qb20I3AgSTvABFeKzbqSQB5hUecDfe5O9MN0sjujrVw=;
	h=To:Subject:From:Date:From;
	b=HJ4kJU0jxblB7hOP7wD9PoNb2TC7zimgofs2fTBiyVYsrtVgzEXC7AH3aDQphxeLJ
	 cQw6FTO7TXEh+PdGKeEmadyBNYQC/iylhCmuav114fKMLUEfDKmTlq1wRlu3N2u6Zb
	 96rM48haPJkk8YSwuDuIY++T82GCUEiKH8v14/sHDzlDcngGBYSC7U87zusYJzdFuR
	 PVklLjT4HPj8ZWTR8a+T3P+yOBgjbD/kRTEYYrXBey/qL6swrQjNqY4zgODVC8irIx
	 A8ijJlvdimbssFXwIRKAMo/gd/W6Fdo7lMgyNv5q9CKnN0/xZLguyGGN5+++YTCZHN
	 vKd1/PQ6ypvEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C22C7114A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174992759358.4125.7972076812239606779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bdeda18bd4be00da5846c6b250a15c84c89b7ccf95d942c162f4b20efd61dc1
Date: Sat, 14 Jun 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749927593
