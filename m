Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71FFB23C50A
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 05:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781847994; cv=none; b=aRHheEMe3fzVocpT1nQDIdEtbzC9QIFS5EJ7x7/MxPimVZ17jR4mTsT0QFgMwIBRRHPlklzTmCoh1mIwCA/D6SeBHefLhwW2ZivrBwanjxynC8xSlugR5FXL8+rcxbySGnURKtP9T0HsFPsSwwCgMzhB/0T2hRZhtVZi4/Xcp/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781847994; c=relaxed/simple;
	bh=ekDmYUbjRgbTTCLKu0uYvEkpn+kcp9rwPjXBenYVe/U=;
	h=To:Subject:From:Message-Id:Date; b=uWjprRE3L9Cx43G1PyJZOdzskp8gzmRAlz4kQ5xIWflIFH/QIt/YSNI599GfUgy1l6+DPCV/dTHl0LJ1zzwFmF9K5FO2ikc2x3+tbSBXcIKI4/wlTAF6+9cJgKpaKvunF96BPPFuydZ7i9zgUHpaU0pFpmnQ3m2Q1PTWNZgktEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qQZk+bO9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qQZk+bO9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C702DC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 05:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781847993;
	bh=ekDmYUbjRgbTTCLKu0uYvEkpn+kcp9rwPjXBenYVe/U=;
	h=To:Subject:From:Date:From;
	b=qQZk+bO9dCMTpkkboV0ovdbrnncgsgUNmvNRslyNh4kGala9AkQp15VUbpravqLm8
	 rFsHCOdjadduFdhPET8vU4C7Yj9J5oWgHv4slGEQ2y/i3krwgSEJfag5cQfOsJSSqC
	 k2/DTCzLYQ+qBg9Rf5huwEYaE4GAiqtQl2wonD6kE85FMeBgNyPSUsraWZf1Bm5OiU
	 XLztOa6k7ja4oOmhSqVC2qOrvyY1ebQbCo1RS9fXKi5VlC1RubBrp2+lEGTrTPmVxO
	 xhw8jDFqTImD3uQOEkfHvcWkm8TTy0V40vY+okNJmY9DoEN6V8FMT26VrSzWXxbhlp
	 HHleaOfkGcenQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C22CD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 05:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178184799370.21135.7333114059639606649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e2c0f58e58753d8a2fe27b959c5c22eec18c4d6d3806c045764bc44fbcf7000
Date: Fri, 19 Jun 2026 05:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781847993
