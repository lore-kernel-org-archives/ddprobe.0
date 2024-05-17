Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6423A37149
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 15:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715958143; cv=none; b=S2v2Fh79zOTIrznAMDqL2CkUx6zFvrGoM7xHJ6qvnuAyBprjX88dB/2kpuLtkwCDjuH1aAcN7T9QhxtnOW5HP13xJPITMeGlz+0BespwHz0ReXVNF77Pmqx0yyJfR1eH/1YFPg5UnEcSIldyk/4u2s4JZEHjnWLqls3PmtUeDdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715958143; c=relaxed/simple;
	bh=u3Rk00F2dGuMekZCWaw9ecJvfri/xEN1A5e0x8b8gx8=;
	h=To:Subject:From:Message-Id:Date; b=KlNYzOGL1Dm2AWVP9oXZ/mRQhPN45KWf+18oiqgGgPR2bAhCwviQ6zY14MSF9h3tdP+pTnjkFkBhf9H5GRHfDAfsnB8QqvzrNCRv+YQIDPfD/Eq3UfbCNzLp5CoTniqMRg2UPt0IW3AfAKdww8dW4jGRQ1B4+tM/l053P2XkDZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lR21KIno; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lR21KIno"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE2F2C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 15:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715958142;
	bh=u3Rk00F2dGuMekZCWaw9ecJvfri/xEN1A5e0x8b8gx8=;
	h=To:Subject:From:Date:From;
	b=lR21KInoy3FJ8hc9L42j3WgOjspGv3vltzfdSGyn5zoSN3L9s8LBZiaUAdZ8swZ2W
	 KW+DCoT3eLD8lNixSvXorCEmjQvtiu3fAVHNYedfcsH4QGoXs37iLn8bpt+rEf1Hyi
	 Uk2jUseSLsAM+oIMRXr739p3HjccP1X+h9g4WvBFyVc744tb6/SXi8l01pYhE9ipfz
	 FyU9HkBHhYQTY5e4v53LMoqHVxkBeC0Me0IeeLsEWN5aRBoVcFmWzIGFkJFXnv1NEG
	 KeuiSR5hUhbRJUHn+9j+cJ5e6YM589FFrXf6vFvQvwVUFVabA3v9UGpQPKLZxZIVSU
	 EjI9YJDEOD8UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB18FC25B79
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 15:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171595814279.31194.15918092702799365520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a11f89e1a57a7511cbd10877c74def2bc7efacc189da0b71c12af11d6799141f
Date: Fri, 17 May 2024 15:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715958142
