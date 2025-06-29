Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E762F1FE2
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751165994; cv=none; b=Y8sn7Mj90iz+o6EF3S9phx6VUo8LsiG+okqS9zx83LsQR5LdAaUiukSY8ydjt8GfwLKkEOAh7q+JtyMz6GSfpWYJkvwG8B97Ya8jNdobNc/3dVQc/4t85EbMfcwInYpBJEKjjcPQokw2YJWLonMgl7xzu6m/6pv+GdZj0i8bJ5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751165994; c=relaxed/simple;
	bh=XwdJaKrzH7QJJ/fcZMAC6/eSbNFfsmjL0IZoLntF+i8=;
	h=To:Subject:From:Message-Id:Date; b=M4c7EuR9kCJMhkSmdz2ijFZ5diqicUUipAj5fRIcOxq+t85jF+BSFd2R1uPEv07KcdENVBtUiYRd+Z2ot5c5Ppfn9bbmnmvfjWcMG5o+KdlEG2G9Zgk1lV/VlomE/E0fGAnX6uLfjz2xg2xCLdOJ0va8lubnsEj4+DzHprrEXHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGQR+hPF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGQR+hPF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2007C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751165993;
	bh=XwdJaKrzH7QJJ/fcZMAC6/eSbNFfsmjL0IZoLntF+i8=;
	h=To:Subject:From:Date:From;
	b=AGQR+hPF456MogujD2WTnXpoVrTLOolPKKH1evmL1XAzVpd0+NDKxi1M1DRc0Eif2
	 nDro/p60cPgyfW6gU0vCVZYWcehMsBsPjwFTQJ2pbTmo6uex0+Kcr2hZ2kasW2YUmw
	 FbF3WNXCQv9UA0c+ZIelu9Ahm3J0tgB6+6yU8mn3nIh79SA7hz7UoptaBh3j1X8AvI
	 OB3S5hsIKvsK1IizUDY9/svqPKv82RCTflP243GPEPoGxcQphq7R55ZFoJ5Ye5OX92
	 6a+41r1KdrxTWcW0hfQYg64Snk2P9+mV4HvcHj0IdOC9E04srKQ/qJBIeRrWa2WRTj
	 gFKVqpgKhkBvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921BBC83000
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175116599357.32592.8630942127491581480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97e3c2748cea850e1f7838344c16674e33aadd5cacbfd92e10509c788ecde388
Date: Sun, 29 Jun 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751165993
