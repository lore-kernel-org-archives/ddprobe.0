Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E33C27B4EB
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747246794; cv=none; b=om/l6EDQvj2lXaQYBdX1vq90m3Shvyb5yRadGqPLRFWaLPQLEvkfnqoc6MpFKoUjtzYGmbq5xrvIpuS1Sc4Y72JLZ+iS0dm8LPEEKU0S/TUkTsH9mVQXPq1pQQeY/fbfQnIJWRGeLUW2G7RyZIawGAkl8zNh73lbU0+9dhPLkEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747246794; c=relaxed/simple;
	bh=WehoFuKYvxM1YDz5Gp5yIqnHr697eAI00u85PExdPyQ=;
	h=To:Subject:From:Message-Id:Date; b=o+1hzgVtrBY4jxiL+zU2eR1mCxkonsTs3CLe5PuwaJoNoUzzXmIiGB0Vk8oJ8rjHx/JtAxTOOPCBcipK9/VJDgUT/oUF1W+Lb7QBJ+CcvOGZSvhS9GGmoKd09TFgbBJF555YM4sh5B+D27d7D2EzCk0QA/fVSzsj9dScFRpROkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SV1ATyW3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SV1ATyW3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC7DC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747246793;
	bh=WehoFuKYvxM1YDz5Gp5yIqnHr697eAI00u85PExdPyQ=;
	h=To:Subject:From:Date:From;
	b=SV1ATyW3Di9hU8fHGOJDd8armIpSDO/v3q9Nl0yollD5oPrDbeak3QlzgN6+zvkCz
	 a2/wAUK7pp/OwWASy5lqH4LdnbY/j129B+sw6f0W6/HD5AQSLpHDSaJ22w83g0L5F5
	 EbZK6UtF8QG1W0enTPo0eZ5oTiiKstEWMk8yrYCmiSk8KN8rkS4PR/uY3W83UQMOSr
	 kz1HgI7fS81F625aB0wGtjhuGZTe7jRTI2xX8m5gsDI+9bFGY9R/cPImlG49U0aMj7
	 6Glh3jtDDT0w5SFSl23hbURHYD7QtmmHnaWClVAQ1tBn4pOLwCXVcURn77e3e/6kGt
	 tafaHVyW1ZtRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6D6C3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174724679357.7073.17949473485710465945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc076e00b78c0d56512aaa94d2e88ef2d1be7aec8c7b5f547284b8378a7c0e64
Date: Wed, 14 May 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747246793
