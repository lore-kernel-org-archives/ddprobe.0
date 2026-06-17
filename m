Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 721F531B824
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 08:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781683594; cv=none; b=qfAnBmqu4fJnq6mhaOV0xhd10fHUGoYXld66BKjMKpZppWRy7M9azQzJxyrxdYLVcnrLemeIVfhXhRagBAeqjHCZx2eaxAxgt4Fok7zycBTbkV2Cvo5laJE4j7PPLDpAzsQ+4KVoMbzPXcU2ZCt1SL2sjNlPJ63SnhTO8FPV6n4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781683594; c=relaxed/simple;
	bh=Ak2QSabl+6uBYHzgvufp/fYR5Jp7IVPlUpLoFvE9gWE=;
	h=To:Subject:From:Message-Id:Date; b=QxbpXda9McMJQL0WLzZcl+Fu5PBvIxZOPsiiUm1ARRA7xwN15aIdb2ss1vLzwnMHNBYcDJ7AYofKMMNF8tIDfYMQXK4PB4CVGC5DXp9zd3f/mAzpP4uLR0FtRCgz4NzpDCteBSACNCaYOfxxD3/lt65laD37PXL/sBLjJZJTGpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3aErNz7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3aErNz7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF1D7C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 08:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781683593;
	bh=Ak2QSabl+6uBYHzgvufp/fYR5Jp7IVPlUpLoFvE9gWE=;
	h=To:Subject:From:Date:From;
	b=D3aErNz7fNmcXRvnj4m3T8gVIXkxrnYgjy8BhyD+G0/3yiTM6VaAnygVykZSJGROE
	 A3QX+6UgMwynUdpZ3ikeeJ0EoHbiOmfBr9QZPMwSFfROkd22IGTVYsxn+C1JLZqS/z
	 N9ZbD5sHqHaUgouG91M2aMRPf/esd61nV4XDucJHaSnd3bsEp/wQOz8IGK1L0eVNv8
	 8JB11ZB1oRlnjTunVLsaUJX7hSrLm/UYCcot2ctZR8K4UH9nVTN03Sv58rwQwa8siM
	 YB2JABQMedoe9xnGlzH8X5QOQ1LuFCkAgffkn2KRbyBBJsaDgwMsYoW0lOhoOXMs2c
	 EBFzauQUQbVgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07A6CD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 08:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178168359371.16115.14248973983534295023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aa0da313cdaea364578028dfc67ca4b2c4dd759232048421cdf85a512cfb777
Date: Wed, 17 Jun 2026 08:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781683593
