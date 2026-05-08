Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4D9E2D8795
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 20:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778270853; cv=none; b=TMKB3g+mPjdeGOY4ZGU6bpKl3riM9QeXHKXjBL3CNYCvZCghj8dDXKM57d9LymsXHGNOchoIwmeWMAOa6BIBOrcjpTrDEwdBH7nyT9Wx4uLc2znwWDpwu7GiTr5fkPAx6y1w3GxKyszm51HmsLgzz6x/ZVUVgh7ynexobuve8yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778270853; c=relaxed/simple;
	bh=Oj3p+UVx0puiSIbQ5jRA7PcwWelHAHm/Vp1jTuLjfuI=;
	h=To:Subject:From:Message-Id:Date; b=ewwsdrmHkSWGPRibkBT/tBHeNKv5n+r7BnEQURchGvVZZoJ/StlE0yir+9u/VYHM6DIO/pKAzYbm72jLBH823+XXvcltd3ZmWNlSRVA22MFxcMLSIEiV+CmcgRLn11zCJ/VKn6WbZsUFTRVtUvHU9+C4JOmz59lWrRPl7BlunVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pA1eegzc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pA1eegzc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9343C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 20:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778270853;
	bh=Oj3p+UVx0puiSIbQ5jRA7PcwWelHAHm/Vp1jTuLjfuI=;
	h=To:Subject:From:Date:From;
	b=pA1eegzc9z1jJKQPYljH2R4Dk6gzBOjqsxL8heAn3iXL9ijujjMl6Y7OG/aM/JmPy
	 jg9pJ+/a2Dse3INrZ6uatQb7mpK4FdJexumZ3nTAeJRL+f5O4iro0XqaTMioK1caDR
	 yqLea2p7gxTOtjYu8qnrVGGSw5SfNEjt7QlPgLxdHa8HpTYaDdGLlzDZYHPFwI82ji
	 t6Or0WOmEAJj/ZEfNEcnfDY8jhR0XdO/tntcSxnZ5CtViZ5w/RCvQt2/wDDvsX36od
	 FrTULpjPzOCvKruzvwxISBmV9wen90ii6BFFWg0X8auUKjzEl9Rdx2zyVDwP4P5A/E
	 jw9tiQSLakuIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F34CD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177827085368.23520.17211929428459633309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 748de6029aee16254e65499971097fa65a19b297ad40c8278dea4d33d7c4710b
Date: Fri, 08 May 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778270853
