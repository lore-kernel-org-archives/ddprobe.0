Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19EA14C99
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 00:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714178543; cv=none; b=capJdrpSLjFCcd1IXFDj9MyyguVkcPyArznqs6NuTNqhxjoMXbi7QvhaTQLQxxaO0y21YfTGo1EX13l4a2JZwcM6YLRzx5W8yu5/wqyAsYdUILyJAm+rEPZCmA8101SvkdGZp/iuuidJYbauMUIyOF7VlYn9HTLelu6XPSwJWR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714178543; c=relaxed/simple;
	bh=OIuWH9ydkR2YZRv9RRhQfn5NfcGFxnXCgqI0u8S88J0=;
	h=To:Subject:From:Message-Id:Date; b=gJJunJpQyalGKsf0nm9Rb4PoH841vu7Tw6ibNYZIEk3fkPmDYYJ1RijmYYZPkYnigcnC0l/7vRQxZVrnCZj1ijB16w0Hsu3WvV2gHKBBgST8Ewbz9YzFgwyafGjFzHWZXaMjO8/dn69wdzD+Gh52svTOn0u0TesPVrove4qHhKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6wvYwLq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6wvYwLq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA128C113CD
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 00:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714178542;
	bh=OIuWH9ydkR2YZRv9RRhQfn5NfcGFxnXCgqI0u8S88J0=;
	h=To:Subject:From:Date:From;
	b=L6wvYwLqBlSqNq6kBbZDozpp4IHGk+2Ux+J2BrIf/esEb1Ni8wHx4GiDkIY4nStO3
	 GNtwmXbrZmeGNvFUuaTjw6c7htjHFG4LnsOAISbJ43it2rjNDUNpMSy6CSDZtgdFt/
	 L9Q/obMY0FJjsA7HNzQYvuQrdaRZOa1bOfYx0DJ0elTi6zDWBZvvTVuHYyqvmgE/la
	 5SdVd3vgj5AYjnKWD2lszGfobsC/32vZB9PUM89s5h9QJU7tuLs0wCRczT6ySltRe4
	 +fuHw7awx0uwvk0Eb5jN72GPlhg0n/3fAsgdlKqsuYaspt3bFlLSxp28lhsyFK/M4A
	 v9HdpSCsJ4pAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7A03C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 00:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171417854283.22613.18246648521187841382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d2ffe626801e4121ef05aafbf513a9c8a445e3b2df95e187aba010932536580
Date: Sat, 27 Apr 2024 00:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714178542
