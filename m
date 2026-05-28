Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7EF368264
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 22:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780006354; cv=none; b=al4EgdMqWzQun7L99BtV/X5/UDkAVee6yCzqMPNNdQqZmVbQgdLtICusv55h6tenhe7Z3MqN3DJJMO1jn4KRBfR5VF54clyhx+/wvI8FvRyPnwYVvcgrCwgAn0x75tRec/7/btlmtHU93vdkxuOZUpxYDkpXqPeTUZFFTerRI/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780006354; c=relaxed/simple;
	bh=6Zo7/Nrx6nckPzpITWoW0smEBIt1RiNRYFnblX3mXAA=;
	h=To:Subject:From:Message-Id:Date; b=O2S6QLHNNWrwg+IULwhGkmGT4loLAh2y18i8O8IEUqtn6JhxmLo4AGeghXNeHiCst9RaSE014ErFCyP5mqIxRw6Hz5HVNDjx7UlMPVGA8PZ/nfE5homqxp2+1zzmJjDSJeuxj4nFNJQfYb0cn6vRRXZ0oJ+198NTW1pAlJn+Ez4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mriOB97d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mriOB97d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3687C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 22:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780006353;
	bh=6Zo7/Nrx6nckPzpITWoW0smEBIt1RiNRYFnblX3mXAA=;
	h=To:Subject:From:Date:From;
	b=mriOB97dmk6beaQ87dArrTuMPgIRJsqggB/VDnMilXoPeZ0YFVo8x1NRB+GG16/X3
	 cUV/G9ebSnP1f7IQ191lqa8PN0A0U+2ABtFmlq4gqyBGjTuVuFSDthgt+sdIqDNlFs
	 DTs4SpeVA/Yy8E/mg86GekW7MT+5rBwvhI2V35IUZe21WU/bEI2w59udnzFO5wT00O
	 10vcW0shPGdU3gHMtBrSnY2WTt+WsXAvcGnrYH+n3ERn/kN8dGXsyDg5NLLd8/4jlz
	 cjvoVVpJhrakncsSrmYH28d6zo+vj3oaEuWstAiFksX8Kf109sKOi9VYLmA+30FeKk
	 Zq3tMmfq7Yeng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE4DCD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 22:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178000635369.9160.1431538321282087860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fdca85bed52c2f9f17246f8ee85450346a571cd9f0517b2ed40d13a5153f1d4
Date: Thu, 28 May 2026 22:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780006353
