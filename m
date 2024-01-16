Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A071D68B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705447697; cv=none; b=QS4lHRMuYWaJl7lX5Hjyr0/zC/n8Or9yBj0xj6w5ckD+CnfNd+UHbLex+FjTQhEeH0zc7hYLdLsb1Y1+0kmlhqGmU8VZM/jQ45mgUxFjM1vFU2W9JcA++Gbp+hz3Q9CQP4g6BscoHy6SZddkDNbKCToJo74k+CPFdq2LGEF5VYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705447697; c=relaxed/simple;
	bh=00d8xQx9ca3Z3CQoeoJBXW093VeLZhtxrgNtuig43E4=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=D+B86iD24i8wTzsAbzmRsnqcDcOCXkqsjOxou3kLQqT1pRSE3LiuIikpoVxmVeWtuUvQQgltOW+kXilJ0x2qkwjk/rpLoonp2y6YPS3GMmcQDirvJMZabOgM0U/oQY0RZyYGMAVr4zRCOssXamiRO2Uj8boAB5hvlOPh3p8x9sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJ5dgAOK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJ5dgAOK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F5B6C433C7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705447696;
	bh=00d8xQx9ca3Z3CQoeoJBXW093VeLZhtxrgNtuig43E4=;
	h=To:Subject:From:Date:From;
	b=VJ5dgAOK4/Q64gCQ2syvX7ZDOm118BR+qOd45pZEkUxCkG99zoAEE8jA7HPgKFbPu
	 T3VlIYkueUq9xyZYZdo96rQry3HnFdyToHHnXR7018bIb2RfL67WB3azcux0/us8Cz
	 gk53QHDS+ccZfyBbVBUk4wF5iCJ7czau4cLhQGcXyjQVNq1mxVrprF2c46V8YDI2Il
	 AfdTK9Pe8+JWSL02r3a7VilJuBDwJ9IjnDNgLky1Pe2NabkdkxGGHWyRwf/a4bgWJx
	 HsYAynhtP6JWWx6KvvjJNzLbkBRtkDZi2B2YbVxx1tpxD30VKI3Li0mGWONFffovGd
	 MZDJZcAi2aF5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 634A2C47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170544769639.28812.6320571243024658516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b84f84925e0d5f65e31ec6f3f974634e02db96bfbd3e4128ddc178ba36031ca
Date: Tue, 16 Jan 2024 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705447696
