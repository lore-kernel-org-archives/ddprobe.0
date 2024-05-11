Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9E45336F
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 15:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715442143; cv=none; b=S1MNTkFkpqsiquH+CPYgft8q2gO0seGPNcnoofWl4n8/okVno00e0NosgUdW5tTcbF1ejHfF3+EzfrhoHt/NeHi8ZvzlOy9U7feh+GIDyJ779Tj56/X1Wo022y93jWMVsNQU/8eiu6EgJaOOf2VXcuQp7UI5MHoEQJCh056BKak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715442143; c=relaxed/simple;
	bh=opd+z+EDifQHgyDTbzuRa6x5Ftxq7xdDQCPGUdZixVo=;
	h=To:Subject:From:Message-Id:Date; b=HVQFKZgb0VaJXlC/LZALg/jtJE0I8FH0XQnH/M+ahZa/rbv+zubwO60XdWr/yp9h5H/sbhtEXlCzWR6uxLcHuHDovxKL56v5yX/SVX2+unQI2J9dT+RVyycoZK1WUwhQfPQpM8/pwv4RttdlKFK62nHtVtV12n8gj8VjG2pk9CA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPfIgzCm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPfIgzCm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA739C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 15:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715442142;
	bh=opd+z+EDifQHgyDTbzuRa6x5Ftxq7xdDQCPGUdZixVo=;
	h=To:Subject:From:Date:From;
	b=gPfIgzCmGlymKwO2FzTrJ2wbLosWRpRutKuWf1rUAZxT9+g0AJgH2gjJ9vaoUtZi6
	 DOu/gal1HngCS3uSpYJ9wl4nSjSwCCr+QSfiKeo+lBjugSg+7ozPMNq/A8EQu329IU
	 Nprvt5vF9gys8jdzH8aF5d5kgfETJvwuYcfte0zUPT8UX4Ao46ALfoLafINkrXXVCl
	 c6uIBsKcTwLUdsJpp1dT2Sk2NdA+wobP0HYNCs+lma/Gx3BVuSSs8u06OYJud2VLGo
	 /NohbcXZewMGuYSust8lZbVbydstDeG2uJKwJzxdJccfKLPtRRl2qOlvYJnHuE4eHG
	 50/BN+FAGba1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C46FFC04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 15:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171544214276.28139.5376218543674164507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e336733b7cf9dfb47bbc6ec4289bbdb4c6f1861c3e4f2e042f94ad2d139f3c8e
Date: Sat, 11 May 2024 15:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715442142
