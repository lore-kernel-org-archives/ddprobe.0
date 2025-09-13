Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217F2A937
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757806194; cv=none; b=bpKYpfZYOGdXw03oxD98M8r2zh83CmXwp2vC3sDKIM2TG5n6ex4rFXOpDiTXyhyQJbswGUJDe/ZsK1yalrZC2uHST3MTU1ZhYmpJ4zFfJyRCzTm54UW0RNvogAzKW5KMuE2ARYqsQiWIBSbxCaIqaCMZDgEKVEvBJYWMwP7w3nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757806194; c=relaxed/simple;
	bh=GL5QvmsR4VvV2kgu08k80sUu+0AYfwtLyK3daCs4bUY=;
	h=To:Subject:From:Message-Id:Date; b=TJoK+tLuFJh9owKecDqLOwkTSz2by93ZpLSW0STtIiAaAgT2ODWKJ8toohot1ObHtVvPwY2xcX4yNhdvf8DrKf6bwCzb0CVaFJEdbfeTBkP0FtCyWE9TLK6IRKlJ1S1HYB5KYWkgd59qdZOrMyq6P5XOyNFuznMkBkoGJBBEy6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lNnDU3Dg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lNnDU3Dg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B61C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757806193;
	bh=GL5QvmsR4VvV2kgu08k80sUu+0AYfwtLyK3daCs4bUY=;
	h=To:Subject:From:Date:From;
	b=lNnDU3DgMdWNvCTDUvv5PVYM5qKH6JsUAHyJpARuhnXQRims+Jj/XaBWUFdmkj1Eg
	 dhLCOH+e/9erSVsGhvKTFe4J7cOo35ASNxBvkkqsH/LuFe+8VOKWXKlWBtUSjIYJNV
	 GEm4wGCxbwQ8P2JzYybn45FnxydIb4OmztkP7rPzlFYh6UFhaOBdzvfk1jm7wEgIxN
	 2jylaYJvcLui59nvR6QxrZUUyrMEh5Ay8B7xuX2iq6jf1fjnO4oziSyL9NymOdnXSE
	 wduPKBEQxihVfvAMd/pXQ/NSQpe4+TVgflDdLs9QB3ZKh2PIgdUc6Fbi1Vma7XylWA
	 +qPvvwqIPElGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E5CCAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175780619357.15659.2396127305130107235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ceda709dfb525b2c581ec02e5061309114e04e7c28378d7d79fa651a2bd8976
Date: Sat, 13 Sep 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757806193
