Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465A43A9632
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 22:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774910095; cv=none; b=fVZMFgloBL1RZDo5P7FPg8ZxrRZNtNqnrq/2NSLLwy2ekczFvx+sHDIDd9pLdkeIQHB7mXb0LHT67c9BpxOfn0xc1zd36kABMcd3CF14dGH5z3Qu4tqMP3VjoX5yPzSMolP8IbLExm30nKWtF+WCzSL21kCKKv8rWq2XrtR/LA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774910095; c=relaxed/simple;
	bh=VaMn9q8kijN1FRLMYKxOnKTV99/ibp/5uEjB8T8FfHk=;
	h=To:Subject:From:Message-Id:Date; b=swK04C1okFgpyhqq+nWRMG24eCj4OJSbrW1FUGga2F4UtqJuY/le1UPvY8B+4Kxl4eoUoF7L8wH/wvn1QuIJnRzcW640dQGPsn94q0KfpdU9IkR8YKLpIJCfd8tYkDyUNpl+iHEJ0nBBJXnSEeOoYYp7uWrIYD05BjCDhs4kHhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P1B9qzHa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P1B9qzHa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91C0C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774910093;
	bh=VaMn9q8kijN1FRLMYKxOnKTV99/ibp/5uEjB8T8FfHk=;
	h=To:Subject:From:Date:From;
	b=P1B9qzHaY589GBjXtP4+SDs8uSaotDh1EIZ5oLRw2Zg1MiwMpKquBeY8abyrx2Nia
	 YVURm4k/PnfJJd2qRcL3be9qKOsbSQxzte85sMpjMsk4wL5yesjvcDi50EpZpv5W+J
	 Yy0SeElsBIXUn9J7DNXk2Ky64dW5cXqonR2GEhSJX0NU8HHfd9ANhTE0vHaONHM8jb
	 VIe9fCc5mibaAhFhqAuM2IBAR2KYws3S6wLXkblhuEASv9hbhUao7YDbBzU0xORW2i
	 IOUvSnEix4px5qL8psm/V9XZpsVp6E0YdE//J4OYWJAE88cZ+WAjZtL2AV5HPplqCV
	 AK17gwRfYA7JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966B71061B24
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177491009360.17804.3544890758925413078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c90048b61763ba77c1809e0b415e34e6b8ebe2d60123a936fd8e70acad2cab0
Date: Mon, 30 Mar 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774910093
