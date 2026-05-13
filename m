Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E683346E64
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778646634; cv=none; b=sFa/Dx9Sw8nyErhK8dfRV6F0p0VitNj2SaxrxjxWPJArqBNOU0pmNp3A3OF/4o2ntoBYZ/kS7jckN8YzpnuUYccg0pDFo0FyFGv8MhYae96kgBBqwOQmzw3WPcNoJdbSCLqsWhjB5hxvbFQQveDBfuHBhFw/BuUflgkeRu024kY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778646634; c=relaxed/simple;
	bh=DcJn1mJXMW6mDnuvSrMobBSQ2hPmuqha6q9SB0hntH8=;
	h=To:Subject:From:Message-Id:Date; b=UapSsYFX9i/+Pfi758KHrSTiHmZA1E3gxqrf09HnNtq9S19n8EpYg15s7zbGbHYOUsv4BfG7rECEnf2SwbLcmdcjxWm6EvD3oQSZs7wwnldpP9nhq5VqhhF8cVvylaWye2lkt5Jkci9H0nPeicMeuct0Ecc6JrDOu3aisHIyVZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PDvSSbDp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDvSSbDp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3949C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778646633;
	bh=DcJn1mJXMW6mDnuvSrMobBSQ2hPmuqha6q9SB0hntH8=;
	h=To:Subject:From:Date:From;
	b=PDvSSbDpfZ3UzY9YlCwf1/+EIvMGjqlbWSgXJMnltmtygnXZCoOm1e6lj1lj2xuqe
	 g0Lb245uDveOHheR4gJevqTpZaXyJb7lrOS++uwyyKr55nkhaClL0FfjyFVfd96Lpw
	 LZifH30+YWJBjHJh6HpBUIU62oNPKMO+dpIcXxbtbZdcI/MEztl4RtF0OVGFYvioYH
	 ao815eXTEhabnuDproJu78uMxoW6r7dhK7ZEu0rQJeyYE9L4cN0Kg05f8iJdUCH/rO
	 jYjXR3zKNKE9vzA/YtvLHcZo+g93GfMyNdqCKmcZuNtfows9tQ1g1enDZGiV42UhTo
	 vYCT1QwSbvzNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6475CD484C
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177864663373.4499.685023287368533896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f419e459c41cc7bb57bd937a0d0e43d524063ccf1f8835f1dacb46bad6f6d546
Date: Wed, 13 May 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778646633
