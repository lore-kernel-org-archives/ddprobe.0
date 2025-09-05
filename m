Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2D741DE885
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757034593; cv=none; b=NvYsAO0umV/CVOZqFWVblMf/4sa3HWjBiHZg21D3alEf/NUHOq6zcX2brDVDzUwad4kacN4BHK9BSo7hpkpIvHYiezA6MtEAw6j/OH4VaMrHad1wRpFgJmU5IrbfEcg25Tpz0m4p6CVB94NtNBqTq/imOYRm3Fsl1PB/L7aqkQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757034593; c=relaxed/simple;
	bh=gsvpiMuHFyGVtQFFuUEN8+d67U19ypn4VRKUXU03+m0=;
	h=To:Subject:From:Message-Id:Date; b=MleYhzwVTqVoVjQrvDOkID6dFEozhL9SlEhHvns+M9Rre6X9jo3d8Vsdr7r3tc7y7OJNTi7dowKuHx7McX2eGImVTt8/Xgqw3FT63mb583kIsqwki6I86SUC9a8VuSbSOAI7PQcTFP0vv2x/iSeC7Dy8yAXH/Ma8jKBZzGDEAMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJRPw8gr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJRPw8gr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0479C4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757034593;
	bh=gsvpiMuHFyGVtQFFuUEN8+d67U19ypn4VRKUXU03+m0=;
	h=To:Subject:From:Date:From;
	b=NJRPw8grlLgycCgov91M6A62ChhuMSEu3fIuA01QbXnff+Xm+r5cUgT4JBYhaPkEy
	 H8k6AFeKqq42OxkI2NWbz5jt6Eqmxz5Cr/k8UOiYtF8XME91BB9NL7re00S6o+a3mE
	 22bqbmVTKuFzoE4OddhrXzR1V/G/QuwSNneqWOM0VCLGda+mTbiNpCheCCeJb5EFhD
	 mFs0NNXiLkDT82Y/KSvjf/4jNFqPxrDa9JXiU/pJageZc87Nw6rp0LhmJdyHyX/OhB
	 XIE93RIX6loZ1uX3VBq4cIgsK3hHdfimIVUGdmrSLwfPhERFgYF1oZF53PX3Mhv44J
	 pRTcYumjJH/Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F192CA1016
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175703459357.16147.17454262907292508684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71352bae8098659e2bbf0a21f44fc4bd5838af7acd5607ca461b0567c7dd40d1
Date: Fri, 05 Sep 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757034593
