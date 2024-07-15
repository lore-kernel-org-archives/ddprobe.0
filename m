Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61EEE18C335
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 14:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721053463; cv=none; b=kWQPQghkv2jR4dHZDZCpIYJzgbIlXWJ2IP2euOVPr8iv1vEbSGdDsH7NoxZw9S9eiGZs9cq62y4IMur1Bfiaxiyw9dReXUTuEerHM4YK3E4Z426Ez/jdMAxoyDNRxHSx5EmTDMnFOv27mplMYkXs/5mSRid6T3aiMg4J+duC77M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721053463; c=relaxed/simple;
	bh=gQvD9iZJ39fORIMlXxXd5NnQ7dCBVOoLwPQy0aIcJcU=;
	h=To:Subject:From:Message-Id:Date; b=rryuR+i+giunOaHUvoyRj59NSdp0LM/79zqqLIlQg59T5/5K/Uk1sx1yByzI6GSnDEUhz4No5/nn9/H1cGKf80iC3jo7+qm6jaF0uRhsnYHQ+ejxs+JLk3wT0tzF4+meL+RJiGe00SVbE0r1jPxJJGySzha81N3XIqLe2zazZjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LF2eUAiE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LF2eUAiE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5452C4AF0A
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 14:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721053462;
	bh=gQvD9iZJ39fORIMlXxXd5NnQ7dCBVOoLwPQy0aIcJcU=;
	h=To:Subject:From:Date:From;
	b=LF2eUAiEBWPaV/oIUIeAFrAxbvlg3ZbUekdbz1WOk1J0DjSp+VPaDNS4uSslV3mrN
	 kBJ7wFYXPePlBLCnPYZgeosDC8AP7xw9GJ8kkvG53olIRoLP3QoklETllV0X5z2jyk
	 yYvkWtznXCdZaUict/XYAibvR53g9OOx5ZOVER26ewUqyBeCFLDAZ8Kk3VVQeDU56v
	 srBNnihvZKhw2FID7XHgIJWvp82EPbQu61wDunxg4GDJDYqTLI/7ZoIW78KcAAXy0B
	 wFcHUBl+VY/CMwr9SJ7TTorFDdH5Z7XpZImtNx3oGs2KFfk/40du0ubCZ5rd/kpwJF
	 PNTY3dcR2b2JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C140FC3DA4B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 14:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172105346278.12256.328687189490317329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30d6926386c755e2f4f04c7dc549b5d14ce834bfcaf2d06fdfb7bc0ced3e02ff
Date: Mon, 15 Jul 2024 14:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721053462
