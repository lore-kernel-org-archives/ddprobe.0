Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D554242D97
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767087234; cv=none; b=i/LMJO5HwXtQdtfKNlkmOb6sMLK+HDVvy2DF6vNNCAFWCGu7B8XYuc7yluZDxoDm+2AeX86dQPjreF02nTlXf1KxL0QKlRlKrhiDjqpbQuvSd8BrnOxFlWcje0xRccAH/ujiG8RBfN3/hgfCiewG7q37ru6LLxw36WEo1mBiMB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767087234; c=relaxed/simple;
	bh=RYlxhagNvaSJ86rfuewfXDSywPlqRsx81tBwdDAzFuQ=;
	h=To:Subject:From:Message-Id:Date; b=bhPFKNjaM30GyAqUMhZYjAKImqeXvT8u+3SDmgOuBFObEkse9LHwVE2Zxbdm1D8Jgk44oKXEMFrN7Py9km/bS0YY+QyeKsUm9hY0bF9hQY0MDq8evXZrYB+Lpkqq8GuIioAKT6i/cBuqYHnUqHBKxkEqaRlofVxeETLndajPuCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgDyMfk6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgDyMfk6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A684EC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767087233;
	bh=RYlxhagNvaSJ86rfuewfXDSywPlqRsx81tBwdDAzFuQ=;
	h=To:Subject:From:Date:From;
	b=fgDyMfk6RV69hd0dIe7RMVtfH2iN649ulNoHqbfeLmRwEUzL+Ap3eHi6XcZHrsujj
	 PHOx8AsYNRO6eqV8clE8JH6Og6mNUG+Tg5Qrw2Id1RmCuWqxPSAJwR1UbqEwW4i2Jw
	 zppuuN+jKo7AGBx3hfZYQX5YSre8W+DbEVWx8sx3QU6tt/Melz7z4yzFyeELTv/SQe
	 vxilmvx0isD63e3alNtcr9bZPmTVT2yBslyGfD4Q//DZPfO9kKtqUuDAJyBmQnBioT
	 eNMWwcoREM1/YK6rjfBjLgchUPqPvyh8d9XAvguRcBH18R/WL22y7Ja12oxk39c+xm
	 3L8hnk3xZbSog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92270E94108
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176708723357.30754.8013234366320236070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a6e24820cfa6bc2c7f7537017bead1fbfbe00c68acf5deac9498bb1498a6dc9
Date: Tue, 30 Dec 2025 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767087233
