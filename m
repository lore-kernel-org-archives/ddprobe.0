Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258E7145A1F
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767477234; cv=none; b=dsUJWLBmsVZw8qiRSpHrl++EQ7cHVskXRRsQxqmrzwhaRMfgSkSQ4qhp8Uzl2ARanX2JhJBBxkZStRqoRu6ZKJtL2axuodHgNoBsLfcVlw861uYOQ59GW0gg3UVN6E4gJri01wBvgpxe2phD2jy4H4o0Qg+DBQbZOXKdQVryavM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767477234; c=relaxed/simple;
	bh=Xw89FA71DoPivfKhYAwuiDA1iZStKO3WLY0EoOegVc8=;
	h=To:Subject:From:Message-Id:Date; b=fg2aHR6eJxmuLOr5gC4aV04DIFZjp5k/Gs4E59KowWeU3RWl7AWYHufsHC9vrNQrRq7qThLun0DLuUoltqIS97o1V8IlTqKGgVIXvGyvIMObjFuI4GAZfDoWhggl1MQvFjA8ub2MHiPvWX8KjAEKs3aDyTbaH9GwRs9GIqYrU9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A1VrbSxi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A1VrbSxi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A174BC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767477233;
	bh=Xw89FA71DoPivfKhYAwuiDA1iZStKO3WLY0EoOegVc8=;
	h=To:Subject:From:Date:From;
	b=A1VrbSxiTIi1YKFyRYKDcrf0edNj4zfc9HqA/1sP0beIlmSmUOJ4nyoCgKZtsZNAO
	 9EQc3EzjShbyI3+rKJIxuGBoM4E17y5zwrzq9XwOwdal8stJXdOFi5XkGgSbuyXdxP
	 CHpuB7DdIL6TLZLHCYlWyZ0qguTp4rOPNZ0BC6znVvsuaPH6zNmg/BmmU90mpYm1SA
	 3luON+uOfWWMYYv06/ZMPiW+Q9UtygYRaCRbMgZ4V2bR5XO1NzJdMBPl2n3+GV5lL6
	 ZV1UDnATusKbRxiVWWNq96Ghnhvz21xTYwTxkWM1AFavOdMqx7eWWIJW53Hax5uWzM
	 Cs2neMsascrOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9DEFC6181
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176747723358.17562.9737687281693250231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e422b636a3259ee874a7d0280263a54d685b50627911d29458ef416605fa4261
Date: Sat, 03 Jan 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767477233
