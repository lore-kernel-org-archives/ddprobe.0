Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4008218FDBE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 03:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781495194; cv=none; b=tlfBeO+TSm+fa30VNgcV48wWiy0tfzINAgGd6xaUdSN28rehaTDEKX8rjTqP4hQMYaGmAOP+XeuVtkC7dIUII9DFk+6v//FoUkOocBckaGAB2Y3FuquLtbmn0lSwMWAEQMGvB0YV0Wa77bt1ckjlMBIBkHIWMUuRhSAh/rFfPFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781495194; c=relaxed/simple;
	bh=pEmoe6TRrIjYK8V4dY3Bxm+nGYcDms0BVBa1P6RqOeM=;
	h=To:Subject:From:Message-Id:Date; b=NXCzBwYzfc0lQYDMWAwpWLXwM9RqhginBnYYBINGrDrhHP0I/rqNSUrYoooXADj9imVr4r/pUSWcETu1V5r5L5HXwYeULogTGVi3CBBesPxsPKGfCbsV+hHi9O4SRGpakxaTZTU1dP8wXDHRxZXJRVlU3SkJ6N8e+TnvoFim88w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lCRFgbyt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lCRFgbyt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7B0C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 03:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781495193;
	bh=pEmoe6TRrIjYK8V4dY3Bxm+nGYcDms0BVBa1P6RqOeM=;
	h=To:Subject:From:Date:From;
	b=lCRFgbytOPTlaz5H6YoZ0rmTigIBhf/3dmLM1KpCNvo/E1z9lvQTrEvLvHzZRpIJA
	 MpnMi4sBtLBsa1sDbjLKHVFKOejYLkFa2UjfEH5OxgQSSsOMGGi+xab8nxf1U2vwwi
	 UgbGfaumBaz4sJmArKtxfyhlb58XoAN8R5A+tNXVGXY6IZjabaZsKpHy5fpsOZNsv+
	 fkLPdbLrXTT+N4TE5U/rpTszIg0dKGGYwGAOynG963MbroFFXMyltDa7IU/2k4KDgN
	 6AyEFeTe0mtE6vQGMQ1E9zjiPNkKfGd04OAfgCNXIcfMPq2lyohZ1hm38pll+GKX+V
	 yZ8ALr8XxogUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2939CD98CE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 03:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178149519372.17279.6978354270520779811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b39f9d426faa03ca8df6907a6f95b3b9cbf5dc8f9b24765307993c3f8ab8e10
Date: Mon, 15 Jun 2026 03:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781495193
