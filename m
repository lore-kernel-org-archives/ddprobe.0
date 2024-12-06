Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3819D213E8B
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733528154; cv=none; b=LO4jL0VlNaknvzpYemQSUAQ4IyctpWQqYrW65BG+1NI+YfbzdKaeRenOktizJ7s8GKG7sfHv0eTOX/dnZZkyk0QiEfpPjjqaaGO5zSg7IP1lUCim7CHGHfInNQhuWwCTkvso+ZzDxEf7x2bLlP52E0Q9PBmU5D7zOLUW9rFz+iA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733528154; c=relaxed/simple;
	bh=Fck4xYKaMCtzwbeT7UyBuYhPlQ4wL2fHdPNFcwK78+M=;
	h=To:Subject:From:Message-Id:Date; b=AkmgOGZ/xH9wsaYN+Il7T7QtK98LvvYlhaMNsYBNgJKp4miNYMI47kUXYynLk3KlabZIGxmKOP6Gc1A6SBNaOsnsF7qpCP0IlPAEqLhTpk5bz/5k8ItxkUDucnIyUHQb8UjRBWs1HzcSNYk572dUO94ojygx2fyxwso6Dh2s2Pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3b++l/C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3b++l/C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D1BC4CEDF
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733528153;
	bh=Fck4xYKaMCtzwbeT7UyBuYhPlQ4wL2fHdPNFcwK78+M=;
	h=To:Subject:From:Date:From;
	b=A3b++l/CnewzL0EpcdA0L/h///xHKoljteziKMBMm0XJBNRijsOKNzWg7UPe91Z92
	 87DTt5vpsQPifXxAeCuE1sE7qTq4nxI/fVB/idrWgocfRCqyuD3KUh/ZlP3jx0jtUB
	 pZsCBQhg7wOw0vVfs08Z8vXu9cwfbWuYPCa9ylp5e2hj95WxGB74kcW9w/sFKaOMkl
	 An9Q1yNgPWo0K03njOaaLL7B4C0VJSpH8b5pPmBFnLPm+aselvNolYJGvr6gzmyjJ0
	 BdCN0PSEIhhVXuccZqPpu2PLhPQwafoh9SyK8bpayMeOFv0a4HH78SOqz7Xh5hT36k
	 aYVGw5Oi8y2cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5B1BE77179
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173352815366.31027.6174450949007528166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 767223d478a51180a5407e75b1298c945e574d220c08c5670fdb22c3960ddfa2
Date: Fri, 06 Dec 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733528153
