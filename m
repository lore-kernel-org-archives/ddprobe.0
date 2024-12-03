Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3851E284A
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733223354; cv=none; b=ev+0YEPHkuI79bEjeCRUNYq+/bdkUtrW8nDazMUwL0Ju6D8+s7R9xQnZRbRIn8x6EKqcPGKW68okbgSgCIfu4OQxoFtcBuokWlOTxJhKLVDBvdHa8b5A2D+QQJRBpyyKt6nFzoIKvkX2QtseLOVHSs/aP4gM8xkBUWCJnvEYJI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733223354; c=relaxed/simple;
	bh=Q80myQp5tyUaALd9mcZmINmLBmBmbMHTNsiFU0KsYrU=;
	h=To:Subject:From:Message-Id:Date; b=dAIZzmKqabtT47y98dCyhdvxLSOT1L7uWA4o80XvQOSuZ0J56DD7I14pY6wPub/ezX3HBADwn2DDfieckXTAwv6pdWzExbUoNeMrnA/B01rODLjGBFYCc0HEePjaZtj1+rqaLA4pGcQerZRIyL7uCQEgxC55JCguecVTOCKWZ+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaU/wnuo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaU/wnuo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD19FC4CED8
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733223353;
	bh=Q80myQp5tyUaALd9mcZmINmLBmBmbMHTNsiFU0KsYrU=;
	h=To:Subject:From:Date:From;
	b=aaU/wnuozFHoOQlWNNG9jS+4Lu0BVnxaufJf2+LKiTBDCVwlH/SivMTvfhUiXBe09
	 0krhxncsREjlRW0+Fq+m+ocqUwZ6fXj1dWyBVdgHaE2PJHBVZO10zVqErnj3HVdEEE
	 3HZLJuDayUKMhoO7ZuBMSJpr3AxN29A7g6FxZWs1/3W5LrY9GKcmv1jAfExTTKoCAx
	 Mx9fRogFUl1KMHKrtN8+DmHZCAO1hLQ3lwBxASlzec/0YNcs9bV1bCKFG3mcxViay+
	 IL3vl6OXpHT7o0rnn1KopBpMNg0LYkHSv6yZrI0TMioTZhHo6FeNuq8BIBWIgcoW0n
	 NVcc5T/tY5HFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FA8EE69EA6
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173322335364.22478.6627600793690992780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d41d608099e51c203c4cb1f9bdd1d8b01001cf06fb70e2ae458986fc255b031
Date: Tue, 03 Dec 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733223353
