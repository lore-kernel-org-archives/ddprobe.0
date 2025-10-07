Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C9B35972
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759813194; cv=none; b=oWQkdbvEIX/nZYvaRdbYnliUD0+92bWBsw4LDWKb8wLLwbEin9/YOS6ZQLcd+kxTwbnXzJljJccPvc5QXegi/QfIE6lQTDkU18Ukh1lSPmRsVhEU/C5ZXakoyenR+7x3iOYd9ICB48r5ySefc+8rBdskwAAtIx28XXvNa4LXlfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759813194; c=relaxed/simple;
	bh=9PFuXoggyznuNggDGn+sPmvEqL2osWJWQu8WrZYEfVc=;
	h=To:Subject:From:Message-Id:Date; b=g1ASOvFqyWCtV3I8PPg36npvoK5KuYmaeWucAkQE9d/E6ALca8PN8lBcVFY3OS2Y+p+rd1xgbbKAlGfvRxhOhl7qMoRIXL0R/u2bQloWWkO34aB6HXxX83skw4CKsnMM/8ERJ8GSDzdt7lRsPMJBGBjvif+aHaIn62cLNKXLsNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ddsCdOL7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ddsCdOL7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C298C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759813193;
	bh=9PFuXoggyznuNggDGn+sPmvEqL2osWJWQu8WrZYEfVc=;
	h=To:Subject:From:Date:From;
	b=ddsCdOL72b545brfXGDxxroh3NkW8222fZT49S5pBgiArbIB79jv/bCIL6lNYuSw0
	 THiy6YFs6xbefBxaRtTEAq2qHtZhn+Zux6d5KIx4PKyUYpD8FM6V3WRU3W4m3uLP+T
	 KA8U4B0sjfwUu9rK0VVN5LEMYOCvRvD7NcAceXEGm0RQpEDVvNjrq9nIbwtJRobffd
	 +p7kZgPGxyKrsTkJSK7uJEQRUJmmd4aPhrcCgcAzO9IpklZVkfE1OZhijC3zqXnx9z
	 1W5tGsHXjhx2XPKRb1dvSPE5OzdPiVML4xD3uQ1pYv5F0+fgLRQGlLOhCtofV3Hz71
	 S6H0AwbUJ3hmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E21ECCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175981319357.24702.16240817665256954970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd970730d3256f8b77a69a7a8eb609174f6ce14370f6d2e757f920684c740d85
Date: Tue, 07 Oct 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759813193
