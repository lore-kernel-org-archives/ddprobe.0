Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4168D158A23
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724237754; cv=none; b=CaLWsNsrMoq3ezp/OYasvJ4jYqVUStrhS7kgsjv9sQRJ78HZxxKbgNe1+jwUATSioSuO+HkTh0lU0709gXEbyMIlmTB+wkL0R5UcqUyt9TksGjtjvimuULES/97InfbbHVohPNHYol0PqeP+rWOYwIIudyXaceoSYw44+WJ9wU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724237754; c=relaxed/simple;
	bh=KzxZCObtYTydGzJA6Z6EGESQ4eykpAFgVhpVeeGtNRc=;
	h=To:Subject:From:Message-Id:Date; b=HMV4VI4DmCbcSu85Tlroh1aN4ITvjlZr5Gak2ldmYfMY1BT/9C3SBYB2KXqGLp7xDB/L5weGrdK5Mrk1+YXPljL0St/4506Tr+VRPYDWPbiXoshuZyYwZ3uJVSFSyw76G1ObBikdab1o8VKARr54lAQy2ZguzpSHilS+O2bTs1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CMHNirfk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CMHNirfk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38BCC32782
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724237753;
	bh=KzxZCObtYTydGzJA6Z6EGESQ4eykpAFgVhpVeeGtNRc=;
	h=To:Subject:From:Date:From;
	b=CMHNirfkweBPrbelcIfeTq+lNkzwxMH/fdxsIUZD00JP7FE5mJ0aje5aa9ZPHygTl
	 O6gB+7pNPht9NoO3GfghFoXqL8rYOQUIfgk9CoaG0qWS8FqxsiXIR8OaVAnEwv90d7
	 5gfnFLkbKOyAVPEQxx0wTp0sZir3qM9wdr3dkxuQk8nB0T6aYyVSnW36bzHKpd5o0P
	 7r+w0jjD7RB0HH5TvrG0v8lapSdX1GHxsjpThZfQs8hn+HB38DNiFYD5GZI1nrunAg
	 rlLurg3LSlDbIzUSX0A22tnXyESLrGxgk4jTguKUmgKtts1iqQBOwBVckS1H4WiGFb
	 v9TGGO61v2S0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958CCC52D6F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172423775360.19666.15005415886948599767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86a6a7c6da74450808018d4d7f42e171adfe73e4fa30c292db22fe4d75b8046a
Date: Wed, 21 Aug 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724237753
