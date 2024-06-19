Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 553228287C
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 11:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718796563; cv=none; b=aHu5SiI5i1RZrZuOH2vUyaVPZaHidf9QAAF4XpZeLj+cYnAPULPXM0VwoITQqZr1E32IQRwhdE4QduD+Iz9Z/caYA9HcHk2wgPl2off69+edL1ixwnbMLI8SXIdWvy5dmObRgWvKsaq3f9okgkHVaD/CtfIJX5eaEnYYQmA0NFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718796563; c=relaxed/simple;
	bh=xVCAQFXKREd0TJJL6F2YhD5ym0SZ9f8oBAweJRZtnQM=;
	h=To:Subject:From:Message-Id:Date; b=LwkKA/y1Zv5KBwFO7GPRadKNyA08lJxq88rJdUGhwfy49ZQ3CBh5WJWGA8SKAzO4GWWFrF77ebRTi0o7lh3zB8QIEom6Da6lhBMY/kajrc/Tmmg8y4s61GHmrJHi//5gqxNqXLl09nhAYVVHX9VpXMFdNm9Ap89pC6vwbg4Pi5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ntHHNb85; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ntHHNb85"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D94B1C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 11:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718796562;
	bh=xVCAQFXKREd0TJJL6F2YhD5ym0SZ9f8oBAweJRZtnQM=;
	h=To:Subject:From:Date:From;
	b=ntHHNb85JZ64JtfJtVjNfhXn2eESzSLWjLPsDUQPjsGkRZwaMh9adgkT/CgmJGuqx
	 bTCRkKI0ZklywV9HocfT8dYeuStEjbN81/KbZe1GbSofiqYc4XzPkAQfPe5CeOsuZQ
	 AFXD6cr2dSBGFs0JU1MTu9zhBpWDAs/dtvpn/jyQQt0UTCw6hmBVlWzi+k5EQNnP15
	 nLnIzt5C4dLqyKmGb0kXQFr3wTx6UaGb5yNawSbeQErJ/fNl7k0txlsQzW0g1VI97D
	 +m7GYj8NUEvcw289Es5kJJsTax5rp1XNBTqWtyMBXWF9mL6a+rMv8ZGi3Fz5KQSNdq
	 uVU/O0sdEd9QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6060C2BA15
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 11:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171879656280.10991.4599688866474410346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b4af60a1e688cb85244f3cc0d145851960b91ce8f4af192a3a12aa2ed8327fd
Date: Wed, 19 Jun 2024 11:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718796562
