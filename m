Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5C130E828
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 21:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781559994; cv=none; b=uOOMX4vgvdpA9ja8Mnz0iwkNXJtdByvJZRxyQ7Ydt9h9Z5q5AkSl0tguycuAHhAoiMtE41uneY5KQTkFG+OwBoAyfT8iUEVTUn8m1szv/AY9pOyr2IG/i6h2WhPfijzxVcwOz5c/tuIeRe183BF3EQ2Md8ZtJyZGe09sB7nQOPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781559994; c=relaxed/simple;
	bh=2qhGt7ikalVVJWVjtFMFEIhVQRWFUZfm1GUdiGz0TM0=;
	h=To:Subject:From:Message-Id:Date; b=admeoz8mf2i6JCADgoNmwEoia73fygGIGu5XQis5WSfq3eWKveChyFg09q+B6XJL93+Mr7FgqfZpHN2ZYSds6yArCggm4Fu+FoZhyTjp9XVWG+VryzEQ6d7D2HGhGoDH0kjJTJKPGhqfP9Zrusai/te7fPTAbBfGqLV7eAulcjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UvEQGdl8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UvEQGdl8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D222DC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 21:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781559993;
	bh=2qhGt7ikalVVJWVjtFMFEIhVQRWFUZfm1GUdiGz0TM0=;
	h=To:Subject:From:Date:From;
	b=UvEQGdl873SfbUJv1QiJAnzfZ8y797SaILrcneeT7yAbWM9rh9BCYX2YxhjZBRMU2
	 sSiyx0fExiafRAeZmCERV4gfRv/P5/CuIDgg9jqrVAtPDDJ8inbqVqqpqlm4vU9sHE
	 40DCyEz94JYzv6Gia+cHNPC7Ue+N3CKSt17ps/+7UZ+OyVwxBCkEcxXDPtTzVuKyt4
	 kcWjHlOSlxarpkVnttIaSibJJ1wN05DmJw8+clqNAA02enmi6VCrccJyAH4DKSJ2/8
	 FVsqAbEc4V/Fqgp4pn3LgZp6rWxV5CTUs5nf3NsqS92wgzRQV1kMdSXUET+6MfO8iY
	 WI/KSXZoJsaEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29F3CD98DE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 21:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178155999371.22602.11288591588091394585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 299915fd7621bb45826f210dbdadd922aea054703a629078b5681d6d157c67d7
Date: Mon, 15 Jun 2026 21:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781559993
