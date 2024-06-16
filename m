Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 864FF3A8F0
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 22:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718578103; cv=none; b=Z2z/TDxtZ4So6rsyGUAsV9Q9XDxJ0LFg5k9jtBLAuTFQ8gX1ZqFlaLu2kyaLZ/FHuycEBYl2jC6S98gC4KIl/qbF2C36kxgRtVi3FCaRuBeHKMV8RyL9f2sQF2mzT/PgNfOqkcaqFQmWIChHvq59JhhDke0dCN25tkhe+u3FtYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718578103; c=relaxed/simple;
	bh=skn5tDoj/nHZNcfSnd7K44m2PjECO0mHEfp30ayOMFc=;
	h=To:Subject:From:Message-Id:Date; b=FGBVYxs9K9JvzjmnHBILs7BjbbceNIvA88ETnWQu9rX9KtY/Ti46arrbd/5qX9Z1mHSuZhQbNv0ShAinmGLD16/8tgjBrqRxP2rn2yowfcF0NIpAZDz0QKCg5rJHJJLC0cuJTkWj055Hx1OjM5kuRR5NGbU4iLmTPXY08NrLk+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZHJJAC2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZHJJAC2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6CF5C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 22:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718578102;
	bh=skn5tDoj/nHZNcfSnd7K44m2PjECO0mHEfp30ayOMFc=;
	h=To:Subject:From:Date:From;
	b=hZHJJAC2tc2crG9yWHLiDem13agoZJhU3EcLDvQomF8zuiOeIAzbcbY0X2GoXM0LW
	 cjIsC9mb956oXK7q/O2o+IigMNAoRmV0FECeuD+zFuJXcJ8GfjQPfTx8vzQF8Hd+mD
	 WVtNcrFMLtvrejdDING28xM9N4xPZNCFwYvypubSox2o5YEYMAfk/a1aDhhDGggBye
	 U2qRmas/AqAh4mHQhM6s+Grkw4wISSeQXxHNaE8ncAveeO8xo8NMiImq0NgQClBifH
	 H3kv5i8oUncSYAXBFkIEEa9JTEyjNcxXAgVibZXFFRGfKTMC++wtbemjpo0wtW7g/k
	 uW8DfhC4ko7Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1105C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 22:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171857810281.8305.9769991275522120789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fbb2d644829c9896324490b1155bd81da6c185418d37545ba2456a09f798749
Date: Sun, 16 Jun 2024 22:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718578102
