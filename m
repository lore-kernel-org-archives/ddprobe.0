Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD1C126F1E
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723097154; cv=none; b=E7E8veiT0lUQVSFsyigK+HNWqABq9FnabDzFfa6jhPJ/oEM2/QNl/wb3P3YV192g4D0oqSzNXA2WWzAhrO2kmVC4aXwZB7yPucw65XXO78xT5AME7pcgD/bBCTcYQRcHRqWbf3NOlkGVuTJwwN0SV5DZl/5cCwJPJ7P0mjgidnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723097154; c=relaxed/simple;
	bh=QFPwBRbLM21Pho7Z4Y7PGtX69PmRx/VwOUDQnkuSLQw=;
	h=To:Subject:From:Message-Id:Date; b=rGi5vXTjzSTEahK4rloQGdjnF4GEwd/Mh02CeGa4oHL4loiaRqsUgqnihQHDVH/wo1rhT7LlVAAHArXAiD6AhAwPDLXutJUez4gbRgpgftm5JLJcFmezu4O7EMvpA4vieV+YwVGnDq9CTurqC2Jf+UDypbSP5gD81oQo8sDfHcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iLnci8+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iLnci8+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCC0C32782
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723097153;
	bh=QFPwBRbLM21Pho7Z4Y7PGtX69PmRx/VwOUDQnkuSLQw=;
	h=To:Subject:From:Date:From;
	b=iLnci8+mFO2armD0eQY49P8WX4K+a3qMk9eTXk4rUUTPor5WbCZJYdqOWefo2iHyw
	 7kxw/M7iRfPaX0nU2wGgub6C+xQJwmFkD1Krc2lvHbJbkIfn3JOB8CPgk4HaF1wJNY
	 x1KmVH052usfR8z3WQqXE9uvk1lntmQo2dFea6+Q+uLUDUOaQoUFV06j32zKgYCq1j
	 v0G2KZWeIxdjzCUoxxJb+c+dhJfGyOcXFcisi+Z8EVeSbvKl+3eQNFLgpBIUxjf0LP
	 UREfHrKECop2Wmain0hCNFEEM60LHM0uq/7viiO97rqIR6scwubSmLysLp8x7zVeak
	 TBt+xC5CEgUjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6F9C52D73
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172309715362.11956.10400495293523551609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54d07cb46786d1b07e29d00be1f1f174e5b8641c843b615bafe92fef1b3ef6fe
Date: Thu, 08 Aug 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723097153
