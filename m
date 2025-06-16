Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5FD1E501C
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750072194; cv=none; b=alTp9oxxm3i0MHBT5nd2uaRhMt79iABgPFgvCnJqnzzmG7HxWFaB53WLBHg6vrdWaDe+SoZmfpK03uBRfArsyIIB2+hjqRCBP88zXYm3Lqt10PFVFH0VThvjSwIrjLDsrfra2nT+AX6kVD5GuQr9zwKR+G/+SPg/oYs3Eg5vwso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750072194; c=relaxed/simple;
	bh=lGFjZGL/83NJj1PU4IY2C2p1ws6q53t0m5xFWFYfIz0=;
	h=To:Subject:From:Message-Id:Date; b=FTKiolYxFf4tRYeblXan+enR24Zm8V2rntI4/LjoxFGHOktkLuS/hPQPs5C8TQ2uetOpEGbr/ZBKPPfqjEdPBTqerYxL4CgGZYAPSAyhJuYdbdNiXYXt5R6cSHS3FbfVO6km3YvqstO2aeHLHgar/yfdoVVTh+vu3LpGC1OuhFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jxH/jkUN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxH/jkUN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC8CC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750072193;
	bh=lGFjZGL/83NJj1PU4IY2C2p1ws6q53t0m5xFWFYfIz0=;
	h=To:Subject:From:Date:From;
	b=jxH/jkUNFjapyPdW6gE5LqixHRt2FyhXEOZ2qOimiOJjZERN0EHnOczST0oAo/qpm
	 DHz8E6T9EUImeRGCM5IoqDZvHzo42j/aztwv6rszSOz693OQE629l31KbIFilc4Kbq
	 26tAtYU3NGU3SR5DPdIRgQsYnl42BsYH0wPX2YqIJQ2DW7UHIMcDmUmm0AFBQhk767
	 gU/2hWd2vkCON/3pNNF3foNibs93fE67ryNfC8QwLMVTO6Uy4vaZIXBeGqVDnzGVBW
	 Z/d2bDLTSUGwmBa77H9Bw0pwLZotwR7K0ruTWKLJJMwDNiRHPb3kNsnAV3c0MXiypA
	 Sf8xvNzMS6deA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F481C71155
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175007219357.6008.17736766563401193258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29d2867ef1ac12ce0046eb9d4390c9e69ad40aeaa396ec4061364bb52b120ff3
Date: Mon, 16 Jun 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750072193
