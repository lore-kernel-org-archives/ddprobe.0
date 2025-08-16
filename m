Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1939B1E489
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755382194; cv=none; b=tXBFSfJoaG+hyoOcKD3giYKFvplJAtQSWkUPCOq0r2Kfhn4mcmrRvq7NNqsZYV57r6m7v9xFUqdWisgEtSVxOFPbTPMzFN1TJ2FAV4hr9II47z6nlxSFg83EtqXY8AplCA/fh5rfVmSudZzEYUWZU3dSvdBwjNd458Ju/kJxpfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755382194; c=relaxed/simple;
	bh=sKpe0KTpB45bSsVKkBzn1C7wYH0MY7smOnAhqsllzGk=;
	h=To:Subject:From:Message-Id:Date; b=QGfx/4SPMMta95zciBGsrGkNQ+OIvv0rcnLa5WyjtCyRfIv123gbDOi8vFltswEYyIqd476Zyoq8MAxcQ3f8VNeT819PCeb+29R4eTwNi4BllviVycbqpWbk4jIFNeEhCnCpj3QHzS+z/1uZASh24Bulohjv66MZz5AiWhs/oxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K9mXzGq2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K9mXzGq2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3603C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755382193;
	bh=sKpe0KTpB45bSsVKkBzn1C7wYH0MY7smOnAhqsllzGk=;
	h=To:Subject:From:Date:From;
	b=K9mXzGq2dmkjeH1eLscnO93glkNxDuBnJEJDGP52WeRlGkwy/4R6+s5mFTYcKpMvb
	 X7NrWXDHyFzT8dQ/gtRycdRJZJl+j645RVHG1Q6+5kccTLztL5bPo9/tq4rB/SGpfO
	 re6fdislgJUJCqYzjhMohHITlN7KqFme6ZOiDkEDn5Xk9q1tdm1KwbCFKkMgzSLr4j
	 pSWX9GY+88Vc4C7Y3qKpfpzVFGUHEpmw+YviT8ROIG8leMAVE7ZTHCFaynVRaOL1rv
	 oBqTqs7Lt7yhmd8IDUCNFN7dLcnM+QTqKnhbqq/ScDwSSU97WoGFyZtpxNByLZezqx
	 0tjXM1eOjnNMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E94CA0EE9
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175538219357.13896.16028781969333235982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1105f7ae25b86aeb1c49fd75ad16510381cb8a440a46150129c65f1ee7d5d33
Date: Sat, 16 Aug 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755382193
