Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EED817F9
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710463097; cv=none; b=qHhXYh1bCSN9rR+2OVJOI+C26owLHd1v1CtRK3IN+ihhWszKMKNAgde4/Ie24a94A/4dxc6rgKaHmysRtnDNOdcEBguTHtQuv1xKMHerLqT1kJR/GNGnI0VXS/n3X5+NNuH/ZA3rb2WBiYDpr2aIIOU5UYwF1n0uCemUtysKIeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710463097; c=relaxed/simple;
	bh=36jAbTkPEwtU32q0seaMIBTMoHvDKpqWF8l4BCHWlQs=;
	h=To:Subject:From:Message-Id:Date; b=F5uTHSWTJ4WcL5xJnFBtjKiBKRkDiDLQ11Tywp/RJnvni3kNkVRzRoBwsMp/1LC3lr+KoUpHGv7d63NoAHdnuY0sAeciODvdZ2Zo9uEV20J23fMkafhQbryS494aDBBaHlKSA4JFgPh8/eXoC1j3GD4WopKxOap6blWGhkcsctQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGztS4Ww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGztS4Ww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 749C0C433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710463096;
	bh=36jAbTkPEwtU32q0seaMIBTMoHvDKpqWF8l4BCHWlQs=;
	h=To:Subject:From:Date:From;
	b=aGztS4Ww9SSYvpbQd4eLIl3JVDOSt9xN9KvYG1LdpiFLpgaMhg9+aNoEDOw1O51DC
	 ex9428q4Mm7hqVIO86ubFnI5S/IvBGlw6FJD+k/2hWads2z1fQGdyei8NZWfS3DJ+p
	 Q17dVBr+JHrl5kMsVBZpaY4aNz15RcahH8gLn95iIF68dskTYWGJqx8jBn2k1K6Qdb
	 SBMa6YdKTQFNshUQNo0G5EhAhje9F+zVmrCZXEDDyUYYF/QW8hpG5jCroPXtXKItVR
	 BpESenXPqueRITuR5/+JyHQn+sagRTXrTLCrt0bDagluyaHFm0t+lolsI6NtYEhtHA
	 PxxaYMSd6WfTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61DD0C54E5D
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171046309636.12581.672753562657852316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d80c1073729f3434a2a8ea32e83d11bc5c70940f59e47d1a27ec9112e6c0a48c
Date: Fri, 15 Mar 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710463096
