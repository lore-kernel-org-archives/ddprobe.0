Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 601006EB53
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 13:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715003543; cv=none; b=aSWPfRZVA+8IFuYLoFUHXJEqHs9tenP1tWWsfBHHm4ULopgE035CQw1dl3sstKQ3VGcfD3wJ4oezwiv1tsLkpzku8DBP284md2yxdtSg5IYaKcJgD1UzlI8c3h1Pf/AtCEBk1VEJa/rdU6qNmkukg5/VuNOF2/QxP6IDDnJITIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715003543; c=relaxed/simple;
	bh=6Gd0r5uuTA8TSm5HlL9kkDK/sqnOIoieY2vzaBkjZjo=;
	h=To:Subject:From:Message-Id:Date; b=T/m1H4Jo/5lXPlDoqih+1mCxgFYkL3s5lTVs7VtUMbXZgb/hRo7AceJoJBgRRm2gN68P/hc/nG/HqjnStKU9bDma+eLO01hjaCHfijO5aSZXmP21Kshzw19MVlwS0N5tIzIyUDvBnhmgOEiP1v12Svm0AtbzBC9fnNechrsKd48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aC2LGgQb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aC2LGgQb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F15C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 13:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715003542;
	bh=6Gd0r5uuTA8TSm5HlL9kkDK/sqnOIoieY2vzaBkjZjo=;
	h=To:Subject:From:Date:From;
	b=aC2LGgQbbdnOwPvS3nGCPu3gJ3GUkQ0WvBHzraxzWr4CpzWucxNiP1aHbo55jYyKv
	 3h8J8/ipAm0BzNuS86dH8G/gos4u80sAR77lstqxMQogMA6U96FpKS6qvIwS+SqXkY
	 U/G7JuPSJggidUbfB9mr82wfr3O4McTO7PbrcElb8NECCYV4YGirdSvGQ/zSsqeXB0
	 HcNxmOef6fhDzZTY6meyfy9hOIcIyrKQ0Lxz3CYavq1EV23yaYX5MBH+mTtxXzlgEJ
	 6GW9S+mGj3JHEB7huBxz87lUXIAIiRtDMuP3yQIGnSy49p38+ye1dN4IjGRPRESSfg
	 UJGFUKl098BCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3667C10F16
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 13:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171500354279.31641.11303742327936214689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f1a18e21b20ca57eadd44c81089d987a6ba7b8abbd57c96c4c1e3049637e645
Date: Mon, 06 May 2024 13:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715003542
