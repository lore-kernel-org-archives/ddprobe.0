Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BBF191489
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 12:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720613783; cv=none; b=BmQMbvcGRShlTbnlh03XA4fqKgEbWxNA3SN1PoCd67p+yyYHsbx8jc3uVu9sZwewBWrBfusMNR4gEOjUwKBwIJcA520+LGBywAvoO23U8B9ZK3/JrrY0e5LSr4dGlhI+FA0duup9TmxHlolYOSG/s0unnqwLFEWlW+HDhpHc8fU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720613783; c=relaxed/simple;
	bh=0rTIxaiL1YmWIMkYjReNxBdnQayOZ5fz5byKmzzxcTs=;
	h=To:Subject:From:Message-Id:Date; b=GtrunzjfM+P73Dim6w8HUNS+kL+aYvC7u3nzTepavpM/1+6s9MuQ2BZU59SOXOGNjtdcOUBSTWHcwwP41eyJLwQgvy7VJIU5LYp7rGm/EZ3OZJSmu3tQTVlkHv16EjkT0IRZhJBGBDRuHX9aMg34hR7mdBbK2V4Z498UCLZemDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=clMdtQUW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="clMdtQUW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1C8C32782
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 12:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720613782;
	bh=0rTIxaiL1YmWIMkYjReNxBdnQayOZ5fz5byKmzzxcTs=;
	h=To:Subject:From:Date:From;
	b=clMdtQUWuL9KVTvQUEgkRVFHOUrWWzW0wmIIrFamXjr7/2TJnwTfbfwnSrFSzVx8i
	 NU9zS/OHBAOaj3cudR/EvBxVFwd1l8e3iW+d9RC5j8cqD3XBC7r1qyKLSfhmYQ4ZZt
	 v6IrlUiel/Yz6eGglheYPPKmHLzbyQa5LTOsZfprf1jYUP115wdmRK41+oez4xeSrX
	 VQPvGVJl/RRDpbc/YLQ+1pAdVhSwRtjH7y9Y2C7e62qx2OhSi6EFBNnQTv7tbinrC6
	 RCLalq0296nEMUrjg/jwomSVNLLeKunHif5bV7V1t3wii7IZ/qrIGdyHAD0wn1FowY
	 3M5Z851M0AE0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBABAC3DA47
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 12:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172061378276.7084.903640199811831910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b41070f25a01c29f53f053b9be907cd056ad746673ed8f65f82bb6738213fa3a
Date: Wed, 10 Jul 2024 12:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720613782
