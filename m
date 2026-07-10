Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462A41A5B9D
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 04:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783658314; cv=none; b=IEqG5MYyW+GTp0n3YOf90wP+A/mpY4Pbn9B/BeA9zHk3U1BBd75fysHuV8iWX0I70vnmIRIhg83J4nEoOW0/2ZsuiaORfXkLN7fAI5YtaeYGLasZR0AB6HG9odVpT2woi4vu1kh0KJHusepEGDKf2v7maPOymwlhVQG3vi04cF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783658314; c=relaxed/simple;
	bh=MtuA3+3dHarNyNC9F12dnqTrURUWkhEKuKM2IX4o+Eo=;
	h=To:Subject:From:Message-Id:Date; b=uSolO+2vvI3shSFwM4RTipSVjGh8hdBvr/vzw6sBFkK0ftefnzk+kiiHSa0j5c9ANL2wWnZBXMpm3SPFrl0uuFuj7t3n0IZ9gQH4z4G3qc2g4dxf+poUkSW/kWh66ePnVNw76UAqtvkfyywYsUlWe1T/fC6+UGTze5zeeKQx4B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IfqyypGq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IfqyypGq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4888C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 04:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783658313;
	bh=MtuA3+3dHarNyNC9F12dnqTrURUWkhEKuKM2IX4o+Eo=;
	h=To:Subject:From:Date:From;
	b=IfqyypGqxoOv3CM2jHWTumFA0TUz9IicuO+l9jACinoOD7WYattl3QU4Op4g5mLWN
	 wilISAfAYBww89cH7B2oDuAO1fdCX41v9lJ+RcYfRwdZqJ28lQcvNl7rlCZHQbhaA9
	 r7RTXqC0LfWeGd6RewJRnGnIAqvGIXEyjE+JDCySS8qDV3WZtj8OOp+LnJyhUheW00
	 DTT2vqh77+0pcnIZxXl7M57FzhBvjsn3g0qxoeMLiYDfJjyDGTLH9iwTduF1tt5YB+
	 4mQpjpNBBoZr9BMHUuYYxsKSf7NZMbJAkyysHTHF2YBCMyatp4s8mmEil09C97H2pP
	 QsZNsrHuuzZmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC61C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 04:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178365831369.19361.18338244680933951929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdff2c6c801641d929aae5bd56549dd706242ff38f4853c6d582452746e0a0db
Date: Fri, 10 Jul 2026 04:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783658313
