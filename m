Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1863038E12D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790334034; cv=none; b=Of6kBCnJbPDS1QRdLmfxWYHdcsml7zbccwi1UtGrxb1OaG/f4wweM5TBrOHcQxAgEsoI4x6SOdOpf5HjQr4UcUEAO+0q+8ZIPgtkTNWNHyebkUIdEha5Aodru0Tshyf0ufr8rsaYnFN902MTmhlcWupyQJimEfJLmR2b1dwnLAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790334034; c=relaxed/simple;
	bh=hbilS0IPRtYPIvQxlYtplNCePP3je55vQ9eWsqvWGwM=;
	h=To:Subject:From:Message-Id:Date; b=JM0n4MrN5FdsRcN9zzpHn9dzPnLR+4h8JLxWI+zAuA+2bpbe8187DdgWmIIeRByYDi4t3pQnE5suDWsLmL8Gm3ZtOKCwGpSwL/t/Sr+9RD4THk5GOH7BImBMs9ThYYE80eQRqYDRBWol99h5PQ5l3Vzl5ynHL+uzhxVcEy4ErjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJacE4LV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJacE4LV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B8EC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790334033;
	bh=hbilS0IPRtYPIvQxlYtplNCePP3je55vQ9eWsqvWGwM=;
	h=To:Subject:From:Date:From;
	b=KJacE4LVbY3aGH+6GKztjfbvJkrnBSEvsSjTIE5q0sg8AWV/8weD5N2BQJD35tlh1
	 A/Y74IMgQjPCIX7JwSaKPYoVpFSoEzM4UNFBCg50ym7lu3cfbF/L+kzPQA3/Uuibgo
	 hgcwuCE7A2HJg6fp419GMlfyvLLTeCCsOwHSYeZoaMo37oxjFnAxNDlbBuClchtIy0
	 iMASkCrAqjg44f7cAY0eDvVdIObRJzwtrCpNesC1yvj0AdT5C7588Z9wrfqq8ua8Rv
	 FNhP2tlVBVGPC7PCSGbqSpNHwvf1ooKk4DGO/uwMRbhSca8LD9maPF/vm41UDloue2
	 nrzEGjNOJtHqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF064C98321
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179033403370.11289.6316593125812605461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af8b5cfbf84cfeec100335c2a58196f3ae431cf07f9759c18ef748a8235966a5
Date: Fri, 25 Sep 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790334033
