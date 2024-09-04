Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA1D26AC3
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725426954; cv=none; b=Ahe1s1OOWIm3wvWBgnu4KTYXI3oRNmxhTTarlncLNGnJ06MLD7x5rzbR/MKDbDhXsr8+Yjvt81U9co7u5a/fPMx8hAKF9ByOw1LZvO2Vdk1KUd5GVDbz7lCEDTWPcwRDHQoKVosg1DenohJ17ciqa/D5K92LbajD/rxcEqiVMHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725426954; c=relaxed/simple;
	bh=XIpcVtnd9sRKTiLFLVcoAiTaBtg2kEqBJXk0OSVmxLc=;
	h=To:Subject:From:Message-Id:Date; b=B3YKDz7DJnB7Ar3wtHtfjUwpP+3f/bB5r07FypiDho0W/L6dLnysQ6k6A6Uxl9po0d2GrI3Q3fFE79UlKafGzSulUVvqjBNdx9QmHkbBMFFoAumkGAijHvZ5qnfvdtikCIPuKrZS0JqZ1bDJtHIYsogIykFUbA5sUOFaHdG7yE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSE/jNuy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSE/jNuy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5659C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725426953;
	bh=XIpcVtnd9sRKTiLFLVcoAiTaBtg2kEqBJXk0OSVmxLc=;
	h=To:Subject:From:Date:From;
	b=DSE/jNuyOmC+nH/Y0iBt5x9g2YRJwVP5NfCAdxgRQBZDJB/zCTAegRibBXS0cYkk4
	 xsFxP/PrFxMIZiQv6KoATgMcTm2FCCUnVB5RAKJP8+HJzYhzszYYUd8rP1q41eXejb
	 4aPkcKHAAtgNzXwg6Rhk73HHn/0bQwD0ONrF3a4f/b5AARikOXp2Tz87YqGmPExHao
	 cRhjEFzydEzJROt2FXTity/XDmhBID39wjTkE+JJiTHiGpukdYG+KhjIE2FzNXHTS5
	 DbOoW8ktwD820urxtmiRctndecc2xXC+meWhr0DRP25Nf18+OEHaWzLAqJi5KmTxDl
	 aV2GDUwtDEjjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F8AACD37AE
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172542695362.9499.1000335965016062722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59babcf12b0b512a97bc4da27bc273c4063f3e2ab310739b9c9f7b7ab59ebbb2
Date: Wed, 04 Sep 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725426953
