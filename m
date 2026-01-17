Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2496A22259A
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768679634; cv=none; b=UFrFakiD4ZM8i+pRnbeXGFe9bT+Kijr45pCITKA2Fk1Z2HkuJH5firfVUNVEObwjFvpXkT+Yv8OMbNdmHCwvMIW6rrKdyhe9lj05SLp8bysbMRDJol7NCTWjpErN8x656LHp36kSnQugYsKUEtIGqwUIlmk9oK3IVuu2eoS/BRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768679634; c=relaxed/simple;
	bh=YFus4YEVIqqo2VpLa32GuYz3Dd6v/r2tt2XTTRSm6J8=;
	h=To:Subject:From:Message-Id:Date; b=CW1r6jbCdW3Q9gonBMsAtLYwMuwcjg/v9G5cknRbYsxLXUL4rww8C44j2wSbOpxQe9xWbh2S3B1g6Yw7wM9Rmp4oJfw4GSXU864C0YdzEYTgNU89YIFBCNkdZuu2NFJEBb8t9E9S6ooLq7JZXEG6icjfeyr8kpnjefaA8xTtOrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWdQvqnR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWdQvqnR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6496C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768679633;
	bh=YFus4YEVIqqo2VpLa32GuYz3Dd6v/r2tt2XTTRSm6J8=;
	h=To:Subject:From:Date:From;
	b=hWdQvqnRS0zuShUp4iWctetnqueFqdasYbTDgf8Bop9c8mo8chkWYDdbLcB+ijMZz
	 cLubWlSX6ThlfFa3JicyjtTe44CIl3b98UdMDcAYFLWt3/qKI/YxiN69Y5Z2Vm1d38
	 PHZx9LhBlfaOwungk03ZcZ41dU1ouWJVnRDZ9BRncmMneVNUx3le0XemCrUE3PdX8j
	 kXUap5odMVgwlvh/FWxLCjtzHi4uogbEPBo578Gy8cM8st6H+XyKW1e72TFF3x4j3T
	 TxUOE4RedwVesL3pDcVvLyPExYD8TzQbvU/2qLbOVZXssCWqawljEaVef0NU8WY18M
	 aJFHeOvdzafww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95365C98338
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176867963357.24971.12539947600561343621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e6fb88494468d6e1a411bc5a7661aecabd6c562aff1f79293f31f116fdfc3a9
Date: Sat, 17 Jan 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768679633
