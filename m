Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F52156885
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 17:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740071934; cv=none; b=DFRppkAs4gRaIep+B2OP2tCXmZe3CDKAjp2GLG7hkS5OYBJi3n2g6Lb38DBU2XFYT4LfLrvIUKT4Y2eXerngrlvy4OiunahHj9+OeaMjbUex4JJGxc/Tc2DcjX0WfTCHK4/mg+4IkfLO0Q9Zuuq3I6BL38J/Xwn10GYCXrGt5yU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740071934; c=relaxed/simple;
	bh=TLVOc1CjI93ZxpD0glf9aXotVT7bdqh3skGmqerX0Uo=;
	h=To:Subject:From:Message-Id:Date; b=m4YTFE/YPgurGQBV+CBFQVGJmU72j8IlBPdecZcmMCdrhyhCAwJFwSqO8cKsm6a9n0wMzmssAiym9ftyyAujv9o1iM9jL4+zSCfvQkBbKWz4KPbCotwWT3KBCBpRXLz1BRo5Kv+KaLsZVaX61jDnteMluOHeHjM6CBy8naJgg6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BvjGOoX1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BvjGOoX1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC46EC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 17:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740071933;
	bh=TLVOc1CjI93ZxpD0glf9aXotVT7bdqh3skGmqerX0Uo=;
	h=To:Subject:From:Date:From;
	b=BvjGOoX1CQs+eidu+sMMlxwxwr1KHW1YwSdvOv7GF31WXgdub5UJnp0VZevWOAkeI
	 w9VNyLKE4n+YNuJ56oNrmrBN6tu9ldtuhN91VdehVM/zYA82cszEsWG9FuaIyCfZJ2
	 LCEq1CYGYH/bk/tzmdxPGR3RZr2ftM3agEOH7nylrk9krfqrHxhKG2iRK44dZHeadw
	 UAyHhX2ZQYpPqbDA4Fz86EAaB0Wup3lksIC8MRkSvFUEsJ/e/kWJ1T8c4bf2h/awb1
	 G72xh9S/BDW4Xm1WHvNwN7wD8r1KPWOb4xR+tGSzZxma+Qhormf53dYr5L34ev7uFp
	 BgpbAd3ipNPyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0A8C021B1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 17:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174007193362.32005.6991632321617323515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d68f1a9051092cc40d13df854de4e2ef0cdcf2523c6916b2af52e28804ad40f
Date: Thu, 20 Feb 2025 17:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740071933
