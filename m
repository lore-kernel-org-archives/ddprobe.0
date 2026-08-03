Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ED20423761
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785777634; cv=none; b=DTyzDMAVlNjcq2kxKQPHslYax7jRUFZQBCXq/HfHIn3XaEkW9INj7N3EIKJfOGnFx1GZsj4NYRRUrjTRPbjuLTfFZ/xlaKxoambH9/j9FXfhf+DD3LVecFrk/w1PyUqGP/mOyzLUof1JXVHCkaVWF3SwYj91v0zaLMHdHqKaMQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785777634; c=relaxed/simple;
	bh=5MblG/WECi4lPowdKt7L2jJNNId0BF9E/++hhpQrKHA=;
	h=To:Subject:From:Message-Id:Date; b=KYuqd1a7z6aAeyObWI1AEbSUgULi/5VEUTotggps8jPDkTATAQYEIt2CL4ssEn5B8i2U34zN/jRGd/+qZEfYC84Fsef3gYDLgrokL7hXEAQXx8njdWx/1zNLv+SgAYACe7UPKTcujVK/Tn+z8nVb6/fJuPKefxu7d05KO23Cv8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tibizfuc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tibizfuc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0737DC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 17:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785777634;
	bh=5MblG/WECi4lPowdKt7L2jJNNId0BF9E/++hhpQrKHA=;
	h=To:Subject:From:Date:From;
	b=tibizfucNDxAB2UolUQCDoxmO/JFwDwgBFfM0Tf/2zNS/A2n9Hvl+hNUiHtIjKY6e
	 kv4YzIpyc1L0/rGKr9UT45B2xnfANBLbAb3UfgVqnzYtxA9MkQAKncpds/KcVh9ZM0
	 UzBJc9cr/dMqIsNjyZsX4Sk/IZCk/Jn7SoVgVX9sUdCvqlT60O0kjPSwsXC/dzsc3/
	 Z2wZE2Rbi1GsggN34VcJqZ5otSk+P6nqW+fJnMPzTnbjqhFwd5njLrY6Z1fOJTF7n/
	 jrfpsIwjCMl0s54gdsA1EhNGlkcPb7BZxAaMcPHUSGbQvAOfliuoJgA9MuIv2A+nKg
	 GSWW4tuhfpV3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEC04C55184
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178577763376.9419.4282462100143549241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d563f0502957efdbbdbaf99b95cfc6a1898da1b4cc230d96cfd06ebf0adbf8f
Date: Mon, 03 Aug 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785777633
