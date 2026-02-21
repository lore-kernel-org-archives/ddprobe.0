Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5DD1AF0BB
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771683294; cv=none; b=rsDSn5BxT0VluwZNYCbIftLWVn3hBk3AGDQA+G1o+5GAWsQzDu9hwu9AkxFZia3GryEaD5vhInxFBYLtI4/4dzUsmlzmyaaLn7ru3Imig2jtCClE3u6rIuebtJzQEL8HLHFsfLj1PZrvLAr4c0FeSKE7dhXGUp8v3u/JJBZUDXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771683294; c=relaxed/simple;
	bh=wfs3IS4PGOknDlT3dVyrlmnvwCMqXwVfYHWAL33V8E4=;
	h=To:Subject:From:Message-Id:Date; b=nTucLELaTQ9I6yW7K9IzFJxhdYZe46nylb4y3d/qNtmjNMHq9exPhbhJPkVxaUEgRDWPVthqEAUsDMA1bxkesOYIjkGoc6jyGMQCbgHFkr5JzZ9o/luuctq+6ndHZoZzwxlkOZp0ttZGqiWpQsuPCV2QuVn8QvR03X6yaqVX+/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VLqsCL9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VLqsCL9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5247C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771683293;
	bh=wfs3IS4PGOknDlT3dVyrlmnvwCMqXwVfYHWAL33V8E4=;
	h=To:Subject:From:Date:From;
	b=VLqsCL9JLqZkM/fQRz9ACg3GCyr/HxSHBGLd90hI+EZLeUoUPCnxepf/mK9f2e/WH
	 JaFJq9DyV8xvTuHTwsX8jfAFalqeSBAdRqFOhjmTVAWDVhJiYWzSGHNM5yMTRWvCLz
	 3hoYWiLquvuxGP6ItCVPS39O/82LnceNvrnoQgtg7On45sCdJSJ7Ni7RRhF2E8yfpH
	 ThRDH4zuXxEnB8Ui0G+3ppxMOlQJE1w8mg80qUArs72mvgW2Z6NWxIN5GXn7CINCK3
	 1JbeAqW1crJZ8fDnqrybFEOGe67dt879+zcFUKCovF6PrLBTnaC0MeGWAFMmZzTz1w
	 djgpOAf3HjYTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F165C61DE5
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177168329359.21262.11262689978698146863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e293a94f7dfa3b3436fb0ac84f0a1b8ff24778f641a77205d4b79458fcc85e73
Date: Sat, 21 Feb 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771683293
