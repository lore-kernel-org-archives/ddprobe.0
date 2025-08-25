Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F6F19D8BC
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756161594; cv=none; b=d9y1t/aYkrSq4J8Ta6UzO0Mm56a3qtuBPQ7aUIL2yfVurMpfbd/0GGb81PT+yukmN9BJllSHSvNfld3b5pGgwrzXe3n0j6Gm3ReNFQtIpoNm9+h5jBih8oIz22G4MpnkJaKa8ChlrcrPYrOSVOUYfraqMkadtj+FjIwhsFPyKyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756161594; c=relaxed/simple;
	bh=Fgx/J+kn/mhanHYOrrjYRGlLvEYacohBly8GvX9bxaY=;
	h=To:Subject:From:Message-Id:Date; b=WdThQF6PPw1BnRudyBnL5PpCi3Bme4FmqKLqblebwdceoi8zohQpPqq8ppOR4SBBzgxzb54sJKJfRgR9Wa9vz262iHWapJypIB6rkdg9ASwJfHZqajuzrHArSX+DbzjyFADmLH5dEIdNxwjzEQe5v3Iov6tHAqcY8ezdtsCV56M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B5TVsupJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B5TVsupJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D297C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756161593;
	bh=Fgx/J+kn/mhanHYOrrjYRGlLvEYacohBly8GvX9bxaY=;
	h=To:Subject:From:Date:From;
	b=B5TVsupJa5PecBDr/eU2EcqkN+nZA/cH3q6ZYKyqbeAgPElFkskbpM76leZ79WEjM
	 SMcpYBAPDaoypUZwVvz3fgqYdoFLeJNWw4eUBO+dDZUvfoQX6p4qN0znGKR7VF+XDi
	 7c0FvwhrVjG6IvrfJngeHgaFbcHwlhJ/BMSuDYkSsDXxXKBhjLlatxCSaR1VXw4p3d
	 wpUXezKMCDcTBQxWrjYxYjGbIZbUfcO9+qVXENzjlvGcbECl8V+fi22n0KTEev9i/g
	 81fyB0WvZlRmowSy9506GruTU63uvqOh+Pq2lWX1p3MAYyYEDEl86fLyeR7JN1Mgt3
	 Onn84bVTRE4TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E16BCA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175616159357.15115.14318720064030821665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b3ebccce1a2eddf3003767d30fb47b4deab6fa406900b2364528341a115a41e
Date: Mon, 25 Aug 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756161593
