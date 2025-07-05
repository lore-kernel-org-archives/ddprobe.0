Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1A02CCC8
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751740794; cv=none; b=iIrqjEKRFF3PH6YWemRdmoh1m+Z829/vs5l/D+46ka69r9Gqa2JoXFU4lhYitJMZ9sD8Spl+MZeQWVao2vfoaJJnQUhTKuVzH1QNWJty5F6/QgNP2oiLYNzfIC4pP/i9LclDZFeBuP5nv3mYOvsx2uW8CIXfguV70WtMzrCKZfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751740794; c=relaxed/simple;
	bh=fDSWhgcj0dUtE4RtCRAECKIRsABvtvuxFlBSgptoD/k=;
	h=To:Subject:From:Message-Id:Date; b=m6CPVa628ViNT4DVTImqTRW394mwYqQFRmFJuyLAGCw1wWlzjCKQ5s3jSzcAjV6SPpd0H+XNwx5aBY26hi1JIVX58zraJE3oqb41G+/IZ1kw6xAq/GNhFmj49uV5psRiP2iajKyT0raQrgc9957yqmF8IfQIfx7iV4vp0t/3iPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TrRSbGef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TrRSbGef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C5EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751740793;
	bh=fDSWhgcj0dUtE4RtCRAECKIRsABvtvuxFlBSgptoD/k=;
	h=To:Subject:From:Date:From;
	b=TrRSbGefPCZpMUvpqHyDA5lZrb44GMEfDYudiGfKxCS40EA/BYKG1e6nGNfAXxC8I
	 +bh3kLG1FZKi/goAkOKWxFtaDq4wAoxC22NTBIYjzvzF78+ejw/ZgQShKN3eTHxGiN
	 ZgpHRvJ/ZO7y+8fWdvLnwrhUcrsQZfQJENKn851xZlaA6s2bWfeILp0Jl/q2Aptn9a
	 CXy9a2ndCCajxCT0n4PlqXEj2y8UKcLGEzDXTrrHvprktDnLkiAYDlwAxzRNjv5N3f
	 dJztBqlc+3GRJ2NiGMmgejG/vDKfpzJKWrS8nHctTb/+xkId3asYWjesvzVDj/6LKw
	 HnZ+v+Oo2vQIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEF8C83030
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175174079357.17605.15358283892588295123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b140da135a14e2385e953f3902a45abbfc3bbb67a7ff62c7ec4b00a7df6655a0
Date: Sat, 05 Jul 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751740793
