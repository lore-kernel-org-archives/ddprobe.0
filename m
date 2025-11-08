Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4341D5CC7
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762602594; cv=none; b=IJIHe0pLc1Iq/dDvKoFQ9vqxLlk0z8PahbHloV/sSlPtmTTjRny/2i+060NeGCocCicfxDOn5fQ+wzoRJioFYtgFORmW+Weq1VPkn5lvKgF14x9z7WsIMKsWlom8T+nHRn1zY4JqNNlAYmotk5VJBVRlaIYmN2krGOlXZNS7HKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762602594; c=relaxed/simple;
	bh=Z1lM8rQMIrmxTcRvm3c8A7iK5NP6Go2+rMPEdykYcEU=;
	h=To:Subject:From:Message-Id:Date; b=I/Cw44CLgpt6jFlJBrDc3GFi/B9vTYIPH5VQSPfHKVg120Q7nECkJSJgZgvEr0s1xzcYbRnNInDqg+6YzgWJXe3kr6N/FlTOl3n8EYsRov0v6yNmyPcK8X67tUzkm6fjqyzJd1W9rbKbKCGjju0rHQzYId7vBDt9PNuNf1fdMdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sZIlyXz8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sZIlyXz8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D1AC19425
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762602593;
	bh=Z1lM8rQMIrmxTcRvm3c8A7iK5NP6Go2+rMPEdykYcEU=;
	h=To:Subject:From:Date:From;
	b=sZIlyXz8LReLAp63cGUq2qIpKmYM9Os+9qdTiJiI/vBTdAVLugwrLxBlKclZ8WBMt
	 QuW+jEpBtvRcoznZE7MPpXIBuZmqMcj1Lx7XCAJuOHLRgu89RJtqgSeEHidDYMPrdj
	 l4g9hN+niPz5+9rb1iux03/P2mRQTfr9ssE2t1r+k+FvOJUgG923m9jMETyguTFDHM
	 m1dfMsVJgJnCyEgkZycYR7L0QkoSlp+OnEC+6u735UYh0aXWAruCbuuI0iawEU7z41
	 lt4val6NhQBy7sDo8YPnU5c7c2eB0QVmnPuIV/99D99TrgVxfw/7XFDhuBeHbXakRh
	 nWXXWixo3OLzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922CBCCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176260259357.17447.4812176384736828503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59b92f2f51a65db84a259dcb2c7d5a4ee211e1ad326458caf6994b42d7864500
Date: Sat, 08 Nov 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762602593
