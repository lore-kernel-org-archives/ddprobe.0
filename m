Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3281119B5A7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769932434; cv=none; b=ooD12FkPra6hIGbSlya5c8lrBqQleWQkWNqMgK6H39eRsP8PDI4HLdZsFE+k2RenRaucaQS2JEagf01IYbggRnnm91jrFatw70B34KGXJmX3PaVT+a31iNe3XU6Q2nf2a0eCvMYtLy7k0EQneuezfe8LnXiIqfZ/fPAazigEb60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769932434; c=relaxed/simple;
	bh=654okAaE+ywtBTUbu9g4FSgLkXZO9MhekTMtxmKICaw=;
	h=To:Subject:From:Message-Id:Date; b=XG+WqI6ZKVuqKhVAoqSBf9PERQ9iaxb83TpF4WMs8qlzKH/JQcFqatwYjda/PguPl199ukO0ine7rpvVt2mLqWVORq5nPH08g3N+palgd9i+3OKORnWj1piY2Yy+WS2P3v2EV1HMMSs3CTbPGBS2JtYNjz6N4GC25v7frT2M/2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTDWHaPq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTDWHaPq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1914C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769932433;
	bh=654okAaE+ywtBTUbu9g4FSgLkXZO9MhekTMtxmKICaw=;
	h=To:Subject:From:Date:From;
	b=tTDWHaPqfxuKj41AGZ7ciaUuljwmZ+xXxNFyFkmJvTpGnE4esM0CeedKgrcK4z0Dq
	 6KSaztaYOCwx9mMwbdODPvIr51e/P5rj0neaiF87/zOfDffHGE6UuqBzkIZaexHhX8
	 +oIn0ymYsVR+BkvtwIiarPpehStucYAa6ciM5rG8ToPvpNvyrZ+BJrwOzL5r6xlt2z
	 DIK6YrMA+nVkiUZCvyD9PdqLv2AV1Nj53lImIZwWnT9jjSmUU8lzpHkh9ZVqwBrj+Y
	 11h7p5Tg7Ttn8bH3H/NZCP2FUYpNg6YLINXabzXyqw928jp2JohWAGD51/SKt652+D
	 t46iUxwE02jgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CC2E7C70D
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176993243358.6253.15597751136458518830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 793fc6189d91f2d08bdcec8987d95809c1f60b7d6d36257501a1ed1e35db5549
Date: Sun, 01 Feb 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769932433
