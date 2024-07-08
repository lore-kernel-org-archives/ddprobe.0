Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5650519B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 02:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720404383; cv=none; b=tksR9fM9BbvcaI9CMn3K83WA27dOIKj0eVgpuoewDCwy01VsBZp6aCobLgnC7hX0e7b3GW3hx82LNUEfeJ8iUIYoEWK9PWLp0R03UbVGQ3J921NNyEtGOE9AS3k6X1Gj5IMltaCVczWOKhqkxNaVbdq28vFmaRjz6dbGvZcdw14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720404383; c=relaxed/simple;
	bh=IJKUkF6JuRl2Yra5SydtjLHBEQVqT0u3CzSZe2bffdk=;
	h=To:Subject:From:Message-Id:Date; b=DowKnfBfQL4gCVWN02cH+CxzeudBtByze7Db+wgY7zGVXE80ylyESkx1bG/2NiK+K0STS1/oMFQMcQgTPV3nxqTQ+XkkVDAaW9wpo7BdV4vnKjIgK2cpbtbGwwUHrbno+lGMSbkTCz6LS7F8gsf6KdXGSHPI+bhKm+D6nFM/aHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eD/fMr5A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eD/fMr5A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D798BC3277B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 02:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720404382;
	bh=IJKUkF6JuRl2Yra5SydtjLHBEQVqT0u3CzSZe2bffdk=;
	h=To:Subject:From:Date:From;
	b=eD/fMr5Abyv2fevF0r5wu+mmYyhHLf7gHAVeKzYTiDneR+lPtZIN+wQhc8ydnB52W
	 c0dXvYg22pJuNCBvwqpzPz1vARuYO8eU0kYEgZkTODEe+Ig4uYm4rbDVxGIXfDpeUm
	 rYs4m+GNa4e4YfjRwyRmHE0FFWwtFuohp7pyDe4sbJ0+WUw7xt9lex9UqEYdRZc6CA
	 Y8wsIDTB9VG1mnCMyqW+CQnoYwI++vFnZcfYAAsQFfFw6cAw0Fg0eBeDApDkA37FE4
	 RjRQXZIsKqcyxdyS6k1vwVVmEQgWGTSAl9jIOKO26hgHaEckIWH5DsXXaAK6+nKsmv
	 uPBqXf4aizEow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C054FC38150
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 02:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172040438278.10221.5092472285925734666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 310f65b455b8e759ee8b9dbe7c658d4dcc095e8106235d7fb8ecf2abbb826c14
Date: Mon, 08 Jul 2024 02:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720404382
