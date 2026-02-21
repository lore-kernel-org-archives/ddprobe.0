Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116E9342521
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771676694; cv=none; b=GoLkil8VnD3jelMAFNT519fMJfPz5U69LSiVjcfcq8WlUfsXOPZjxjjCJtKvTxwQAEj6mdTZyoMSzKMW9hWrdk7511b3yI/DDKH+cLuQRh8+RdofH7uwJSyH/Aa016OliU9wMsDeD956qP16eW6aNBm4oQpMC1uThq7/Knk342E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771676694; c=relaxed/simple;
	bh=FHflLAzA9bH6gARNIsyxyGZjm63bFGmUlWkmANJqvoQ=;
	h=To:Subject:From:Message-Id:Date; b=CceGdI7ipNddkJdMydV41KISoNihoWv9OxbObCBoVNYO6bpLi0zjAcPBeyvlhmgJuaHXjAZAF9rwPtnjNzOLeFtK7cZj611Xo9v6y0hsU2BP3sHfeGddMeLGMsqmlHLY24Suyd+i70nUIvz5Yc7mo9/XRWlScsznm6Wd4GaKoEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BxCo3kNI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BxCo3kNI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB48EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771676693;
	bh=FHflLAzA9bH6gARNIsyxyGZjm63bFGmUlWkmANJqvoQ=;
	h=To:Subject:From:Date:From;
	b=BxCo3kNIL9kZdtR+FgsWxtWZ2cCOzGt1UEVQbuMKgSSzGaRkgnmv018sEa/Zkno30
	 TaXEF692298VRYz3NlOhj+UgBP228Z1d6xVcwQWiZvyYEXfes0CNgxsK3DiF4c1eHR
	 KGgiO9AnTE7+WBqx3dyE2ujQMVfxyEcG7BIsPm0syfdF6GH7vho5MDFGLEwAF2LMik
	 iJs5VWfuwUaOUZypcT2qOMn9F+Ih2WNNBz6RpBAmRKBtC6VAuS8mp+QxV9y13aky/I
	 6ve+9RROcGsxgqaruK9Sj41uc89sotX8xrnl7MY+/QSjTokjfBBuMWTPttoAb5l3LB
	 LRuhuuQMG2UCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8E3C61DE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177167669359.18615.48526559295360668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4713c9158ea2729654d1328f306ceb021bc95ba1afab17873df7bb6e9b4c0f0
Date: Sat, 21 Feb 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771676693
