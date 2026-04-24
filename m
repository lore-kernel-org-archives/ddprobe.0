Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D79AF2EA168
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 10:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777028253; cv=none; b=RWtrhYYKhblnDKN0OsU991tvz9IPEkEdiJ284FOZQ4vRLQkgeNlFhlHMHWv89gjA4yQHO64AiRW2A4OAU4GzIoxyF5FkRg3HuT8LiL7MB8ihhEX/RXEo530/juEFpi+n5VOwPzTh1nf5SUO/AYkYRuUU3gTiTUeRP72ftsuq7nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777028253; c=relaxed/simple;
	bh=/wUlexPf7R0Qgoqws4ISsVv5gz15WkAxA5XeAgN6opw=;
	h=To:Subject:From:Message-Id:Date; b=eUHwU6hRJ8AL0cKQJI+Yy7eHUYJD9r76Grsefd7L1PGcRRLdapYhWMnUwCphZSZBXy5+/x8F3YpeMtganCufxyTw0VjkFr5loxxyqAsI7W4hSm9OMw47bTm0ZMZTx1uF5senFQKA5pmkEkk4bukYyc1B4a6P2PjPgQ9SQ/VCjfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibVC5b/9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibVC5b/9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85C8C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777028253;
	bh=/wUlexPf7R0Qgoqws4ISsVv5gz15WkAxA5XeAgN6opw=;
	h=To:Subject:From:Date:From;
	b=ibVC5b/9DV/xNnpvEtFAKvSgrgcO39kLts9FLAZpBQLuAaYGKsXiPMABEgFtvAdWy
	 G/pXVVGiqZoJ6wGcbl/CbMxyCBfhDjdPmn6E2C2Eq6RSI8fRWPbDoEEcdct3fdnnTO
	 +QzcDBApYpGhRfif6B5ooaWCbEhb+GalZBP15t84orQsMPTR2AkFHX6NCMld+narew
	 OcHXAu8KRTT8LaFdLExiq49taXPuRC1hsFZiidPIEYwQx6zs81gZ676icv8+StBv3g
	 F8ofh3vbtRsen5YC36kYcdv8hBm/GiChlGQnM9LuA9KYMOyDLrrxvGSwol038mZDw0
	 9GZlhyuEkfcxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9075FE5207
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177702825368.12303.12346492756009160244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5114f0ccfd2debc5168799a9efcdcbc115bebc5cfe79b80cf17a8966dbf8a3b
Date: Fri, 24 Apr 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777028253
