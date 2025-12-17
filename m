Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A82A349AEB
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765959234; cv=none; b=Y+59zyKS9oKqv9ouygP/r5TZkAGsmcTtLvnofbGp+xuQVLDnOeu8LqhtkCMBiP+TMYwlBsHv/XIytYWQVR2sxktviNLw1QEKr3YEuc8kArhLff7fSGXZxRWV9jd+DOCbF/4ZcQkb1qcve9hzQ+t744JZu7aE0x/ZnS4iYFDnNU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765959234; c=relaxed/simple;
	bh=NmsjVI9PYJd7RqLqIEy/Ez6QdFRcStscZF71hes/YNc=;
	h=To:Subject:From:Message-Id:Date; b=rIkYtlkzYJbeJVjgiDcFekFAWj8c4RShpHNSMJrw8HAylBavHlDOKu0XCHCrG1nadeKFDnzAi8Vqi9WrWV7xSqjxhKdRWQGHh5dPuFLjBsZE5iNRLF5X0ppFIA14BUOb/UldjcqMnksY4UjV8JfRpFfrFPhqpK0YlFwaje1zxuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KOqWCxpz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KOqWCxpz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D0DC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765959233;
	bh=NmsjVI9PYJd7RqLqIEy/Ez6QdFRcStscZF71hes/YNc=;
	h=To:Subject:From:Date:From;
	b=KOqWCxpz6A6hAaK/XPQojF3WtY9DXpv4ZMkNVpk5I14uKhJVZ6PtnhaDXqwvqyVi2
	 ZlfqPzJ/Pua2rVJTIDudkd9iDYh+8VyB9ggpazrM1wyKTDubtqiI5p2+fSrDpQ/j1m
	 1Yw/tHFt/fF4kRP//LZW498s2roQ06ul+nddCd+Ez2JTTeo/mcnNjiWzSAzlmrNaUz
	 hNI1VteSbpdiBO7TWFj1+QXH8SmUdCevFzT1830wTRQ9OaR+57QfMdofXjpjLKffN9
	 2DhwSufRIjlB9AyCPid45fztkhZkAvMk851BkEzZN3lUEd43nka6vx6QWVg0CjR7ER
	 I6UgB6fVlf4XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9704FD6408D
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176595923360.14198.12012625934412367236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf1540afd100f74a6e0c2cba856310b222445bceb9ffe862e90c7255b9e71364
Date: Wed, 17 Dec 2025 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765959233
