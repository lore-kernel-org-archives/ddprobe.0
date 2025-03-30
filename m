Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C1E1D618C
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743361194; cv=none; b=NkO31yWSTdj64V5mLZ2vcjGr4vEIdUikv/ODGnI0q8ZspiOjcdTMJ8YAcebDIsVqO7XIMdv2FTq09O5rNQ4kojNpl5XzRCacaneYje/7PXy0YO8Cg0qVKw10lIrJZWFeKda3VIVyWhyTciqSqRkioK/1BqrREH3IZk96fIXP7XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743361194; c=relaxed/simple;
	bh=vrLBf/pNX58NIT27c+7L1GqFkY3a1f8rjURyB2lwB6s=;
	h=To:Subject:From:Message-Id:Date; b=GC7c+OKPiEvRT9rwubNuwyBhZxAftifnLJAT52ASdB2r6YsMJ+QQsJuDvH/PjYNpsps7QdyW4/abkksiR4Btuha6GDFKMB3itAOlTRJsl8YNSQmmwQfBfE+gBJlypgFAOZAUYG+8b7NPZu8AmR1b2iPSDqzf2Vs5mR/0sbVHiCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XqHB1Q36; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqHB1Q36"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B36A7C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743361193;
	bh=vrLBf/pNX58NIT27c+7L1GqFkY3a1f8rjURyB2lwB6s=;
	h=To:Subject:From:Date:From;
	b=XqHB1Q36VXn7KH0Z3IiTwSOW11w3PGYNOfX8MQTrlG3i0kgMN59bYS5COhG3Jm/JU
	 VpkHhNu98aVEv3PxfBjzARVste08TOhulwyxhXo4nnDcqxzJ14wh8aTSZL3uP9UU5g
	 mNjVwMaSzOJf+UnZ0o81z0AZ7Mkn0yowoj/gofvOomrXywPOc8RpukTGat2ePQDHkP
	 T0lsPNIM/a2ER6GL7sZGXQYU0AENl7TtLfpEPCsMaRDvr0jrsla4+iici8Z+jJcmSC
	 /C+6IqyF9EizYL8YWulAW6foncCiiTyh9NXUudsrdlpJ7aCB8JIO6+F8kCyAoCLcge
	 Hmyp1UM8V0D+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D4FBC28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174336119360.24259.8625729126765469516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d98d60a378bd38d4dea413ddc87bdadbca0a489e815b55a51478695856d03fb
Date: Sun, 30 Mar 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743361193
