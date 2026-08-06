Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4FB233924
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785990634; cv=none; b=KmlHm6TopKYomYKDTJW1nwjFw5+ohu5pNwLKNK4d/yDQM1pRUYzOsKfOu5h5Iw1y6+DSyp6uFsoWllRCuQ4JNwp5Sd7KVI+plGiXd09jbBDr8n0DNn0sFRF5MksP3hlUZEKjxj3KSZ1HRGtq3yyddTPHTs0sgNQXziWGqwdb4hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785990634; c=relaxed/simple;
	bh=qPUBdr1wVEJyVCkQe6Oft6SauFEKvm+52HiNbsj9G2o=;
	h=To:Subject:From:Message-Id:Date; b=ZSJV3xnt/6Kz58D00aCRtiH/Febrt507qTXMHQGW2hS1XQxt+cbH0B/eRzdJDTobVwfLeNUgDSYbFgz7V5BsiN5dU1RYRfxyV6AM2t03v0n273YbehuYMGAC0tnHFGHydTwqsHQnVbZBwiyAkyyo54hXj+C0tsWsivh4H78hCpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ynk378Bk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ynk378Bk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2478C2BCF4
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785990633;
	bh=qPUBdr1wVEJyVCkQe6Oft6SauFEKvm+52HiNbsj9G2o=;
	h=To:Subject:From:Date:From;
	b=Ynk378BkizG6IfjZ93foOtrwOwfku2iGj8vgIeqresb6lT0LaJdyK/j7K2+rvyltk
	 msDhTRV4l9P0ThooYHMgXcO7fkgLUMXLsgNfk+9C6K0N/i91C4AhicjoT6rpJZgubN
	 czECTcERlaYx7MUskO70dPTl/EwNBdwG2ObFUfu4BwEiQreBXJczo8M6zt1kok2FVL
	 iPOb5dXbxGTflOvQEoIk3DMqN5Sgn2JK6D52EmsTVz1afoBvyb+siBD5HXr5cpBTTn
	 29ejB01PrHk7oYWupqEfff400FwD/xvMuTC1fQy2pOz/xXTsPcUSc4N6H1L5DgTKTo
	 BvEz5G91BDJpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB27C55838
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178599063369.25386.17584682680897267440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bae131905767bd743a2955c94ae8db23a3e519697dfdb7641169355de476fee2
Date: Thu, 06 Aug 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785990633
