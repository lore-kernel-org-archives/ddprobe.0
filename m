Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB1447A6B
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761613794; cv=none; b=oqw9auSFdW+2hQGyaSauOU3d3hWBN1ED6dTunDragmClX2LNnnB8uljSRzXK36b97wxoFvAAIL3zBFHNPSqPxmhJpoRFtngUBhfXQrQbJDdbmXeUe2rWhxJ2Jh0y5rYjuAES9myki9UJtOmKA/gwrhnmmcTZjyZhOcYisiMu9n4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761613794; c=relaxed/simple;
	bh=HlmSLET2hNt1cG9xn1/1Y6vIp15XcGDtWl40g6uVTFU=;
	h=To:Subject:From:Message-Id:Date; b=Ot87P8U5jKOgfukMkn632wAHMlldPHwvw2yzFbMRhXltlgbyW+BZ/oTD0x9e/91W4ZHyFdvplM8shPecUmu6ffgwQYn3Ii0WmIiB4jh4hJ1rK910SDhB6ssrxeP9gUG+od5msCGWkNwspdMqwp42xFmfcEnrieadv0rp2colU2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P09hHfX7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P09hHfX7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A635CC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761613793;
	bh=HlmSLET2hNt1cG9xn1/1Y6vIp15XcGDtWl40g6uVTFU=;
	h=To:Subject:From:Date:From;
	b=P09hHfX7ZtLd7tYL0stG4Inp76hxg7YAhBj76tqvDj1B0dwnb4OCvNun4W4fYrLQJ
	 Yjie4/kskyfNX7AJRfsYUOBhOftcn8ouBZop5DaMjnbl5fV9Pt2NuTReFQExm8OBRc
	 xAoqJRVs+FqfmxfjzMunfw1jgeXV3GbsZ8j8lBoZVZqXP6AJ/Hi/nMZgzKh0btKB2s
	 CUH4xNRSoIBEaYpgOYuimnIM5pOlyYssQhD7O508RJTtIhiXpxDYzEBLin8CpS+Qrd
	 F9pBxsulpniQnY1LzPm9rEREsfrEwl42kFSjYbr38+woowwAfAFOGw5N1hWk3EYO3u
	 nIPaFtQ13+K8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950C6CCF9E5
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176161379357.10262.9765710743867498619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ee83119f0382478c95d0eaa9844116bbac3e3a2f62f1667f5dbc15397d97bda
Date: Tue, 28 Oct 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761613793
