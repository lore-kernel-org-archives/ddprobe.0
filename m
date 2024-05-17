Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56DF5622
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 00:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715907143; cv=none; b=dKei2EC0sm6BQKA5Ll3NT992UErcMGBXta+Y0SwMa+wHHvq+pf7oIE5UEeXs6vcnT26rdVqYTbubQ653hStnm2L+3xRvWGbkjbSao+2J7e8n+9YDRtgxh+nLqAjn+NXzafXxIP6IPDKMdUMPi6FxPM0rHcyx7pGjAuE8C7WTEag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715907143; c=relaxed/simple;
	bh=KV3Poi2kRKS/QNA04KEjLIZBr8TfASRwp+dX5R7Pzis=;
	h=To:Subject:From:Message-Id:Date; b=mu1AgtJhGDfidc4X1l0pIYQrkBoeu7fj7jt7MpUr2gAku5uLNzqlN0sArV3PY/ga0doLox5g8qpzqGc5uYGge48KyKhH+07wAC9Sd3IsIpXccNCXXwsZRfSWUqGMa8MpK5wdnvEYh0XkgzoiWSyvifiyXuTHQWU3VA+xQbZdmC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hy+eqpeq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hy+eqpeq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D891EC113CC
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 00:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715907142;
	bh=KV3Poi2kRKS/QNA04KEjLIZBr8TfASRwp+dX5R7Pzis=;
	h=To:Subject:From:Date:From;
	b=Hy+eqpeq6wzTiAdcGAKOXJRNXRjyMk55Zbe9bUxSpYcXCuCKbkXJyEz683ndydjv0
	 cyschmaCW1rLUyMoKJKBDiKH4gMuXhxRYiGnuFIi1c1GWwAKdDGGkp3BoaJhLc6vq6
	 jn56TrzoEp1JEGsKplNaLE8MZo1xxqHmd/E1XmtcmQ9XvHNDlbz/Krou3z+MAo4V0f
	 pHnirLfb/XMd/sNGPhBJPfofQmoSRZ+AFLy+HGN5wFWUnXIJR9NZ70vLdYA5AiKnjp
	 Ip7yqBO5HW3nc9qAzk7s0SG+dK7/ZqySv2QnI7JdvSeK7Cc1G8cQwYRTZORl8NEjd7
	 FuunG7mhv3ALQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F62C25B74
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 00:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171590714276.26740.11249568640804846968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af86f2d2541245f19469ef4eae53002263658030cd5a76d1f9696a982a1bf85d
Date: Fri, 17 May 2024 00:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715907142
