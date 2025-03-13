Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E752E3391
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 01:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741829934; cv=none; b=ObuTfx2fUhOMXJaRXTbSpqYjUxzxCdlpKD6vELgkNjnxu+OI/SU/UEpwheEnCniG5YqOV5qvZfhXDQ+rO1UHdB1OreyaD/A4BjeknkE++1dJ1EHTGgI6vdtaPGDbpr2tLg4BMLaYzWlEo2/FHL7eDeFgrTQmVOXehTjzfE4ik38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741829934; c=relaxed/simple;
	bh=vuuHsjFQz9XrWF1Lc53Y5sLS1pabWew9HEwrs6l5260=;
	h=To:Subject:From:Message-Id:Date; b=ImtCYWKooDgz5pNyAeFmuBmvnxCworlDR7nO3E1mlQqwU5X/Okjp09VvwkVi4mDx3Xu4EYTXnAOMoU3DSL0uOrMYIyr3uUlWZn4a7bKKKw8WaUUegUeMmj+8HR7FJdXTtfLtaU3oTAIzZfPY6RFfsVtVGabKv5ymqO1ymBvwN8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSi4jaUM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSi4jaUM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8334C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 01:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741829933;
	bh=vuuHsjFQz9XrWF1Lc53Y5sLS1pabWew9HEwrs6l5260=;
	h=To:Subject:From:Date:From;
	b=OSi4jaUMgL/nkaPLJwR1FqWLHq8oNR+0D661Te6NR5cTJsIDiZh3GWqryA7E0lp/3
	 1MMlwdDsED+zggXxM1w3lG57tjqvO64qkESgZZBmfpHp850YG9w/S6onBf1/ynR6Mu
	 FVssWtVpxrSufE8mwmEvP8PAzXpXn+tXv7vtcP4DvCuZPMuTH4RqJpiXZNHJMC4ovc
	 gapceASTkTZ2rbDHcD2rm+JgU7pIvwnuHa3YP2+JV2LbE2jr+AeLyUZ0Kv54FUgxL5
	 jP+JL12BYVR59qdGNqy9SP9gWnfenpVlN5RgUzcb5gz1HPvbxHpCJJiW4uxoMX3dHG
	 egt20lo1v5Kuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC66C28B2F
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 01:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174182993361.6317.16199740409940564493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e893eeaaa39511ac23ec20387fdd59403f35ed76803ed9462da3f62ec0076a34
Date: Thu, 13 Mar 2025 01:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741829933
