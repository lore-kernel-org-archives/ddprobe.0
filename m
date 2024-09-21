Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365821F957
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726944954; cv=none; b=r6qkaw1vV8DJCpHFElnvPhHjd85eg9uyHXI5aqpbLl69ZbCVQT7MGeVS5tApBgwtXFYinN7+m0gKzMFG+/3wfIiQyeP7NE3PLuwUaIJfKfOnMnzg81Zi5lcUyddGiy1XgkQORQAWWd1PRSY8dLMGAZYAsZHfW6xFQrAH1zqBjWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726944954; c=relaxed/simple;
	bh=AUHFs14GktfPNl3HiOHBDrc5n8c97GTVvaMLpqHjZwI=;
	h=To:Subject:From:Message-Id:Date; b=Hg4ud67DI7kg96uuUX4Rs0JzH7HTlz81zg8dybkvibXXPpSlXa/Rm30SfTR4YlGhZbc+2lcLYIFxwqOOmUuMuCiKbVgoloOTWCo7x1R9QN2EoI+hdaJ94BWMc1k4EgIJf0sWVOWJGAwexYlS6pStL1ym/mvHvj9ZYJMeBro3zzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVtU6ppP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVtU6ppP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C2AC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726944953;
	bh=AUHFs14GktfPNl3HiOHBDrc5n8c97GTVvaMLpqHjZwI=;
	h=To:Subject:From:Date:From;
	b=CVtU6ppPxnMLP65vln6BMuENk4ZJr8ok7TcuO6Suq8HF+G1s0l0jmZ3cpyDDgUFvx
	 no18GdBWWZh4IxPN3GIbmHHtgufzL/TqAxNLuFaKIVkPU2djM3+1sVG/E0DdNsIT48
	 S9cyeLd0T/jf0qNseV3p/Hc69ThhMXWaeSaQlw6mwFGEc3OxSYMLYeQPeFCO3GiHLE
	 8Vv3yXa0cvkDMkKi7nei3og/uvpPGTtjDphNi/8AHM31+RAe6FKfJ76Tw0pMlSUpf3
	 OgwK7zRYZK6otwT2GeQ/SHqaDvZeQXXOxSoA6AaC8O9XcZGK0tYPN7evrNPNUVKsWJ
	 /CUoVn3+GwRmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9873ACF9C64
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172694495358.32479.13652935103410493807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75ee4a9b2879045d5748f20d5e6c997e9938e87bdb43b0bb4605a753a4a0132a
Date: Sat, 21 Sep 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726944953
