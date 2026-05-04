Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B443D88E5
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 13:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777900054; cv=none; b=LlO34t+Ky2MQTIFGHgilDUZWuhTgRmhzfX+p03Pv5jyqorasMY+VksR8WBb9YqOGUtJmF0K48U1DUmCNTIBrJft/tgWi6IWlyT/YrkN4C/uvywyTnGQxtNj4JF2Shuhpkyb0YQXhLztrGX0JEnginyAjZwuvoodIBQp4/a6x/EY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777900054; c=relaxed/simple;
	bh=TKGo+mXsf16SmwWWDgx5sEHc85pIObe/yvCxvmX033E=;
	h=To:Subject:From:Message-Id:Date; b=EruHxyO6YvP5/AGEUBWIwPdWVeQgQKr4ImkkLCbDqEXpk3G+Th2DC1J3crpTlpH0Eym7M/R0nyB45CYbm/ahHomv0BuYHKuL9qFErr0ZQhHtGknAhiEuvEglLHfZwv7xsji8ltkk57BStHrvF6BuRGH3jD0IYBBq+jsXfgbgm3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHsZegWy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHsZegWy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B95C8C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777900053;
	bh=TKGo+mXsf16SmwWWDgx5sEHc85pIObe/yvCxvmX033E=;
	h=To:Subject:From:Date:From;
	b=VHsZegWyWUbYwICaYu8HtdQ9Q0qjPgDnxFcE6NXsxVjHnAUzmbekwyW3YqNrqRmnn
	 E/je/Dfr0yMtLZazC6LFO+BBDhUfSCFW+DV++Ol8BfuxbLzVF2/1sMiqZ7Walng4NI
	 DtwjRnpkiawT7k7ipzbeerbqtgnOVhR61BqmKiTCUEbXAqawQ0LAdbtKLZqw5FmyZG
	 l12y1ySyBo2FBJY10BXLUwWM4Kdh12kbPdgcDCkmsTR0scQKiqwRJxuG24WgvJILcq
	 U0sRMFLdwV6SQL52Gy3mCnUjHvmTSiYAeuPeaes8EeK2Z+MDZeJYIQX2q3W4ltUyP4
	 3kabRrSgPce3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4F6FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177790005369.32071.5908312697429973178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c41f151758aaba979333b573264dea616d5371176b36c1d3a6cc7e5378ac6599
Date: Mon, 04 May 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777900053
