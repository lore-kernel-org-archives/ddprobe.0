Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1843D207A16
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730919954; cv=none; b=pYGyEkw0t4b+X3jB2G4QggBKd/8fPAeiU5alO7/ccrIh2FWIGAjZbASxtE9tZztAo5ndYr1iVbhqFF1x3VerIOc3+Dzl2eOPOlmX8qQSKrECraarlr0nKhuueDEY/NO19kTFGDayOTD8RkwBMWMfWeVt+lZtU//X4VVc3RccU2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730919954; c=relaxed/simple;
	bh=mY7f749oOs3kEdz3Sk6/2JQ2MqD/+J0k5hpfCIRxPB0=;
	h=To:Subject:From:Message-Id:Date; b=Z+c4DOCXmpg1AbUn/tQCl9eNrqXfevG6thmfBiGdg9X5LL417GHVQTU4OQgj5R6ctUjSfDXFYPkvTAdZ8fCD3SV91oDPjvtpErJqBpFjiquQyorx61MSSG8DByhXDnbLJ06KpR67daBDgOdflTPtd4f/b+DrGYhcnDjHBVDkMSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dZRjuzmD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dZRjuzmD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8354C4CED4
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730919953;
	bh=mY7f749oOs3kEdz3Sk6/2JQ2MqD/+J0k5hpfCIRxPB0=;
	h=To:Subject:From:Date:From;
	b=dZRjuzmDe6RB7PZSoUS3Iq5PrwQmtimUE/pgI00VbUJxfOWMXYV5PD2xIZZL7G6yv
	 KPyhNm1s66WXPunP9qTJpKnrIiTnpkxUTdoxbDk1oZt/MabuxOa3zoAhwabx298bYq
	 uQM+B9UUsJU+LlSGJ2DWKmPtISev5cadlq79lOg/HsAp3N4mdeSWe2x9lwnAPZ1NSK
	 Pq3Z5tEboyLpjJRcDO8VlEc9st6ZCgSgK2HT6fLmtppcXIVmMruFJAcIh2yBLqDsKY
	 L99rVN54kogxV6egzqkeLo/OXndpS01dic93QL0VzLKww7Mofx1h/YEztcXz4jOlkV
	 3s1jAtlj4ln1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B74D59F68
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173091995358.31184.7918664644222189359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b772de8be46a2f3795dd44ec809359e6414e68083bfb1acfef6d818a05855dfb
Date: Wed, 06 Nov 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730919953
