Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6A02B9A4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746171594; cv=none; b=a48wOL08WDqEIrSw2Xiq1a3o+1sZKf0L+8vJeAYjfAIJEp787mOrL/TUbTic5sZDvzW9+5hkbpxICE+B5gwTXfCqExQDLfJqrr5TVKjwxLp6nTU9ujiKgCizscF8rYQAGctXy3u+U+I6VSzZJrbnx6n7G9IRe7gZyglpGJs0+84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746171594; c=relaxed/simple;
	bh=ssUg9qdw/OK6CGSzN5rqtBcUrIi4m1hgewBkHgl7Z2g=;
	h=To:Subject:From:Message-Id:Date; b=Guy3+VP0AoOYrjYsh+4M/0fptkzYdqJiRA98KOhn17/8oeL5gQk964aAQ7zVIufq+7jYeq4tyQtAMHPJ71bKEgIfRkkagarBQr+BE/UqYyvkqgaxokjVm2P7FY5vEayOzRxjfZ8K2m8kHZkGB9B8aMa7OyXol46oPbNzZ56pU5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Clsx0cn8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Clsx0cn8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1970C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746171593;
	bh=ssUg9qdw/OK6CGSzN5rqtBcUrIi4m1hgewBkHgl7Z2g=;
	h=To:Subject:From:Date:From;
	b=Clsx0cn84wbGqvV1MqQgiBZOb/A8Q/IPPqty6/dNjtBYmPLK1TOvrWT7lmnQ2w08L
	 6TM54x3LN/8FrEO64DbiT60RxvxYU3/zmEjglPeZg6Vsu6WvKohqUkFCfdUH0KG2wS
	 zcIsyQ11EOUx2fjwH/NnQOcx8DbyFMwDiaKZmVFRddHbtrCNNdVaknUWut9Kyhs96K
	 Zmw+p6wVmwcerS3JX2As51jZvJb4G8CYSIDirvz3kfKCXk3Dx5z7OS4RM/GgLftBmz
	 1W01i/W7iG6ZSJ8LNf3HOW1VvrAeTUpgbwm1n3NcSXofpezhQiB4i4ez6B2maWkCdN
	 cUmrW1EC0Xlvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9207EC3ABA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174617159359.3747.15690535522365653008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 509ea1f108e3411a2ce787a91f7e057b35c494f1493ba280ec5a86d1446d61f1
Date: Fri, 02 May 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746171593
