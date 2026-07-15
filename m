Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5201E3AEF4B
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 16:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784134114; cv=none; b=bjGnqUEjPtV+rGHOGn7jMKJHKySZRBDPKjwBiQ6W16tMiJdLVJif4XgPinvyqn52ca/vzKgbDHMDOONic1de0gC7XqBnEDljRvhPx/M60YcYog8fj3Vlvxy/3X2TeST+XYRUoUWe6+THlglVUKO5c1BtGU8OOiD1MClHQ2RaWqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784134114; c=relaxed/simple;
	bh=oEpiURThEB34KWmCPdOGoCeP09wK/kCAQdCOIaQP01A=;
	h=To:Subject:From:Message-Id:Date; b=rWgVQkNsqvRtLEoyniNuW3oZJViDS2p6fmjlQGJRC6wn0Y5FbqNId8D3KrIr6c+e+2MVRr8ShX6u0jiUm5Af/67ahev/pA5dZeq6wvjgrNGFUIFqIg+6Pt6ezZrCSGF2bhriOKyUzifD63jd2peQ/dfhn9HPMJ0y1MdgyMTfQVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTUcUvr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTUcUvr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBAC7C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 16:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784134113;
	bh=oEpiURThEB34KWmCPdOGoCeP09wK/kCAQdCOIaQP01A=;
	h=To:Subject:From:Date:From;
	b=fTUcUvr4Lx+9Z70o2eoBRZ8yTYwDgKAa/cxn3hspxNJ6QUS8ZCJxgpN5Tq5MVfLtT
	 xE48xE4Qgw7/XiEtRVt7moQqKQAIiCohi3TxfsRVmp5b3VFzTldSs9SOQQD/w6CAXf
	 Q2tTwVb5paQYmPtu8JVAQRMgtwsTRHb0JPSUWT3a1snwPmlOxT4bpihzcBM70ZfoEA
	 adVtxOv0mX/EHmVO9ZYBKI+dafVCtpN/IOq2Ntx7HCOhCQ6gixpEVGfIvOwUqtTaaQ
	 JhmrG4nF8yWCeroD44aFFIqlLDtTw/+A0XLRUZxA3X/bM9jdUqA9NWYXqpXr/ADG5P
	 jSkN/QDoqgHyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DB3C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 16:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178413411368.9059.8225100734771285758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b3f757752bf197a3e6f1eee191fc4f57893019060f50c158c5514cdaa88b322
Date: Wed, 15 Jul 2026 16:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784134113
