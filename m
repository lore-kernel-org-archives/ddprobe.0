Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E45519F43A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753291194; cv=none; b=K9IwZ/G8vMci1K0ZL0Fh9MOmSgyoZdznli2lFnLMjeRmObO+cHlW4r6Dbmg/WWheYeWLgaIDewIyMfwX92SguMkLNMT7tr+8rvjjJFshipBhGBkvVeY15I3HX8LV258/82v1AaGwho4s9TnsF4K5oDmboQrDSACDqCNyFHZo1JM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753291194; c=relaxed/simple;
	bh=1R1tWC6MUX4GAl+fgnM5OIZIUnt6oXhDrpvB4/5kQas=;
	h=To:Subject:From:Message-Id:Date; b=hBaBvbDJQBobZNJpsxYVd8qCaoEEqaH/sBj9VvX++5NxrxB/fnLn2CnBf7QpUiaj2yYt/gj3dHfFiuYqLJIGOONnJG+fZ7vu9XzWSdfKNB3MiCTqNXV8BoHXOuKT4h7/s3WKro38iLNrQV6uS2Tt5B1g3CdPkcjGdulnF1WWtLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MBqUneOO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MBqUneOO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A835DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753291193;
	bh=1R1tWC6MUX4GAl+fgnM5OIZIUnt6oXhDrpvB4/5kQas=;
	h=To:Subject:From:Date:From;
	b=MBqUneOOhFa7iUmEYHg2IsnqB3WZRPqjzwSpkmag6PDU5lXFI3vAWQFYA452Cf+mU
	 5Sd01sMLgK2+2/FRiPW612pJ6tQaS4e8N0Ki14co7cUv7NgMQeZCmZNGLDXI3V7wcr
	 hgsYqk8guMQMWtHB+WcsoTHSyJ88WsM2j9YCWia+cxnQy9TSnktXO/wMfzyCUPlgL+
	 IG9+ga4tRlAc/zVeIsEgKJbVu47d1gtJeowcJc9uWoxF03tc/mdL+V1nQCF8BM5sNN
	 7qEI8oR+3On4T3iMteVX8/QOgzEyGNqRInt9eKNQARxaMAcuBdFD85nwZ7dlNYG3w7
	 E11ceuzHkD1Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EF1C83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175329119357.22649.15736700895227786237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97795b8468cc50b3785975dffde95e914a5ab5fd8bbaa48526c2c4c5af3433b6
Date: Wed, 23 Jul 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753291193
