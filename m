Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDA952D8378
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 06:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775196334; cv=none; b=INaiA7ZLJPrkJATD/Zz1YLLNjTuRAz6UIv52VYMIGRRipBEnFbMdBmz0b+DWAAcVjfwxllFb3TcCealCxs6jFIAAacVz8GZnV2YhTIGfxHELABSj7rENoQ3DY/NUkIDvSFTzBiHWGGXtt1TXNRbZwgCoStQ/bOb/dedn4+oed50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775196334; c=relaxed/simple;
	bh=+1p101l/zEBYeL1MmpbUAi1xp+k1Xzko2IVBntTecRo=;
	h=To:Subject:From:Message-Id:Date; b=qVECrL/O2H01SMbszQUP+L1YDq9P8CfKRGPQzEiZuWokI8565SnFVqmKWdBsp3dP+8eFHWzBAPliv08gzqlF9g1YHNFYXxJoCMlbqHErRvwPSwmKj5JZ4TjaEWpc3DKY9vwiTpf+EtVjBqfPo47FES9wP6cTlQNyMXU39UI0PkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tr7mw+qw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tr7mw+qw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6398C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 06:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775196333;
	bh=+1p101l/zEBYeL1MmpbUAi1xp+k1Xzko2IVBntTecRo=;
	h=To:Subject:From:Date:From;
	b=tr7mw+qwns6tHJ5y1FX5ZyGNG6o3tx5F0XWM4JTVIZXAwGYYyOT9n26vWzQs2e93d
	 ChjKj4ruXKlMVOkQrFoDU0yUmutdC6XUQ3QQh5Wn5uaU/emgoiVXjOQh5++25Pj2iN
	 f/1KAJL+1+b7FKHW4KxxYehWWoRhh4O9IjlLIPh09agFG3GAxBo42dwqZFXDi4pAvA
	 2fYY1IuDC7cUVgOvBGTNL411a7YxvcBRVujc9uQhajFXbNShiqIaR4Y/XYgPlmlJNx
	 UUCsQ3ZcNBlaLlkGHPvlzK6DDGE9j+zI01lczyl3N6IOrDE+1xN9+goS/cPfjnHAlx
	 79AxZUabfjxVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12F1D730A2
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 06:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177519633370.1207.13650602646574232995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ca3d80ce8c93efb3f937123db681cb6fd65fedd6ca845942d4f369e515bffde
Date: Fri, 03 Apr 2026 06:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775196333
