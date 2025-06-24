Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2072B13B7A3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750736394; cv=none; b=CpuwdpDzwyT0j5nNCk4GSqH0VWcEuKLCNn06/qGmmKVN76Oshw6Swi8XkdCtKJuevUETXrAoARV+0GSpl5aBsWoWkGAWlrtc4GBKDs5EgchkgzteCom7JgZ8sR4FAzdxm+V5VdnrpDsXke/5+BEZhm0ukZuSPoz3HopyBtpZivg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750736394; c=relaxed/simple;
	bh=FTtFp72dSM2vJpuakCSk4jriAxEKl3D8KNZzMfYCX/c=;
	h=To:Subject:From:Message-Id:Date; b=GpEn7Bi1pwbppmCrfisTKDFJCKkHdY/u8ZKonFLdV47Ljk9cVRPCSdBk6QobOl/j0Ij10D6YbNG8Ty3F0ZlQUxjMmyoCx3E60a2qHdUqG25f5tf/GU0X9xSo8vviv+Bhtjcu+0xZ2zDIRw0/5drYPAbA8cBEY6toH6c6qe3DCtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/Tr4gL2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/Tr4gL2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3585C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750736393;
	bh=FTtFp72dSM2vJpuakCSk4jriAxEKl3D8KNZzMfYCX/c=;
	h=To:Subject:From:Date:From;
	b=n/Tr4gL2V+oFMZv1hc0toWIHFHta1DKNc3pMyLx+AcX4XLf2AIiCM0Yc0XCsugp79
	 Bkt+FzoQGoyVPRonFm8LbELJM6JzrABPg2utgqJN/zcwNnIvPL7+xjgx08ZWPcLfCO
	 LHXMiNyBacNRj0AC5Em/B2xewITkK8QNagAx9Od5tRvD2OFDPgyrHHq2XkqVPoiHeM
	 D3mvjdNgrQKiUYIbGthivTF2hkSXMg4yJZH1qGjk+ROt5bH6mmMPn2axxewOxBNrls
	 +DPDmKSel1w1ljDncvIKUEgiGJedV0MQLxFwBlSk3D8r1m5Ilz6iA0ij88zclK6f2S
	 MnG+1PLML6RDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F671C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175073639357.10289.7943772309714852603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d65d7343922c5508c821f5b9b5148808f70a1daf2448234798fb6e1957cb4d3d
Date: Tue, 24 Jun 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750736393
