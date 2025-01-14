Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FD21CC8B0
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736897754; cv=none; b=LVUDtpppGKEwmBB4qZJ41GRaqp6NNIfpc81fMgT1gYsQibCjKvpLBf+sTjFoo8k+dAEQaM3ZCT0cw+Dai1GrazNOue4IQGj43wFLEmKfFhwW+61J1eo6JVfjsK/fRcqMnAHhDKgfvxsVsPju79dyQUz4GBcwR6tIQ+Eji83OFog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736897754; c=relaxed/simple;
	bh=SXV8rpsopoP3MtOG8PDHbNcT9EEYJdi4vIo7PegMFQo=;
	h=To:Subject:From:Message-Id:Date; b=RPg9Wo5ChMgnqSFXbZo8Bg3mgvpDpiFKGQydWApGVCHyYA41n0XchV0/rFtE11SCySRasMR79S0oAXmzPMNdRVTe8J76apSSkq6j61uByvGcdm1JrMUjSbzvHw1h3d9m4FVQMwjjgcXPpTd0OQZ0P9E1OZdjk0H/Vcjhggvo+kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vtde/Z9E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vtde/Z9E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A085FC4CEE1
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736897753;
	bh=SXV8rpsopoP3MtOG8PDHbNcT9EEYJdi4vIo7PegMFQo=;
	h=To:Subject:From:Date:From;
	b=Vtde/Z9E/BgTitOpm2nu7TOo6CrznA9Hae64Rc/DO0x0Ylz3C/qOY1wOc7uoKvKuM
	 RC48om3IklcELCHMompRK+YhES1jlnOcxjSoQGkeiCCq97838k/EfDtJquoDs3NThn
	 BxLNhAZ0qFnpOPZdnJiiVTuCAW1JLPKAl9QH+d+Uc9RFP42bTZpqHHfyjeTsHToo8w
	 mvrG0iaoNOPys+4q+upD8dSHhSzIqQsH5qfxzKvmMPxh+oWfxHIct/sVqTNXztdok3
	 iexpHTOoCoU3F8XKSINFMJrpofqm2nWJKfWY2HdU8tX1yB7zeLHEh7iydLdR9+18LP
	 NaQ3QjtSPfiMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F019E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173689775357.24366.10990918726921491727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 459201b77c0c0ff523c1fbbe621abad37b01d475306972dc892fd0b21d5d3ede
Date: Tue, 14 Jan 2025 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736897753
