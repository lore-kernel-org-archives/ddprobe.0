Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A061386DA
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773809094; cv=none; b=PEdBSfbBRbxcdnIX/g7f7RzWgijEGv83IaZVAGHzHrqFDG4LnUvIoAnxjFJ3FVo1n7WctARYHHd2UJfNOughCce2bVkpLE+XMRVTBpzH1Ns3O/wQzYZ/3qyCp/nRYeULQ30gmI+9mdiLPOjVsUDCl3kFmOcEe5TiS3qnJovvm6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773809094; c=relaxed/simple;
	bh=6BIK4i+GhT4T6gbPuDqTwx522xcHW9sHdF2LZUlp9Io=;
	h=To:Subject:From:Message-Id:Date; b=AwH1aAcSRl+jgiR3oXoDKmOCBFqwTvw2TL6ulWAoz9xxT065Bz+wqc/1ZJ/U14aSo7tQDhcWhpvtn3MivQSnRPEj06Yx5t3k4JAGmN5n5BH7+MwCdUXRCtdF2lIFUih0gajVLailHqWCjLmPs484Icy55OKtMmNO5bAIPaFeRrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNHVX5TJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNHVX5TJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF57C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773809093;
	bh=6BIK4i+GhT4T6gbPuDqTwx522xcHW9sHdF2LZUlp9Io=;
	h=To:Subject:From:Date:From;
	b=CNHVX5TJNN4ECEwBPG4C55GafYRfWXXcmtzVIlzHuO+KSvvSqbivAF3uMe/Y0FlUD
	 xNQCr8jsX/Kzth8C7fi0iHBxiiTgPnMTaslQP2xgq+MVc0e4l5yT3n5GiuulDWw3zc
	 weO6MyVpl7/4Zb2ReEvNV7V9bE7PuCOeOmIexbowJKVk7qLL20FAg6QSgZoBcZtZbt
	 QXxpl53cjUJSBFKZyPy1DVZ3ZGIesjGGpces9Nte/j1RGv90bCIDNNuHIpE42rS+Bd
	 pnm0/Sx5lfV9kAWalKGvTX4n6Z5HIk+a3TZqtcy8l/185yAY5AjW+a/YVnC5bkpw1n
	 FMYg7De2ajVIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F99FCD0A7
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177380909360.29816.10454369467824064416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2af490429b32354fdff3ffb42671116efde83880be5c6080dc5b50a2f6dec1c9
Date: Wed, 18 Mar 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773809093
