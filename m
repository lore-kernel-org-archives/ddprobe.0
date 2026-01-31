Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2D7376479
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769896434; cv=none; b=ktzpuxdGs7xLroR7ixia7FD6TrGrlc3mshB76eOkp9Z31dd9xhC5KhFl1FlRiHn5p/dPHMEKihSVpNyzGnqhnk4+fYiDjVCwPHBauD2ARILrFVGPBv9jzO/0OB7Wh7puI+QxjgxkkRtrxneB71zUYWE4Tqua35uY7Ui+IG+Qmig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769896434; c=relaxed/simple;
	bh=oatlpPY7HWfLP5WSB3uVRy65wt3bt+X5SZoxr6QG16c=;
	h=To:Subject:From:Message-Id:Date; b=rMs6xQ1hqRSukzq+RS4S3bYMfspBDm+RWjoHLaCnNj2XMttlebItnez+3WQ31PSxtO2Y71FP2Dy3uCpDn3kAQy9dXmP1GgyMPUeWk/bq7rZ2Dnd6zHo1jD/Bcsbw+/tK9u7nKxmMgisKMVEJsRgx8bpffdV6DaKb4pkdeQ6nmVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFN6y6ix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFN6y6ix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4E0C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769896433;
	bh=oatlpPY7HWfLP5WSB3uVRy65wt3bt+X5SZoxr6QG16c=;
	h=To:Subject:From:Date:From;
	b=CFN6y6ixtpHCGaRcQouverkptil15gOmVQWvmwLATrCbFoDeTzNO2uGMdDHhfeVbi
	 3F+Vr5kTjU1ICN/v+kc4uEVAk40uxCkqGwBVBJnfsNPYfW3pea2zI4+A0nKAsvzk3Q
	 on7P+Mb8Y9rBqziwKnBfffIfszezzmAFkZ/PsH7Gpo5sL8HRN5I0UiD4PKf+XrgJwE
	 u6BTd6Yrb3xAmDTKwQZvRvmgZSTRE+6tj9Sa1ZbL7QqD0mPfUvwzDy+af6amjqnPco
	 hoF7egFWLtaVvBBKIk3tn7o/eQJALmo4WFKaHRmcPSBUSkcpsWeBS0O2VhTtleN7R7
	 P01VV841gJV0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8B8E7C6EE
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176989643357.26618.298093451759983400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc269f99c9edc15248ec84e911584183c02859606960fe69501433512503d9ca
Date: Sat, 31 Jan 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769896433
