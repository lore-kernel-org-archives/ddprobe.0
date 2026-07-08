Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BF639021C
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 23:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783555114; cv=none; b=cdyATb6jnenm+Nx87NTGP1GWVGKpk9012QBTPyf7MJC0tBR53hJAyPofNmoOoxOCpascPbW+L+sVJsR/SD5RGUTQed5mt0JIlwOnQ9u4vykORhFZWypAPoUWTGate3QP8XAob+Q0dVrH8qbs9C6sjyGwEC8sNBYksCINv/Ojrgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783555114; c=relaxed/simple;
	bh=M/reR+AeyoMDX+aBWOgUsee6CVF2g8UrDNjsbXimBJU=;
	h=To:Subject:From:Message-Id:Date; b=KYaaB0AbIJO8sBh0I2R6YHlumPWQXXKRs3d2rlWD0z0qWhVFhH/iAgsXCDRTo6TFpLPgA0wb4Q+9hmegNarAp705kQZ4E9/x8gTH/kYJaaav5kmM/KiqXnLUzXgKRmmxBIve4WowlboN7wZiNdy32+QjUcmOZFy3KS/SJ76ENm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9H97iyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9H97iyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCF3C2BCB7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 23:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783555113;
	bh=M/reR+AeyoMDX+aBWOgUsee6CVF2g8UrDNjsbXimBJU=;
	h=To:Subject:From:Date:From;
	b=N9H97iyZLK6gjPyYbladKHTeUVk47C0Idoq6E9u5nP+nGfmTmEvTxCn9hAlCwFFGB
	 JMeiZMf/86o82D2wsND35Xg0rzs6uv34W/r/atHNgbXK7g2uEGpowngONSKTgfyaUh
	 q2+s0uFjGFn+Qx8bk2+U7wmYnIUm7U2KQ88NZbrLtko8BZi7dZiJ8VuEMomrAM82YN
	 Mwr4e9NFZlhYEMGlBqgKSVVXVJliv6twVPNRdXBkJu6vXQ8aihG0zjK5tUJoyqs05Z
	 cjunkaWFTf8DMGE86QMbMBubF68sJW/WyANlnPmLxO51Q8XbcwO9NOt17FUqbGsmmw
	 B6Avib76qwLqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6DDC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 23:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178355511368.17129.123782094386416454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d109b0460d6afc29bb3d0f0d104059ea280cee7f32ff5561e04cceda8941930c
Date: Wed, 08 Jul 2026 23:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783555113
