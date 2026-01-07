Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A05348879
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767798234; cv=none; b=TdQVs2QCa+/VUwobr66LazABp3WAb1PeEfzttaTGqSzzK/kYSym2DR8l+vXB4lHSTeja4CJnsGFCe99vW8BAsMvWpFL0T/uMlKG+TE4kevG4kAihrx/NvOGSYH0jhcN4bKWW7sjKXl3QDGz3waDrpGMdPo7+tcnPOy8XAFUibzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767798234; c=relaxed/simple;
	bh=7wEEqPKUicLyQIW/8hdd4t0a3QR/nSX0eQPSwPAtmK4=;
	h=To:Subject:From:Message-Id:Date; b=lWZsdGT5TyaGzNj+dgfOtyGaOTWRYcETYNrqn80pYn/eXT6+wixdEDTP1sm55cOa3ptTMvjcnVYmnwGdp79D/Kb8YSQTBwzWkC0yrBYxc/uWXqhj9A3ttxuFEaMdvTaxC5KqSZKN771fQJ0yIqfKiiM5SntL92oy25D9zNRx4pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVpz2Ypl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVpz2Ypl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9F3C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767798233;
	bh=7wEEqPKUicLyQIW/8hdd4t0a3QR/nSX0eQPSwPAtmK4=;
	h=To:Subject:From:Date:From;
	b=aVpz2YplOMewtRu6xLOQa8yCtZKZyuuWDybe3Vmr8G9r8HO9LOy5vsicAjAVxSdhm
	 mutuGckBBosSci8DytLxX/1CCVcCZyLhCIHVv2PfzdnGeKJWk+FiqPG/PliWwUAB6Y
	 pboNDKJEdsxYwPfNcKkRINQ7RNU+VZRLFdFi74S2Y/1ED98jkAqi0Oy+R2cVJDxnv1
	 om5Hlr59E5yXUP0r+ULL50T8SqiAlrOw0yneoInr4LEbCEH2joPBMGQUL9OrmK5YOY
	 MFNNwBY3zgtXiT6EOFBOElUT+NSEH6NHLho5X9JvYBT2SXUnnHsZJHOlf93yC5mN/s
	 JsWSD/80maLRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90206CFD64D
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176779823358.22525.5780411945624976931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98bc75b3479c00d9262b48b10180fec5862e393d53d6437083d13ebcac6190e8
Date: Wed, 07 Jan 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767798233
