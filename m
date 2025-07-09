Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8D113C9C4
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752028194; cv=none; b=SB0VuLFEEa+LP5KGG9um7F0YIZCooMvz+2zYqMLHlhPkq7M0k5ZnD8zokuQfhs+Jmr1FFNaWQpR0P3x1JdXGlxvtThii/4S4nqCtad0eJAkCtooGvdeRTae62WcnJJfHH6E3l1FYjCvO+RvfFcQDg9BdW4GajHAgQ4pLlTC4PYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752028194; c=relaxed/simple;
	bh=h3Qn1j324QTBClHydZ44tc1XnlhlVMfkFQXF2nl6vMc=;
	h=To:Subject:From:Message-Id:Date; b=g8HlUDtUlnAJFUQbSYic+Sj81k4XduHVP8stMndLTbwQuUG1pDXNVXFofTG58oXWfvXm3Ew1tdw3/XCVAaLyZUx4ZiFxLjfNmqnT0NT3mfBFnCTA466ZEx5wW8s7d5fQ6IMotjeE1gzTXCSNn5Zp1mmNKwZL3cKLM4iXj78T5RI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iibJRKO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iibJRKO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66D2C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752028193;
	bh=h3Qn1j324QTBClHydZ44tc1XnlhlVMfkFQXF2nl6vMc=;
	h=To:Subject:From:Date:From;
	b=iibJRKO4zQ9OlPyPuLQCXdkHYlJbAVBF/dBU/I2KC2Hu7351aPrxaL+zRzNL8CfXF
	 O061VzK5RP7z7sdSuE9PDue1foFNyLWnSdhoJYzRNl96yQKWJid7MmKsfQbhGilU2g
	 zCykpN1DrBXHTLZHjOX0qyTMrOvE7/XcDD9MfV/ZmV2BfePnyn8U00/cRF0E4XmrTb
	 uaLL/1bM0SWsZUGIOUjhHBpnNJAbDu2bz3OQxg2ZR6d5KEqAsSTAZLmTFfq9YTbqow
	 UjdcZOe2B+Hgu9yWrfdTBNaFzEKVxauTfXZ0uLSQ2lp8Y9w2bmUw7v5z0xhbhMpwXl
	 WDdkFcw41e8AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D1AC83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175202819357.3640.828624295214176544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9ac8d354ad40d3152da5305adfee722120f0133d54d5c964ab67789346a6b8d
Date: Wed, 09 Jul 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752028193
