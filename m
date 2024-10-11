Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9C4405FB
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728658554; cv=none; b=jGuG3ElMWUHX3oorEFZFfV0cidD6lfmLO7YwPbTNJcsX5dC6BH7wFR7Xmq8ASvFaEA4yUFnmiLpBcX9t3So9L2ZLoplDq49L0giv0TweCJkIHVjjFX1NnykohdD0m5ymbXo3YK0MGGQmFMm6M1i3HBkp8cLPVmuS0K7wr/MHgcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728658554; c=relaxed/simple;
	bh=MamGrMlcH+zyzPOXRy83ZrimWgrpdAAZPWHrjhRtoEs=;
	h=To:Subject:From:Message-Id:Date; b=WkJa3KRPxxQpNc3UdQ6NJL7M5aVr28Oo/U45j5XytibnwopOX2AnJn0WiQjvGvHASTpvH4pB9H1ByycLDke2Tf9izjf8sl0/WG55QGYc+LkS9Ry7t09oJNP3FceBnTU4nFCnZd3PZP0LQAMvYsMDXAJaRNrp/ieVLeps9IJGFWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B58KuyZH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B58KuyZH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6394C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728658553;
	bh=MamGrMlcH+zyzPOXRy83ZrimWgrpdAAZPWHrjhRtoEs=;
	h=To:Subject:From:Date:From;
	b=B58KuyZH57B1iWz6rpeuOlTH+tJk6gzKkkMG3VnoSFvdYqJqYBsS1dY5m8i4sbKb7
	 xv6Bsd6zEOpkD/Z7bOijF5K4gCWZp9I/+NQQoheiAQa+8rNijuWmF1+amPQ15VCKTZ
	 grQ32RxlYKXrCA6QrY8TS9MSR/NIG0tmeY/gpmJgCm8ptHQpve6IJedRuKFamZwzLc
	 XHVbBLs71XY/9SqP09a5c/TsElesbMuV0w/xPjJsesCAGctdJV4mqVw+H3/dMOQcK0
	 fWr0JuVuYKADovw5+9oxvYTZ7dGXGHhWorzY7e22R7nZWclTwyJ5jfxsc611tpuG8Z
	 2reotuOlAIM5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96723D0D7B3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172865855360.20716.9865916534481068329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0e9e9a560859547d32609ad41c23637ff44fe1dcb5c0927653b4203f632b9ef
Date: Fri, 11 Oct 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728658553
