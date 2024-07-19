Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADD083A19
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721407554; cv=none; b=IQJgvN69xfNx/jYjHGRqMbMtfvoISOTKLZbDhfUUiRvQMIWUeGqnUvPaN+Em4CDl/bfYGkv088FYkyrqm9S93rZoECZKGR5Onnfmm724LPn0KOq8K+Xq++I1tuzv1KUR4uJzc/ySmlJao6I/mWyGAY1OVVdTiH3YTFvbc29Nd9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721407554; c=relaxed/simple;
	bh=1A5KWADsrLUx6MCDMlLEt3I3vjbbrTVIKSjzvAmtjRI=;
	h=To:Subject:From:Message-Id:Date; b=OGNe2hW2ZYRUYtCGf5vCt0Uz2vgUu6icSzblk9f0taXlqF/iAw+ofCQO7HGrQs6vvAn2llSRVjRmf5nyLRxjeucRxSiON2EhQ7U8BuzGbGYSwnhJop2By3Z2ea0qzn9fZLHSjROIifRsrHx1bcBkWvqJiU2HsmzD4CIukHumwFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIYGiLhw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIYGiLhw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B84AAC32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721407553;
	bh=1A5KWADsrLUx6MCDMlLEt3I3vjbbrTVIKSjzvAmtjRI=;
	h=To:Subject:From:Date:From;
	b=fIYGiLhwoBMs357b+uM9ik7R1VkYpv+C5QdwV/uio9zsosVzTUYJzWteFe0iiRk2D
	 sdA0giPSpJ1WKtaaPD8NNqQgSkCgddVxBt9aHanbCM0q8cqSNZpqeVt6Jqzy17MFJf
	 UlswKCP62WBAp+l4PWOwPaz/49qi6z/mW0/onNnyvGzatChesfJg1VLPMVTRo5P6CU
	 xW3ttYGdsOL3OiTA6oM6yib2PBw8lOc4C0E2Jh32uW2uEvYUz67/i3hrUcsLtZXgct
	 yxfBtVzmhsx881WFbBb35Ewid+xrq84WUUFEPiELuUDSuveL2556DY2HCWsuTlPnIk
	 Lpv2oHO+khG8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8D1C3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172140755360.24010.1047219405613079170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 434c0cd9006656b5cc7d8aa2525910e4a69a20eaa5dde27775cfd3d1fae72ae9
Date: Fri, 19 Jul 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721407553
