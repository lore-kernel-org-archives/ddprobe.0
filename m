Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8EA155C97
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 04:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784349514; cv=none; b=tjQaJ2YDEqc1tphX4KYzibb0G/WWT/4xASWbnYF4fvwSFV6XSq573qSMlDCljvKqEu1Wak3C5MhRWeTpMstzRyc2exrlYuFkC4VY/jhC/QeiT7cgBIRmWHbXGuljnvBiwm3ktyXmsxRSglpUFw5s1WukbTPcI4u3kTrDMXBTM8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784349514; c=relaxed/simple;
	bh=zFSqzTX1Ex0XcpU/9HrA2ViS1kWUIYmf4YZj+21MLQ0=;
	h=To:Subject:From:Message-Id:Date; b=Vc1SxFV2IHPlJB4bTgq1pqq8vUVXm+5AT26hX5lc6srmOKdNzDG5r9V/lcHFIZkC6NymLreMEyAIIWUOwZdneFMcgmf9dY6TBsUikIdhSaoO9kPt9vWLzIpAWyHaVu8BDlYKsvp/MC24RDYaFEZV5hNY/BzjDPct6NuRJ2qt1Go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6bBAHnA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6bBAHnA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE311C2BCC9
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 04:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784349513;
	bh=zFSqzTX1Ex0XcpU/9HrA2ViS1kWUIYmf4YZj+21MLQ0=;
	h=To:Subject:From:Date:From;
	b=r6bBAHnAkHOhZUHiKtyULm6NJkg8j/AoPYKqlnc/kFUaVzbyF68RNRYSdlZAjwaDz
	 TseRoXjdaRShXC03p40Yen2dbE5cBt1HdStR05Of296z2nj5fcf99KfNjpRejeeMwO
	 DwvEF7LSL6vU34FoHxy8Gi0M/cw2FbId0HwIGY9rN1kdOKhfyXHoprZo4EIwiqBUtt
	 55Nib/pSYWJQlvd7dUcXVXNMQkcNko538gd1kFRn0jIS4iXYK8OQOmWBuXufBwgPWG
	 L8tGH4Pt9S2goYSUwn3n/87abhwSQHm63HZqz9MgBEa6Gt9wjFMNN6WITcdSWTJzQJ
	 1uAoPYL2nMTig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC56AC4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 04:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178434951369.27243.7849566917072012072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6debf54407bbe9e095a429916a668927f806ec46c5d10a39e8a7b631f7c6c964
Date: Sat, 18 Jul 2026 04:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784349513
