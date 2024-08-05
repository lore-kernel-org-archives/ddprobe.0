Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7B316ABF3
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722884754; cv=none; b=RzplYfpE88YJP+ke0ZWBfGih0x0GwA+v2bkfN0qYpl9yJPBrWkYQBD5tLxwq4xkR6myXUIsPTyU7N8NwvV+y2K72K6TcZhj2u5eMchg2ecBw/L+QriFpkDlRenexfDPZxHPkdi8rqCGduAM2YGNgxPNdOPa1Afv0RO+raAGGORA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722884754; c=relaxed/simple;
	bh=0EMwdWuhY2mdNISXXZcCjYzY4RhNCyoCiJ3FHly8Etk=;
	h=To:Subject:From:Message-Id:Date; b=gPkcFjfQ6ZVcUQGP6RL0XZVy4k+aHb0n6K0bjXGfpXaX658sH/DpGE8FHumLbbakHX7Ptq4Wupqy18JdujURwR5qf+dXfODRFPZt/eSDa1AMrK1jHh4+QG5TNKcXMwvTXyr5im7m0AFtDDn7GVNa/KBbYD6OtJDmshZi27kBHo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O9/swRg2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O9/swRg2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE26C32782
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722884753;
	bh=0EMwdWuhY2mdNISXXZcCjYzY4RhNCyoCiJ3FHly8Etk=;
	h=To:Subject:From:Date:From;
	b=O9/swRg2GxYHzcw0yvEMog4nNf3fXQJKqYwEflAEgP9FVlKVWGWR5eD/lqwz9vdfK
	 zupqr1OGcKLuY/oRnD4wiZcc9A+N9Ud6IzhYviddd0vFSUHzzbCG0Q3EevJg1zjhOP
	 8UJ9Ec/RQV/8t+ElDmLpBPVO7zQuyZc7p7lPu4oIF7swTMMovrz6Hbi+xeevhNxdjO
	 lYdC4S8FxmQcr4TZw5HuXwS3ru+ITMWSTa8Pi7+0PQrEOKNR0TOZmAm4ZJXm2S6JbW
	 HQ5XXOGNjiTmEX5pGix8Xg1eBTVGttHWh6NYJnsnwZ4bhwXM/qtFXXB2ed7kmCzm0Q
	 3KqYojfLNzOrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D71EC3DA4A
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172288475360.13869.2801276481097624618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a19b7b27adc1029484435eacc6e4ceb2248e357806a6457c85ef4d686e5088d
Date: Mon, 05 Aug 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722884753
