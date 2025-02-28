Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F5823F38F
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 20:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740776334; cv=none; b=Uhbbxj4LbXji5S+qwGipofduaoayaBXHzivlRPNn+XPz6XF3wQo6Ngf4JyQtMHt6x5PkEQEWYqq3ZMAVf/8kxVoqmUpKXEbw8oBsCXFyddR7BDVaOamCoPha1hI2j5ZXQFUE63XPQpmpyM9+u0AWpZDOoiZx1lghikEa31AraCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740776334; c=relaxed/simple;
	bh=DGC0urF1vehJY645Zq5hA3aF0RMjBe47dlxlZr1oWZo=;
	h=To:Subject:From:Message-Id:Date; b=PZsnEi7xqZUFXf3SpFWVAti20yN2BUzzhxX6s0gL7yIw5kr9cJhKZa5VHEraRV01jMVWwhlj9p+U2h+iibL++Y/RdP6OV1eoAdxOnI8KpZqCWj6leU+YZN6xucUTZWoKhCpVkdVU588ru5AtwTWf5Z2u73BRDSTWtfTTzV1TITw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8UUM/KY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8UUM/KY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3182C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 20:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740776333;
	bh=DGC0urF1vehJY645Zq5hA3aF0RMjBe47dlxlZr1oWZo=;
	h=To:Subject:From:Date:From;
	b=D8UUM/KYKNkCIG+BubFhueyybZNAls3qWK9RZzLGf6TwrwjxhE01Kd9Gjq7wFkqvz
	 GL5wyDUVotiY3GADaSNEJA2nD/etAiWrY6RW5Pj5xJN0wtGLUdcIqNlho3pibBWmH3
	 h0uYVxXjE2Ev5j3PjNO8VBSlMFxoBWLwkoL+w3ZTdnASoLG7rFR4IOkkDMOq0+SRGn
	 ycI8XzUAB0FsM5TLvd2Y+L6RtI5HYcr/CQ2BazQDzTWfCRE+c/uQ1251SyseMnzN7Y
	 nPF5v12EeST7CPYQ3Q3XyUw+PTDaQPHP/q997wpMk+X/3WPGrZ4JHGGCcHjIWfdyIl
	 HpcVL3QAOomfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931CDC282C5
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 20:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174077633359.1259.5490344769535733779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ade2c342d549024acec2fc621c323c0704c742ec36b6a8e0b92cd497d948e3d1
Date: Fri, 28 Feb 2025 20:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740776333
