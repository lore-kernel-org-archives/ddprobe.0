Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4883023183F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 04:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783399714; cv=none; b=rFqsiGqZRtfQCgCtG+Ls5kW27DN58VOfOj7hId//7MZxKHmqvQwnmXG13jEoOSj0QjHwEjsOnL6iBkSnsRJQ6pozeat815tPO3RPrz1SDDDvOaAfrcj5e8HFnslePvg/j2fHmTuJoSLuVYtbawxZg639Zzcfm6lGF6YwUDcdTA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783399714; c=relaxed/simple;
	bh=AVxJ7Jd/E89m8mK9J1M3vmYB1PIuVlt+UeGgXuiFiQg=;
	h=To:Subject:From:Message-Id:Date; b=kgHG9lAHO4hFw8bKxyx8dC0TcgCnRwmOd3HgjoFmlf2Vl377i69M3sKh/LUZP8xYDcyRs/mqhtNUS68xOOcdl7ctiA7D4PuWTv4kZYTqrJcdy1G+/TQUokG19lNY2gzp6IzmvqmjWlGlQpaRXJLORKeFxVe/CYxrYPmN/cdkFHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIt+aotD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIt+aotD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF6BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 04:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783399713;
	bh=AVxJ7Jd/E89m8mK9J1M3vmYB1PIuVlt+UeGgXuiFiQg=;
	h=To:Subject:From:Date:From;
	b=YIt+aotDlVyUvyNHgQ6Cf6gMmVcPN3j0OK09J4p71g8g2Zdtjf01zvQLCiQmsXKLc
	 eYwfKVLGrpidAtJMsNJRdfa0Eq7vtUj2z6Ggznc3zADUWeRtGCtTEOdFs0oiIwFQ5j
	 Qq3JeMRT3JgOJVBRnnN2ppwFZeKzBe4NN7ycHLjYdKdxyCvw8XuDJzD7cdzb2luNv6
	 goW/Zt3h8eQqr8Oo13gUaEFm6PlyxqwHslz6+KCpGFBM/VqLf/XIKAGRfdYbFjIigh
	 krFk4jjEMlZahJ+BDc+ECSIZ6XfBIrsN9PWw9HliZ/UV/h1C0O2mxxlx2osIeerzQB
	 XcAODcAjtO/+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6E3C44500
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 04:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178339971368.31264.17316894431164175264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7225ba7b023eaff83657edbe88430976b8dcba4efccd5b667776f0cc51e68569
Date: Tue, 07 Jul 2026 04:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783399713
