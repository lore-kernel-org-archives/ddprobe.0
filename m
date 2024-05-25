Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E39364A
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 00:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716595403; cv=none; b=LFofvJ8aP84pHVMZRx+X0p1M79T58V3Jh+ppmZz72OSlFrWyU63zjI42v6a07A/oPQqa8MTgbfxRLw/Qa6uvfw6BNy6kJUHr/EsjbinSgYoFTjM4V93Ln/tIKwm7xA5MA5qEmm4seKxqxyAGIFWDv7pR7RhmerAN3ZTf5wNKpXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716595403; c=relaxed/simple;
	bh=BvRF4zNBlZPwuOTZgCMJJGsiH0EhhH8gmrTnW60vp24=;
	h=To:Subject:From:Message-Id:Date; b=sYxTvyBWCHYHRm1c27TQfmTc4qIxJ6s7ocltuQvI6oNsiAsVUAFfsT+Qb1qOwox3OzvbO26KjJsZU1wWdgUdMX4mhowH269eFdtHiUZX48N67SrrqOBYLSwmlF27UFwRZ4+EMIKh0VWEAtBUBxQg52HsbAnyBe44L+eh0OA8S1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AMNUUJ/P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AMNUUJ/P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C11C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 00:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716595402;
	bh=BvRF4zNBlZPwuOTZgCMJJGsiH0EhhH8gmrTnW60vp24=;
	h=To:Subject:From:Date:From;
	b=AMNUUJ/PDpiilglLgvCd3EO8Ig7ngNQDu1toLJrR0ecN9uS4QChMJvHx7kUM01RTM
	 nXWVm8Eu5cGTF+J6PXCMkfNIGgeTb832F/6tlL7d6lurSb+eBG1XN6e8lz3PmARAH9
	 hBuYOBpE75Kzm7WYx4QhLNcxeIdmHoiq8MKng2504+8fe9TpQGdJMQVAFWj8GMDbrX
	 qh1iHFC4PUlVega1Vvbhe1iKuidyQO445Ji74CNRMLyHsgmCFYvs10LQv1qWa0sbGD
	 8d7JodjDwgsFSH3zE41OOQiaY6vnZq+BFDEBaK05YAy4nGS0s/Q6TPRSYPWZKcR0v/
	 BxRcxPzy/RNJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF574C25B74
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 00:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171659540276.9262.17613281310729327494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6566d35bb10601e7902c9d8a26262788cb67db8da22a12f980decd1d84ca190
Date: Sat, 25 May 2024 00:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716595402
