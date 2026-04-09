Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABF1261B9B
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 00:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775694934; cv=none; b=PMtbwIKGcPcHXH8VmTH3eAJ7zYHWg3jr+EBxRJ7PP5gaFfjSkFBjQZo96wBkZ53ceqvy0tPPKRzmIQAUsOgtAoBwbSuhtQyWVOYIoAduzX1sFDGl5NkUAKG+cf0C2p12JOTInNTrxOG+m142caysMempGec5yv97P1bxlpWJxU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775694934; c=relaxed/simple;
	bh=kpKXKpV8AKtHOcQX5bhMM09URZKnoAP0nQK0sKzqyDo=;
	h=To:Subject:From:Message-Id:Date; b=OkVpCPmI3uW/XSyMQBtvvT1wbfs4Cx2TKdgtZdznJi2nGidqqvq0NVTJQZe6HL1b7A8rQqtRr3GMlPEaAmDE/sugV8y6fhPnhQcUAzpE22PERhmGAyT7hdbUoKnXuWySjX6JEqRESyqDj3UaDwbhJ09/rPn5IEb/Jp4LNElZIDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQJFILLp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQJFILLp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA7CC19424
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 00:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775694933;
	bh=kpKXKpV8AKtHOcQX5bhMM09URZKnoAP0nQK0sKzqyDo=;
	h=To:Subject:From:Date:From;
	b=mQJFILLpHWz+T70zsTBZgtAElk6nu91GT2bV5fJh0c8AEgSOzTCU/UX7/XBCR8b20
	 qh1DXn7IR5iu8WWWK1qkJU4Yx375cGIu0J9YdeJKm192CSdBmDVAUM/Yh5mupkvRiP
	 TvsU4g8ggutqPR43gtB3hO98mLOBFDnGIBqKj9b/VjFVSEDe6qL1EW04EbLCNTDTvf
	 uf32CiyrSzlPApdGJ2vRvw7Q4R24RFvaBt63HicYPPkziejONhVe0cr/uUOd9lJwZH
	 0vYP2qvI1ctkQszZOFU6QCWWUentI/3CddKq5B7QOiR5sr+wKuRFErK+ngusROSoB6
	 QCUPtozfX390A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABD510FC463
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 00:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177569493368.4852.17502329335631152129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b64f5fa69b77324a792136a4097b548bd8de7f59923236a84ee36770a3692a4d
Date: Thu, 09 Apr 2026 00:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775694933
