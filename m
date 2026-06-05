Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4748B5B21A
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 21:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780696474; cv=none; b=Px3eOcIggVGHpxcBV25S76THAky2gy/x6zBBzsdMgZW6lBiUitHwCvTowhyf40LW2hObPrPgQ90BFybximagxYOlMsBfnDPI2ODwk44nXWmcHldxkdHHrohPG09cXVz5VWGidXY0RqhpX89mDzCXNPmBpancmK1glVU1BgWKJpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780696474; c=relaxed/simple;
	bh=vF9Rwn2jzvY+l+kMK7YuuYFVAPztavypIz/onrf55/s=;
	h=To:Subject:From:Message-Id:Date; b=Z9HzRkj7ucBhY/wB4T3j6if7YC2F9yT+gp35bWe/BwkmgdUh6FGSfjxHZ5dgglfrPuexbk58zH0QDvF+YzYpHw6Ahhq9i7a9Qt3rMTbleT/HIcy1Bn/Pd85IQetz2yQnfJDybin1uMF/7b4RYAelXFgoNdFWgkfdXd9cSe2Bg5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6LYjLwa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6LYjLwa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C43AEC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 21:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780696473;
	bh=vF9Rwn2jzvY+l+kMK7YuuYFVAPztavypIz/onrf55/s=;
	h=To:Subject:From:Date:From;
	b=g6LYjLwaCySdY5KdPLxdr+y+3Q2q3uJhvUoPkQJma0uxxIRegiO6PwX3MB29YE1FU
	 uaiSvId9i0a+gDbFUnNM1sxHjTPGNzimJFv+XstGI/0zgGHvtGyGjOfpA9w15VEpQg
	 vFi56WSELL01PG1brEXTwewTuiWNgymFcJNbkhMBTypkXhHswmmD38/m0pODhciTVd
	 oFFU8ImxraZDJ6+8KA2Ru+6Gcg51xDuBvv0/kErtXN9kLoJSRHOLA1W6D/NHskgmB+
	 Skk0oh2r13w4R0GFETiVMyfyQtd2F7bPSL7cywY83437wd1Do+Vr4gXYdFsgfgaXf7
	 T1v0w+V2OBnkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99A3CD6E7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 21:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178069647368.3971.10003511140379633281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9d2ecd5f8d9c06c878824177da87dcd01ca7ab94acd1f455be8d6170c9217ec
Date: Fri, 05 Jun 2026 21:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780696473
