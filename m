Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181F61B3B19
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771806894; cv=none; b=pVx6LVMG8RFEYiJ6ALXS4reWfqKF/lFBwYnQgGvm/o4n6nqd1AogKsL5Pn9XIyPAiavMaYTyZW1g1cyNl7XX4rRXyPvW0RdCypxM/k9O90NSqG4Zb21OSWkGMPAcrXCFOvs5UfYj60EoroJ38NMH7oThoZJThjIIbrtFWnS0IG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771806894; c=relaxed/simple;
	bh=gu72c+sVRA0jdoWVPfaY5SWQrwNt/PwX5Rp15YSmcm0=;
	h=To:Subject:From:Message-Id:Date; b=aLBDwiOWlzOZbnjpg6xYhOrluoL9JtyMPSK/IE1qlIgMGAheib5m2hZh6pKRiBmJOUniDrEUcjOGIZiaF1i5ETahDDoejvMTYueqQcZYQC4ZZeF0wZQFiqUymx+oRfEJ42jeBVqJvItAwRed3TLZ2otm+BByZiyHTVuidLSpgK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HGnkn1jj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HGnkn1jj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49D4C116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771806893;
	bh=gu72c+sVRA0jdoWVPfaY5SWQrwNt/PwX5Rp15YSmcm0=;
	h=To:Subject:From:Date:From;
	b=HGnkn1jjGBxEVDQCqSW41SyWLrYESFsNW2Vi4yNZhAUxuiSv92N6tgGzQ+NDmuwkk
	 AhVTSyJIUOQ7J7IfRZukb1PVc3O1cGxriC67GRCMrXjz+X7nBNrAtFZ3FBoxXTi+Tv
	 ErFM0583Ev17nhbbIIVjPQR/SSrXMOxrAfHQikwUdRALxTDCsRs8BTGaqoL14YOUU2
	 PLFfXO4N+CzLKhASAwRMKMOXVmu2mPqOlqApyfaAXGIYrika5zeikSt+gMypJyHvf/
	 fuJ0t4MQnYi3QQMlVVWWWQL62p2K6kgOxvpcUODsBArsNpAyu1OnnHKUKvjQA5elW5
	 BgkbuftpR0ayQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A73E7C6F6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177180689358.4207.9848891269340658422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ce06631a42b8f4ef7645ce519561212d6d565967e9f53c7338782510c65bd8e
Date: Mon, 23 Feb 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771806893
