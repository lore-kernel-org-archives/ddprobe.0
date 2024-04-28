Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F22A28F4
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 11:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714302143; cv=none; b=CRGjP206bFIf3tQjMkOOQj87OYASkV05xZ1I+4fAwcM/ex1ja0o17A1sluciTVwwSyIN/SMzJzN8f/Vp19na84qqIHovt2XobS2wJHtt4+wtPSlDSbsskdXuxdAVOFqmadp37+kHHLRFizR4mo1cXAVRu8IMr/jDy3kwsGvU21Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714302143; c=relaxed/simple;
	bh=SOXTPHrQCLS5psl3C9qRLt4l6GJzp+wIA9xsackEw9g=;
	h=To:Subject:From:Message-Id:Date; b=VZlZ+JefSj2GoMBlwM2aWWr1qrDvlYMx0U+a4sx61mkNlepM68dwuN1h5Zacm0l9KdPrzp47vqUFLGYDH3Y/WAEcDglFz02kRQuhOgXteZnrUu7aeXMIg15+Kzy3hDx44NeY2klX8VioJB5Z0TXZnGQUQT7Vy17As2++/rFur4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQ4NNO0U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQ4NNO0U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F36C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 11:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714302142;
	bh=SOXTPHrQCLS5psl3C9qRLt4l6GJzp+wIA9xsackEw9g=;
	h=To:Subject:From:Date:From;
	b=VQ4NNO0UQkFwbYGfACb/O1UUhN+Lrf8nobMFm85qaHkAC5YqBCL7UxBWv2mrz637A
	 aX75r+Wcz+t+GKCn6SZfYRvODBS12LKyHWUBV6/r2X1OgtYLAL4UZLlrP909UGPdwi
	 2vHTItA8pHVMMtEmIprV499knv8vzp75eFUYCk2eYhNyh4UnGPSDQsDy43AmFKw2Tp
	 5nWn4K3RRUXU7jLWzcTc7uI6yObgFFrERxEZ5kOZ2NvYJQmTHsLyNMpeON78x2uPRc
	 VTQbYqs2A6czJDd0MryjHUU6X9nvqOK77r8fZPCp5RtyKiCxFwn9dnDSpwhkshJHF4
	 tiyPPESPNxW6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF98CC4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 11:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171430214277.16647.9697497154845012643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1890cfd9908df890736bc16f4aa164bd37c15b08fbaa028310ded5b60872490
Date: Sun, 28 Apr 2024 11:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714302142
