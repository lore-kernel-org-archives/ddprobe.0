Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBE12E3EE
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724310354; cv=none; b=PmluFjDAvU0VQrvpOguiPt6mnYg+xN3QZJFGEtW5nVBFoTouEhDpM2a2Dx+geKudiFpv4agejajTCjHsH7ZAHg1G1baH75Lck9ha5lCnuFbV0CA9UNZ2SYR2rLaCSAq2urIoeAn7Wa6bDqac+ELRLee4oOel/0qPjYFZSj+LK/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724310354; c=relaxed/simple;
	bh=+Au5VB4ujB42kLmyjB2cqrCO/pLJLqdXMo7sen1EgVU=;
	h=To:Subject:From:Message-Id:Date; b=k6j2zj1Zn6gHZxOWB46ipvmZ1MUlXQhLVgCUK2rEFH85ZHFjrPB7oIX99AdRrtmizzK37GziDKQLC98UgWshTmMP9yceFyTnyEtHHJqWAUrS3sa5Cjc+diWqjoSC3M6HXD5nmJjiJFYy04gy9nuUQS8DoLrgan2/kef8AtQced4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AaZPQqJn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AaZPQqJn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B47E6C4AF0B
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724310353;
	bh=+Au5VB4ujB42kLmyjB2cqrCO/pLJLqdXMo7sen1EgVU=;
	h=To:Subject:From:Date:From;
	b=AaZPQqJnpwuF1KHe7QO1OFSfZw28Ca1koXfWoFlSKA2n6+q7u8GIkzkafaOjf2qTz
	 zfde5T+CGITRCsd9D3H9+q8egg2v0EiuUADAY7s+8Rd+KRMKYTW0vHKRupBSH6sgRK
	 +bzT0iBeuSsH675ffuL2rLZfk5qf32uatWKyRYw3JTfGN/e6cVVwDDyBvwe/MD51vg
	 8JJrBZZmLVcixB2u9LUwH3A1uF9bzANakwaw4fenfDQo2G6cov/KexrgnZBd35G0+x
	 Eu8+YJktnt9CzawRcyllPa25ddbSCwLxKp9Oo8moyL1Ba8Z1NY2v7Gj9GqofXQqqXo
	 /Ovsvk7M4Tk+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A171C531DF
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172431035361.4404.9792026062330749862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e24b189e4b4a8be842975b1cd6aefcb7347f0cc43d033520792555396a470d77
Date: Thu, 22 Aug 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724310353
