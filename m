Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58CD822075
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 02:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714963943; cv=none; b=jDvtwyGkYZDQnwqTaRMnLC+kX5ZN3pXhkufr8lhe0KKlk0vaY1CFQpHZci1v0Xv0JMKQ/sZuyDhhSg2oxscueVAk2cmaXuBQptQvdDKMibpL/F1cLJtD1kS+h9O+zIcFK8OLHA1xk6fvjJFVNBYnZmzFyUtt+MUGD77oUivW5SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714963943; c=relaxed/simple;
	bh=etGWlRM5OMEqTlBTBa9sdTJwX9sQvayGksMXxiBuwHc=;
	h=To:Subject:From:Message-Id:Date; b=SGgnd2b0Gw2q66WO8VnPhudxD9HL/sQKukGO65PDtmrFTeMq7kzD5cfGF3+0jc96RrEW7zeY08Aa3Yin1gbmdNhWcbKhC2zYv17P2HgK/UJZ5RgsUPXmR5dMjz1Kkarfuov537MFiXykDmSP0m+2shHLSUPrJkx6NwHWcRxM9sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5Oa4pNZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5Oa4pNZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DABEBC113CC
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 02:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714963942;
	bh=etGWlRM5OMEqTlBTBa9sdTJwX9sQvayGksMXxiBuwHc=;
	h=To:Subject:From:Date:From;
	b=C5Oa4pNZP1cfE2WWH/PkvWGDlAhTWFkJDKTdcnDWl22EsPKqtYMXRj4rRWkcHtLOR
	 sOTzk9CYxfakC4yhy0B0ljwxHEnbTy5HiMAYpxbscWkysX9K0MV1KV3kUgrhkmrPNz
	 4klButl1JPTXDjynJutZ4+zz8jlnGeXfYsfeiS1t/5+pzmZZSJ5suBoeChWdCQ/eqc
	 Df9fFWq1SokbQiInakqOPeUOGKvcR13HMjUoeCdOqRxRoA71GNR+gVz+XCO/GQ8WLG
	 VmmRMpuL5bwX+nRseMN1dk+yfwlrFkgxP12t+xJLuyqYTDr/MFeze9Vx8Q2oHuMJYG
	 eaup11ST/MnUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2CFCC4345F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 02:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171496394277.428.9177552180248525090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb6d614e5675653158cc587657b4dae904e9017dcee4e5fd61ee1a67a15be509
Date: Mon, 06 May 2024 02:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714963942
