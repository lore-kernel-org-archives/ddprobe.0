Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552DD34DCF3
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785468034; cv=none; b=bhtBdHvYsYpr2dbvTxSXGKQdUTQP/qPGvZLkd3yFHXGMCd84/qJMsN4aZYbmUIHYia6Dleor2fjNbvmqEFvubxROh3vKC6Wb8zJB5DjusrxeO3paw4sbvSjk2oouEMYuAsR/0++ccCLD88GOT18hmHT/FBZP/ORx6RQUvkq33CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785468034; c=relaxed/simple;
	bh=LGqn3ytKZCRpK7vzJUsRnp49reRI6ReJ9D04yraAakU=;
	h=To:Subject:From:Message-Id:Date; b=dpQUUDgzqAQWRUv4/2z9zhnReONtiaqZR0eoh9CEsc4EuzG9e0CC8o29IMaSWCdrI/+s6ocTXq8/KmR7Rf+d3MeKqHiz+0Kom19ElQQtDX9HpUJEH4U1/ULjv8xcmkf/V3NeLyIunxMXXwN9gOORvXevenutJzqa5Y1iowPr4jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fPQb4zkX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fPQb4zkX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1453C19425
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785468033;
	bh=LGqn3ytKZCRpK7vzJUsRnp49reRI6ReJ9D04yraAakU=;
	h=To:Subject:From:Date:From;
	b=fPQb4zkXVuzU0/r+PBSC/P7D+JEhFZDE+sKTtyyzucAZCjWMOMZZx889npnD0p25k
	 QE5O8CxXGVsKJo3OiwPS9G24jEQQ4TrUTRR5o7Worg/H4OS/YEgQbNiJ/5ZGoKdfdC
	 9hx+ND5niEu7SuyhkN34GkwVXcGUl1wAnkMT5YzbDJ9W/YdfCprRLuVZcJS6iSiyWi
	 oyEHvQ5zKPcCo9T5yIDZGgZDpTKsOXmOi/FBdPR2w0Gk5Sf5NkwR0oNhg7Vv+wKId3
	 BbO30qUvlSqL4md2PseHCDww6cNRDxi7bb+0pyneijaHt5TfAp/gD/ueNa6MRnkZFP
	 HwyNBhAGdWr4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC3F8C55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178546803373.3281.12487588289801076942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa26ec959f99c47c6f9484791821c6c230fa542dd3e87aea4ebfacb8a936527d
Date: Fri, 31 Jul 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785468033
