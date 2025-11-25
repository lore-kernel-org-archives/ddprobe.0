Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4291D63D1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 05:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764048174; cv=none; b=jzzRJ5ecOxfNY4W2CjHtZCrp5j4nM1b2oIihiFkt3dL0WTHTaGJyJJZsiXLsGD6QM68CxvokVR/IJBQzw3yMcSqTDgGBRFTNHgWS7bb4ED7QlITw/aaXTda5VNb2RWDEppt8vKnlpCinZnwqLC3Y19vZszLVg5JDgc//EqsX95M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764048174; c=relaxed/simple;
	bh=D0seKXzyRNTdZsD4YvR3nLcbXsxM/qdr9iFPJ3NE240=;
	h=To:Subject:From:Message-Id:Date; b=F5/JTgXV7ODEDM73x0PM032sofVVu+5HaVSuMEuU0WLABIflzWGf//6J6ZPiZKIDG/KwBZY3kcRD479QqDpaoWlypfNudAX35+noJXyXwSGWJvVIzIhMzDJf9oO3aimpGBHQMOX8r9sk7FWDSWzCQUPACeUQ3YhXS4URkpbjiNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qC2mt0Pt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qC2mt0Pt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C1BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 05:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764048173;
	bh=D0seKXzyRNTdZsD4YvR3nLcbXsxM/qdr9iFPJ3NE240=;
	h=To:Subject:From:Date:From;
	b=qC2mt0PtAL6M8tguKapQz6Gk9vvGU/GxkFUEZGe/f6CMntE6lcoSGmzsI+VDVdcTN
	 2LHHZ2tLWwYpY3NWNMQuWkY9naAVKMMIn2RrvAIyIK56ip5Div2dMOBDTPn6uOtgJ6
	 mBG6WLgFfWrr+N/PP+0Ez+5sCEGiAHhU5s+TR95zLD2wfd5E9X/EwZHnbmBZWbMBQf
	 jMzExJe/ex/zcDy0pf3jluiaPeF0k294e3RkVqGygPne0b9uee8ysqILd3CTuTkMFD
	 dMfcFxfypecEBOyrwQp6coT0qNR85IzT+17fC/kROBgQ9k/shKdApJU9UjuA0drHO1
	 1hMSuV2/Wr5qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995D4CFD364
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 05:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176404817361.10805.9887420004181543846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 515cce2d983a8ed7bf1eb6d0b204d070563b132408d242853f54cc8dc3f68a10
Date: Tue, 25 Nov 2025 05:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764048173
