Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AC91E25E3
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760079594; cv=none; b=O2acs0uIG/R77wCiahMj0O010kLNOdQsAxxrguMNuhv518qzNQ72hcbpoBgFABDIQekI2FFYkc4TxjCw1m3HYw8XNDKqBmEZwlTOij7fiRrsFzcFKB5giwjvABz6OmJmZ1Yk/TePfXSGEDjwWRYhA5lnawg3SAKnOCQf4EAhvFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760079594; c=relaxed/simple;
	bh=o6zg1W6qsAp2fGDcPQU1tnCttU0E2MXEqTHUKStwpy8=;
	h=To:Subject:From:Message-Id:Date; b=MSNoG4d4WFes0QuGwGh5P1zq96YF08y+Nq1Yd8dKVYiixk+Pbf49dpGSvgsch/GRHdAJfYR3OgqQrkJGZ6yJHS/R9UvqebsUWg+wLhFvs1lLp0RL/akWEbRcsCadM0Lt10ykEErNp1sHwvaC3e0Yza+ZS/oUVuMygLhzLd/aO18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FrO98yHI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FrO98yHI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7F6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760079593;
	bh=o6zg1W6qsAp2fGDcPQU1tnCttU0E2MXEqTHUKStwpy8=;
	h=To:Subject:From:Date:From;
	b=FrO98yHInZxHj6C+uAIhtF089Y2fiDmyQiFV1f7SmQvUFcKlWDL1vRdJbOQrgw+AG
	 JPiACNiNBaTK9JgdGaSLInNYg4H3ozvGmJ2abFmU6RyNC2UYVlaGN6vNsR+Fq94NSB
	 sFY1QZfTaIMQlN6pDxafbVp/dUgxB+ik59DwHmNDMeiQiHlgf4NHXmtOm2zPyvmbqL
	 hwMmb1Ng7qbbv6fKnfB5iNk7YEA0sO85dQxWl5Q/lxHM9cJ2E5hKm5KnwYZS9qo7ji
	 +yfEbzNa/4n19c7FZ/sLRNII3a96ctDrrd9YpcBXQ66YL6J2I5ZbAylLaIHgUwunwV
	 jkXaR5i4BfhUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E913CAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176007959357.22829.11321529656076063637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a1b80280e8746d94e4d1109af7c2ccb394b461d06a5bc10777f6cbc468d6323
Date: Fri, 10 Oct 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760079593
