Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099CB330664
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772888094; cv=none; b=D1ozg1W1cpp0fwhD9heVLY7ouv9GVzZwxibL5mRlS4mnqVTnIsignYmBSljSeiaC6+BqocF+VMA74O5CTHSOMe5ta5g7Xvu4xFKW7qOYB+FopO+43f0RUvGgmBwAJxuQWWXPzkLefUHXL75efqJ6LrPZ8FfqzjE/loBtFupFj5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772888094; c=relaxed/simple;
	bh=YFSI2kzZn2v2ooceSP2CtXAXVqTrTJHZjYaZc4xzt5s=;
	h=To:Subject:From:Message-Id:Date; b=ozftwOzz+a8siurrOH7AsY3YO/aeEf0axzPUlpUICF/ffJJQHpK92LrnKJGP1deSvy+r2IIBxhwS7lg2TbIWq2YM9132fJXEUdNFj5wHJLtzDQEGgzEgTvvM7a8zAMUroh9OARU/Q0w1mZUHTeinjQct/BK1XDVnJJN14p7iP8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fABkM5fE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fABkM5fE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA955C2BC86
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772888093;
	bh=YFSI2kzZn2v2ooceSP2CtXAXVqTrTJHZjYaZc4xzt5s=;
	h=To:Subject:From:Date:From;
	b=fABkM5fE+oJvn1yeed3sCxY/ElNnp2y8BibjCHPYx3bxrzZwgtBzdiGbeCZ1sSXvM
	 lk/Jr/PZ12ZOkNjAkBN2PFv8zinKS5fRVlYB9wI7cicEVbOn6ASn3w4BpLYrNPYVmx
	 DDr+mMJFzIC8XoAzvcf+Zd7Ae2dy+Yvd1Y6ro0D9yPmVKxzLveEZuEIC0mBlBy3JGt
	 Wd4QSF/SJfKvFB6WJmRms4Dp0cOSmV6Df1rDaKanJI7aGJew++4zG6F6aYmA7lmPrV
	 G4RZv9Twr/O1K5MxyGPKJAZ5kP0ipMAyQmH4JIhUWJtRcUXc2Je3Dyrt7/qp/Bm2jq
	 IE3DQ7WzaJ3qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968AEFC9EF9
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177288809360.9526.9701268551651202185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66d717e5f76bef55bffa42fb446568ecedb440b5d7746a0d7a5872852ec17cd4
Date: Sat, 07 Mar 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772888093
