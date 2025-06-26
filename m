Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246EE21ADB9
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750977594; cv=none; b=Qb2yFVQXc09y2yQnL7rkc/fNMZgM0fMKjWsX+aNv05G06TB87JmotBWW5b1U+fuXV4fCOdt+8twjYRlGAzk/x36AbOke4ASWDAzdOtOgNqxCLuaXMIoFxrtLy/BOYSRflMLKl+Tj2XmYx/iKT5huUtmmgiHAGUbuf3WTm+Z5kqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750977594; c=relaxed/simple;
	bh=eC3VIq4ZqSWnX4KIPMfRmCqnajTKLGESpIO3nP9rxXg=;
	h=To:Subject:From:Message-Id:Date; b=G4kNaxpr4WxWAHczTRwJQnLmyi6r1Q/k9hS95KXT8Vj8eQBVDbXMOxp/MiJepoE1xlAln83CQ9u8p7ch/BV51a/6YxeX7JxAoPZ0V5AU6IMkOCjY2Nt/khmf97BQJG/jMCDhjCk1FZRSIqLcKPFKI/VLTu/g8NKdVHIoMGJdJEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L8C76ZsB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L8C76ZsB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C5BC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750977593;
	bh=eC3VIq4ZqSWnX4KIPMfRmCqnajTKLGESpIO3nP9rxXg=;
	h=To:Subject:From:Date:From;
	b=L8C76ZsBkwjkwRZA6YYqwV1WSWqZf+SNjg1zlLjg12j747hOOlirgDu5UFgvNHd/n
	 8SGyG+9tGfju6p8eO3a2RG5fK4XqtX9CEgFb2XXTb6JmvK7poPl33sLA7G3oIDRaTl
	 DAkgrpz5owR371923UHIyggmwAaiyRam/xeBsedZrr7HffmlTs2skDcf+/9jmsactX
	 LnpY9DHYSnNWsc73bYmSTeRkpvWLtOEkiC+RIK1rXEDheDOesNmAhzd057EzYHzv23
	 NuPn+c6cC1iowTRPQQxRENPX+hiOKBF9rslhIk3wj4TxhwlA+W/d6Kveb6rPIgPX2H
	 C5nrIkllkEevQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9347EC7EE32
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175097759359.28626.7155341443730328315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc239b8d1abb23bf30aa905512922412741d126e20a07ffa38154934cdbcd7ad
Date: Thu, 26 Jun 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750977593
