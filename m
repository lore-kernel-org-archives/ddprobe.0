Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CA7261B99
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762559394; cv=none; b=FC4+Ej0LxL2W3/nHo3zTxFAFsuNETU3QQxhNFehjegdkhlABG01gMrsdkkk3zv6p0qjaxpX0pSRT0Z8Hjsss1ECOfsLQcwSIrHo9vuQeJsQjqlt1qUxgZipFA7NHepyn7GFuqoD3OZckGiX6WJgsZfr55QRRJ6Azz/ZpZXvVELw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762559394; c=relaxed/simple;
	bh=RJzICpWADyin6CpHKmb+rd3kNYYaaqSTkzSGK5Cy8AQ=;
	h=To:Subject:From:Message-Id:Date; b=CA/kPt8w4J82WplKyLI7fAiWQkhAOSwbz5Yt+pWNZHyv1bliOh4rt4nLZd9oKr6qVJw8quBkf8NVydCQ2RIudSiiNL+moVFgcabiK4hwpH0ThPYE/+gxQNUrHuUjNq9WsyGdzl2zTxdrX3iE5eQktkmqEiIwzfdhtg0pdc4f420=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JoMsr1yI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JoMsr1yI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E99DC16AAE
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762559393;
	bh=RJzICpWADyin6CpHKmb+rd3kNYYaaqSTkzSGK5Cy8AQ=;
	h=To:Subject:From:Date:From;
	b=JoMsr1yIF3tdVLAeqTlGuZlgTQg5OMjJQH2PBbUenrHJL8G4S3/drVBwnLTQHsKBm
	 t6ChOnc8Gcx7YgyZJG05XgbviWhnyIxTE2O0b1lfHJv0qLWQ4oj53j3O9EPfxEygZp
	 RAy6uXGlkam63qKvjOF0IlILMjdRTA75ahxhc3+ZICUla9zISEf4D4HUS8mnC3/20a
	 SehTKjLYR4PKXIX6HH7AAPrhs5p6AYia8YFmyCfvsAKPnuQ2GRG2exRZR8ErGwIkBB
	 7W4C2pBitfvgbO1XjXZN+ougGoVHPP4VZ2BgIWxC7wyXr7hQvmq0F3D44GF8NUEH8s
	 sRPIQuoUkhY0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9272DCCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176255939359.22561.2848617259120674076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c413cb4b04f9ce1ee65b8bf9c8a65dce8e24a50006ea53dbfaf8f7d923d3d8cb
Date: Fri, 07 Nov 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762559393
