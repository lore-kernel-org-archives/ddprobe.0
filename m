Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB9642077
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 09:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741081735; cv=none; b=vAljXbiFm3noH9Ftn3BJW/OxUdf5GBVzx+yX5WF+Kh0ZfbX4iyncktpDaBBe4cAIVqhvARZoeHpqgy/sgA/0LLGfjKeQ4lNhgdnpvYlusoi36UqatIfmQ0y8wpuPrlsavXm/xX0owE5XhgC4zsbKDZN/R46ZQ0yH4mM1vhg6Mvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741081735; c=relaxed/simple;
	bh=/7Mh+A1ei1LWGntXNnABVq3wHhho8eTOIE1Eb2rq2D8=;
	h=To:Subject:From:Message-Id:Date; b=FduYmVFv78tR9yHCDJt4V/C99fq60axgig9I/zVbNczUUlgyDE0dAtsOJGVZsbVVJGXiqRPVYlElscENG5e3VqG3hPYstaYTLPNXuzo1uEfH9glZz8CUQbu3pUYw8PIFhzObh2Hi1YfjnsAcfE5yNAvkbXTdH/kebNOc9tLJPBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gImzSrQF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gImzSrQF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8FFDC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 09:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741081733;
	bh=/7Mh+A1ei1LWGntXNnABVq3wHhho8eTOIE1Eb2rq2D8=;
	h=To:Subject:From:Date:From;
	b=gImzSrQFIOrLWHMS6NFSbacGnQTP8f3d768nfuAH5z3CQrK0ARlxyB1lNrD7Rp3jJ
	 iG6vL0NZAGJPu5fZJnbuHSnTcHDdFwjivw1RqgWY0sGeHGD+mjg1qSKKrHhgsrQfFe
	 ZU7Beiiv2Xrr6sqK1C9Es80RFYBdMr3KyNcc4bEt/PWxt5zTrvqrJ5+T7ck1IeAuER
	 QEprm+iZMCuvCNiu2nt7VZe0gjayuSPMi3fgaFKoTTz3JYiow5o07OYGW6Jia8Kw5M
	 Wv6gF5CU159n1ATDQN5lo5L5wJApRpYVim/By85lMarHMgduqiqoPnHzpDNd+pBqEF
	 or2CVWWrJeA0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0736C021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 09:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174108173364.32350.4376242725279997648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62cff78792b6874c4d4f7989e5a35cb510f0fc7626cb41caaa87c08047a9037e
Date: Tue, 04 Mar 2025 09:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741081733
