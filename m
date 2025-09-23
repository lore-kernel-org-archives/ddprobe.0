Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C08372F7ABE
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758627593; cv=none; b=AKuOdIswm6dorfqtRCCNwh1yKtgXCAkO+50o43K82eQLzEsjqNkdLW2ZwTrp6BSPx/y3aStVq1cHhXPK9XCvAm+zNp5f3Pw3JG9STNOKb9M4/Uski7Na1aa0XPKp+zYyFYM/SHDlS//MYSf24HmMLKox2F2I8jUyrmhsb7IPg0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758627593; c=relaxed/simple;
	bh=3NGhxKhRSEi2juNE5w4EXr2EtSVpqgu5yX3vgX1yvLg=;
	h=To:Subject:From:Message-Id:Date; b=XHTkMVIoTnFr6uvPuFAocjejysEcMc3+n0dW3ebrPjNdHuuESbfdkHthQ9myZKtawqMoth7seqiQQEwHJaQF3KRy4TWH1BYFFpGm9YMDTUzn2imDi8fAsnrkYY2E4ttUU+tbLrK9EZvnYiWV9ULxQwwRxCLBpd/2K82zNs5VSqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s14XdZ3D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s14XdZ3D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4BAC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758627593;
	bh=3NGhxKhRSEi2juNE5w4EXr2EtSVpqgu5yX3vgX1yvLg=;
	h=To:Subject:From:Date:From;
	b=s14XdZ3DMSR9zEbCoItRWUgYSXlkiOknl2vwLAnJeYayFtkiKvX+IGHDcP96K0Ij/
	 A27KaXU1htoesDjp2rtRdYawh9+cQwu6Hyac0e0zFB3Al9JF26lCsbn+pSQ2c1/8Pv
	 DGIcpFKWxa8nGdW/dx3odG/D9plJbZOQf91IaBnCmmMfWT1odwlMp9VT1ebNoTuaFn
	 99ByKX/mzcF+mMh++NnEzi/zVoFaZ3I5X+vsD7xgs5v3YX2fcF1OTr20ZzCcXqglqj
	 LxgGixcXI15xll3lCRKkkKjcNsDEdyDO9gORW/DaoX+1Oq8UhvkVlUcFzfrA1Zvcmx
	 /ryC3q3rYFOrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F497CAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175862759357.10637.17905778623335480539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7b2ce41fe8bb5dadab3d647a224f03b85e251dcc733b1137371ae9ce0ad4d45
Date: Tue, 23 Sep 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758627593
