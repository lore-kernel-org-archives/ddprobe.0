Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21285394490
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773735294; cv=none; b=DmksrrgVbh2+Zo7bq27DRKt0AVtYGalY9jetwnWc8exMyDLEd5V2WRpgLeyz8Old0g7UHwaTvkbpJIWjOeDqYkmUpXt0F7Z2GjyBRQs9uqDw8YnyoN4aEeKctVF1w7wFxSDNTog/NKRUiMLxiK/cD/Pf1KQn1wYmkXI2NaPRnzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773735294; c=relaxed/simple;
	bh=GCmax5jYonQwV/CrqtxrhhOhmZfBp1eVpuLa28yEB94=;
	h=To:Subject:From:Message-Id:Date; b=IZyOguWkiSqhCNKMimEesbkEHQwZQ5MtnFe6WbeLnGA/d3pVUb0RMhKdR3sqiZ6q95pJKpn6fzqetM82lQtmgLGK9pSzRpKZ3kdsmkJFU1mcjf8tOYtOP9xsGVHIwBd+kl7wYMgXSgkPtXqEiciUao0rCafvdwfCH8xBIGP4vig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8bEESL8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8bEESL8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84A3C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773735293;
	bh=GCmax5jYonQwV/CrqtxrhhOhmZfBp1eVpuLa28yEB94=;
	h=To:Subject:From:Date:From;
	b=M8bEESL8TVo7/LWFlncswFyDsaF0k7OvjEY3nBc2CCShwvxLgrHiVYA8YPfNvN8bP
	 ay18AUq96Sor8zXtv+vwV13ydlnF/nJD5YAeiwGuXB2JyHUTW9ggzo3pfNYOnqjrka
	 gdpYB1tU/2xNbCuqIUUUdUHjIxPS4ahftQuh4WYgJ8RYKnq7tTV3/nnDGQoaY45Vct
	 wUujF0tNoC6/xhE+KhtG5NCzltfcm5ECUwGz6kPW2aS65NM8YST0Ys8FMfhqm4ke3R
	 GJo7nwFJdvA7+kjrA7PrVGF/KpUxM784mAhEpez8wXzGCnbQkNlO3zQxkBMb+Y3ZMC
	 SDC6zbOmznbIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976DDF3380C
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177373529361.16575.15249708045847290594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f90345a4a8a6e87e85dcfeed345291549a48e14d43c74996ea258b2c29c853d7
Date: Tue, 17 Mar 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773735293
