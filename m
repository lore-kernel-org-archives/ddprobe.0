Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D94A1F3BA4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 16:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777824454; cv=none; b=S6MNcYwg3FxscCM4HcaqkwATZ83h+3VnLKxF2qU4BwcTdnX3ciSsRzRIjD/TRU8PfUmmkT0M5YcDLRLYdNgOppUYoNJAEd/077y2RitleDdLK8EIhYkVGXqSdChQKV0Cf5irpQXQbpIEnjfj6vFlanrjoYUUWWWLxI2NAmKTeLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777824454; c=relaxed/simple;
	bh=HJV334QSsRyHXNQPzDE8zZL9bhDaurYWKxrqe5sYCtI=;
	h=To:Subject:From:Message-Id:Date; b=KwM3RWiTbXKlti/VMTgLRseWvuKuHG2JZlTmFLTQ2Xbkx2ajmWhok8p3dMXPtEXc0Sd6/ohXac/qUoIMnUvJYd0TACeFpOG6IapGxSrI+b4nf8weiZUqJtkntYTS/aAnrW/q3ZhQ5HZJHE408O46yw3C4YQSfbE6BHpUqcB1zhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JjbBrpud; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JjbBrpud"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFFEDC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777824453;
	bh=HJV334QSsRyHXNQPzDE8zZL9bhDaurYWKxrqe5sYCtI=;
	h=To:Subject:From:Date:From;
	b=JjbBrpudQrRF4SXgWdBbyHQcxvLjd/PMUAuHMtWkFePqR72fS5xODklkpSSobk5rT
	 bK63YgOeCVrKjFAdap7+JQj0iBxJRfJiBQVO2PBXhUSYA55pZiEuHT/TkUhtjwVmcW
	 Mp6tx1oO9l/WovC7f+OQCWScVTrL5TtCHpoHVEhQ4VqsORow/weloIPdK0Ctr5B87p
	 Nq+hg62bzue8+HAp786Sb/YO+c8l84feWbV067CqRkqRk9+YXZNmMMgH8Aci0pR2qq
	 58X6qUQvt9h7vkzEpjxDVxQoWLKMdm8J88/MGp0Vuz5aU6IoxccPGFdOCEZ2q/taXG
	 ASf4Gp7T8yX4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8D2FF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177782445368.16383.14163245871096084332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54c66003f1144822482a9f79720d9465b31bb9bc7609591fe8b55a2f21fcf7cd
Date: Sun, 03 May 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777824453
