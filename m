Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB64AD5A
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774670694; cv=none; b=PJ0Tyl1Nz62UZNxuDOA8i/ycSyBeJ09tM1pTed5999LRgrKFtfCmmre00+LvprY7B7w1NRg0FU2+oj2Etm6CXYxg413mUnO6gHz4NkOG7WlxVvO+g1JgLytAC6DJbsQP0Foj5wb1aaQWX/nYZqMC1bjR99rkEvBH+uKwQJP3BpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774670694; c=relaxed/simple;
	bh=nWCc5AXCTWnXS1Ca3C/ePMgtxox9PyC3vxwvXZLRGMs=;
	h=To:Subject:From:Message-Id:Date; b=KVUn2Op2d9PyKtvm8S29aD2Zedu8fRrIVii1sjOk7i8sGNg3Ply+qNYTyq8dbm9XBwc+irAuKiixeA1pol5176V4UtcqNuCqNdR6P3XypRukjDSFGQd5nQQRlXpiLlxyNz+pY5kO8X/QZTanJVQ7pPjg5SyMKhTXpQ8G9lGAbWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YFykhG2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YFykhG2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F34C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774670693;
	bh=nWCc5AXCTWnXS1Ca3C/ePMgtxox9PyC3vxwvXZLRGMs=;
	h=To:Subject:From:Date:From;
	b=YFykhG2yTh2r7ldzohd5kEmkqbNo7BjgPxKHx6dhjNo53ZpXzNQBS1GXHuxplMFdH
	 zksVpk3GdKkaj493oQLmD4YtrYijNOjvr+xdAHU6isjc6jNUKFZG1rkcF1knQbgr0l
	 6E5ngvb+mLUxl330KMLxxoTx6ID4SXco4tqoY760GTuFzIHTk05Yw/cpex7TmzVLCR
	 XikE7NrJjkK40BOAAYzqkQjL7PyQSFzhlNaC4pEaq9ecPOpJbPflWzD0myTp1ZgcIg
	 4EB/7rWOemEsjma7BdA0dPuR0OjidMka7TvId4Ty+2vd4tBDTthGts9yoZltEGYOdd
	 zTuhaFTVI+gDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DC210F3DCB
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177467069358.14028.16515295924824681593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f0eefc09bfa73798d1a711d7e662f47a79795e87c132768c313573b543f1292
Date: Sat, 28 Mar 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774670693
