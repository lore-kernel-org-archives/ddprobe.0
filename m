Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 657B93C3C13
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 13:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781444194; cv=none; b=JozodzZvMyvzoZHL6CPqT4r7a1ZIKkq4FKw0q0Lgiy3GI5MunMz9a7L6m1O9rJtpQTAHrHMu/4tfay2cxXbglg32Fkh5tDFnK9HsMGIL/b/KSuyXuFaBd2IjHSBEwBM6WYr+qTVHYaCxkrxeluXPO2LhhMMKnDJE9IRFnOHN7R8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781444194; c=relaxed/simple;
	bh=k1+9kFizlZ3m+AZxozAxUDErlT3XjcZpfEwBl50zQ7Y=;
	h=To:Subject:From:Message-Id:Date; b=XR2CzMOaqZm8H2YXHD2l+V5YBjoYIXzoh1qEI/9zNzNUJv2VA8+J8jVa6XALtL/Mh83P1Fy7V4jYaPuPWvb8heOV+GffkwDR0uPHYtkmpSkxkkf+l8HVEr2iicdNsjuTFAmuibFuzDxvSJiwofa5Hdp1fFYsVUMm8uJDbscZ4qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4u3+/BD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4u3+/BD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD5BC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 13:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781444193;
	bh=k1+9kFizlZ3m+AZxozAxUDErlT3XjcZpfEwBl50zQ7Y=;
	h=To:Subject:From:Date:From;
	b=f4u3+/BDe/AIkTCxl8d/RC/Z7Qmth6R1lFMejmwmYMEHcL+9vFLCFCJAliOyYdNqJ
	 zEbfWMJrW4tnpsLZldaowQtQTI7W7eZ2PWn7clLoggDJUFhEOx+/zA2r6zRTsCV4Zu
	 wC7UTytO644IWc4RBB8gqKTlf1R/x8CSw875d4S52kWpMihHprI+SJTKJOQYzL6hh3
	 gBReUSNK/Xuzz4csdaLbBo0nxpNUu7gda2sexLJFvoqK0OeoIs60Bq781txq+op4y9
	 Il4esLGEsJYiJ8/b84PLfwgLD3dcW8ftmsO2XRSB3FqZsDi9a2ytn8XleITEbtPlAM
	 xDe0N+iRLuUqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACACDCD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 13:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178144419369.10591.11755299675740067902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a87ac251afbef681bbd3c7291ea133d71f205cbb53fd99bfb4ae021595401471
Date: Sun, 14 Jun 2026 13:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781444193
