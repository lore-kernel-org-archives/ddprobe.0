Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245561DFD1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721915154; cv=none; b=CK/PUkZa80boEIuOFp1UD6tnYRLYirl9/m5+fXiCFg99pIFEGV923PPuZyTQRYE/0bgWkfJi2b6cZWMDOXYiNSeXdmAlkEC9H83XAbjmcGyQbVp58gFTNI8yw8lsHIRfOBLSc1cQINMQTVnMV8W4zX8NxwgAcw3drD0IothXXyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721915154; c=relaxed/simple;
	bh=NCzJyTszUAe7lh89XGh+uHdDHsiYDwIMCSMafqL4XqM=;
	h=To:Subject:From:Message-Id:Date; b=LOphs3Dil6wWlCmBcFyJB3cZqSKaTHwcrUIeopubv/Vlfa72K6fhoPCBTbhKAbII1o6HT9ngvDHcHkEGH7eIDtwi79VFO1Q2JB17wMv2WNH6TFnnaM5S9/9PRZvm/qftzd5HpvJetI96eOOUfiKl3EkRbzrWEIJmQkM+t1R/kwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X9xVq1yI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X9xVq1yI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D29C116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721915153;
	bh=NCzJyTszUAe7lh89XGh+uHdDHsiYDwIMCSMafqL4XqM=;
	h=To:Subject:From:Date:From;
	b=X9xVq1yIHpyO27kW39VMa3hwHnTu8Z4/jJh34OiAi2rVwSJejDHI+A0nv6zDbY9nT
	 pG/pItRzVlESc0fKwm2FGGI/r+bO/q4TpMX54vNG7Rwr7Yd2oTNQJVRYabKqdcq5DU
	 I9QrYvq2hQ2HE9QiuJ9B32HByNNtrlR9+JaxXIOqEnynSzwHoGTdO79+/Tyy+Tdw8f
	 jo5qdWAfR603697J+nKTSCflLaxrGyWfVt9tv/NJ7STzhriJ3pF7CibS9KqEuRClba
	 NKjbosUSJpEdi4nU7ePbFlc1GxwPuTL2yXxym1ubOClG/f2JyM+q9N+oTlo4VgCUgz
	 AFrDrpUg7hRLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E7FC3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172191515361.10023.7248410243811624162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5ded201308ac948f4fe54aaa8af1bb4edacd66c2675c50e78a9b888af9d881c
Date: Thu, 25 Jul 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721915153
