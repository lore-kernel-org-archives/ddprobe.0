Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BDD55E58
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706523497; cv=none; b=lkUHU1/Yk6imWNPg0E1TnPbYcyA253tBrAX1WJZJZRiSFgunsaiVFOt/gmm1OM9eRsx/IggVa1JbjyOLBRwKT1WT1e80yNOiiFRloMbNnkMHcrHWcL0d6GAnPBFFe9bFxTKgXfzwB4jF1RBuhte7dZNuPELNBe568d5sCTzOSu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706523497; c=relaxed/simple;
	bh=Mzj8/YeLOU7fcBvPixIFWhpDCwg3De9eNooZzP/h1fI=;
	h=To:Subject:From:Message-Id:Date; b=boJkaXQJZ1lWzFc4Q90TGdYTq4kHuu1WTsDRH94egkvG0wUzLjmb/3h00gB9Zwt1jFneslkNT5tgIDbQpDi0ghx6PyYkcMoxnnJ9BoD90JgAvy00W6Nw858ficrQB/m5zVIhge9Bzc43Kd89uHHZukn7FcsAo8iJ459CDvzJUfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEFzReXI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEFzReXI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EA73C433F1
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706523496;
	bh=Mzj8/YeLOU7fcBvPixIFWhpDCwg3De9eNooZzP/h1fI=;
	h=To:Subject:From:Date:From;
	b=OEFzReXIiPEzTTLBr70M4x3EvdmkQe4RHlaGu4NXL8hNGOagtNkvoFf0duAydzhvN
	 sTfRMoRelL75iDPZujxvi7247eLlKO8qmAzsHGchRsE5QqfUBatJ6tTiSjcvPcXiIQ
	 1Kod9FPfBbBGGddtK1DZrUvzg25UCPuRW68SEoTnJzw/GOt8jUuZhogpSnOXUoYdMs
	 fA3Rx0et/NgwJTgnagXoIn4A/U+lS8H6GOqVH1s3Up+YyZvKYEa1Q/I4Loizr0V4MB
	 TwutC/qrNmcXKeaArzqEzTKylu1YiCCeR3QxuYNzlVY/2mFVWSsVmsFfvH0C1S+E3q
	 DEgHJ+DJgZR0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64391C47422
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170652349640.23549.1757689145359710939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 808832c618a3fe237c9311277f8181873dbda1bc84d4544e6fa8461010c3c104
Date: Mon, 29 Jan 2024 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706523496
