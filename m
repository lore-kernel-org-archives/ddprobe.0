Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C29FE1B3948
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729032953; cv=none; b=ptInO/u2BSVEdtnwhiMn+TZ6QQbI1ldr8q50ZJazoK1NQJX4ZW6LQKlZ8g9fymNkI98WA6XUU6jg3z/m0cNK10EU41ckaIXQ/4lLulYHSqciuV/ACZPFK7mGOyUJKDGdeQWIXtwzGPwjYtk/wpUx/t2db731orrdFP0gKxbQ+7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729032953; c=relaxed/simple;
	bh=HKmqscqX4JCSTKBVO63GB+sQXTxgzy0RzZSkdjxHcnk=;
	h=To:Subject:From:Message-Id:Date; b=rlPxxFgzo1CI63s3xJwCbGLVoaUN8BNY57g6RAwJZVEsvJwB9XUKRLxG8bL2D+SXzhlUXk9n9hbRcia9fbVAydrHPe6lM3n7X3Jfk7+U+gB+rA2z9LX+c3UD+bP4VxCtVxNmoriSz5u8jP9XxrMAh+6ukTuH3Orzf6xCfEnUC4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IsV5P5hk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IsV5P5hk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23C6C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729032953;
	bh=HKmqscqX4JCSTKBVO63GB+sQXTxgzy0RzZSkdjxHcnk=;
	h=To:Subject:From:Date:From;
	b=IsV5P5hkfq/7lb0VkRoXaDjL1gwyti3pMa0AuszoB/KZLI9gFzYoesKY5X6isYuuZ
	 nqXpp4UijPbqo+V+Rzi98r8Qa+m3LYEs1fryPTocPir31jV9OcEHbvj9UPOxK2Lrik
	 BRJoKvBOViUKigv5MN+AjaHMZ9jNswC1OuewQziWHA4hVVyzV2EhqB40Rp05T9tHeP
	 9f2r36S0fY/IEhXjY91PMCzKUDWe/H3hr5S0zWUW1oiEYLksIPpaxCRW0B0mfxFt5g
	 xw9brLh5ArgxZoDlABkrVjou2detd8XqJ2EVBsTK6sDd/99egx07zX8aWJpdNJuSVa
	 8rDSumvAD3K6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92129D20683
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172903295357.15306.7466083129730947676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1e7a2b232d2a8a6a1248917042c845b508eb800b8993717a720feaf89756f64
Date: Tue, 15 Oct 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729032953
