Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D0F1FE44B
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753243194; cv=none; b=WHa0is51joCTtCHZsoNvBhz47rg92bNQWGchzP0BqaHLtlEsPhzJtbCbiw4phjeFVJCA+bB61sitfR8+x56bQMILFQDX4JZcwClOYlO7fjVZFWhXYkIJDllACpmo6obK49zgLqvsgxJ3nWIO60CFb5nIGz6lwJi2F4J65UjWh9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753243194; c=relaxed/simple;
	bh=2TyPYNUU+IJS+sgDSygy/H1umrxxI3UPglGgW/SvNtg=;
	h=To:Subject:From:Message-Id:Date; b=PBpfmHimxg5AKh9ssjxFamtqFtLevStE4P8eY2Fxx1apKZlT5Y3JQMdaViuQqizXTd7Vj1ipU+EAcNgeXGSvuw+Xmaiz1EYz/U+ZsIgWfnwdKZtR48PCdOJKLW1bvWniDLty5vcr3Pv2JECiOCXt+dhY3r73X6oYJiZi9IUw7ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/jw9u4g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/jw9u4g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BC1C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753243193;
	bh=2TyPYNUU+IJS+sgDSygy/H1umrxxI3UPglGgW/SvNtg=;
	h=To:Subject:From:Date:From;
	b=Z/jw9u4gsY9XNwevVM3Z1qIZtzTCdgCTc9Q+C5E688kZu9UXTq9uUvC1NE86h5ViP
	 cu7gX3fywO9UozMKNyx2b6qi9oazZ5bP/7TzumU+inL6tGXmRF4ya66ajSbaVnLKeJ
	 NZpr2lIYqnRUwrxTV7gOmiwkfiEkkYxC99KKX2pIajoDvA8HSygvgWgrUpziqOMXNN
	 3wCRFbx5m6Hji3BASXn3HvNJTK5prY3rrJLsEc0IaFlGodv2D8SEXqccp3ujcfv4cg
	 dApL5pGQWRiCfuQ+ISxO+ymBfpHJO0/3uKW30AvJ/jDlXMyoDpgIJ5tBScmQQPnqkR
	 yjVqKL2Ux2b6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBFDC83F25
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175324319358.17365.8343276948396192129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9543a32a405f71065a432fa392786ad6294ba538ea041c89edf137120fcc56db
Date: Wed, 23 Jul 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753243193
