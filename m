Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D956304BB7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761953394; cv=none; b=bD+r+NMEiyWpyQRVWSzTzDWFDwOUjHeWuM9k5r0BaQT9Se5TQc6OInNdq/xzaWiBahFY96brVo3tG0zgcElaj0xLIX/pD1S76jsxY2KusySm6MSp3NAB9ure4eKRLOkmNd7mSFPPdMIl4xIMUlUtO8Qudzk9uWkHEODITLr+cY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761953394; c=relaxed/simple;
	bh=fAY5wMp26zxKtsnnrXkXsU5rhk/HompAaAm/lXQ6F/0=;
	h=To:Subject:From:Message-Id:Date; b=LIzPPO3Io6QTp/F+hvLG0AuUntcODJc0BLFVnfFif8hj0fnOn68cyaZHhFtxghjtHRcn4PcQvBgYWN6fawRAWSWN2Xz1eNMCqhXvRZ+e19StwW2T0TZjnj3+I4HuzITALpDWJ9vBEz+osNgx41hcNlVFb5lodlj5NzJPbvw5M4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jheb8f8z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jheb8f8z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08D5C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761953393;
	bh=fAY5wMp26zxKtsnnrXkXsU5rhk/HompAaAm/lXQ6F/0=;
	h=To:Subject:From:Date:From;
	b=jheb8f8zrASTYKvkKSjqSb6tpiXXMfw2k8Gw31vhOUucVttcs5adOTUbYt8tAMBcS
	 LNqXZNco5pp91nlWtxN3LRrD2G1eTfPCDfbv7B+nt3g6jJbQ4wblOdGUup8ww4UJq6
	 Ny+7HCDdkwgE2LotFhfRFfLRm4/y1WAjUIXEDhJaEJ/RJqKFw9hecAh+FzINmtpzbP
	 ozsKvcDU9TANGkPOC9zxO/OU9fTpqgfBwqyp56d3aFInzuS1Rac2eFIQAFKl197RBh
	 xaeQLr55dCaDDF8Ysc4N9q50q4jfPyS3yuKBn6jHH09x339e/wHx0ftpHFbMPtqorS
	 Q6387jJJ+e1+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F463CCF9FE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176195339357.7295.14179486740674718987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37191f43934dbd6abfa1d7f7391426da118b6ea71cc3c9b294ff19df8ef1c3ab
Date: Fri, 31 Oct 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761953393
