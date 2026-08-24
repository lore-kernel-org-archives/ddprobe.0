Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5589A3E49E6
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787553034; cv=none; b=gjmrAQS3ON1TwTDPOZd7sFtojOR8dLCILOQKOHP8UDFPxdpQ98GCWU6Kvn+xlo6vNuWqBn5wiZxY0BI9XODOxoW/UW1hf79Q1wM6T3bHUhaONtQSo+kDQPoAXN2SmEIREF/1XYsQUMuUlgFtFoUD6LbXpOBusIrkEvm/bkUB+gE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787553034; c=relaxed/simple;
	bh=YvLWmf+53/UCD8PUvc4xdPSQ08+XeFwI4dIbHullxbs=;
	h=To:Subject:From:Message-Id:Date; b=VUVFI1Y3MRqvvzoNEPvfxDTiyiLFQPHfHAOu5O1NZhz0MLuoqHYnFDI35BD9KrI3RuLV7L3PZYA9bXNW45PAFhsxxHrWJOq41dYvOqWGRgpTZDT4UQlZkhjRtlx6nQsCL8ezThpniA+tK2nNHa6UrapZSJojA/tZzXf1aTIXAC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQuf1ILn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQuf1ILn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D773FC2BCFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787553033;
	bh=YvLWmf+53/UCD8PUvc4xdPSQ08+XeFwI4dIbHullxbs=;
	h=To:Subject:From:Date:From;
	b=cQuf1ILniumGz8byWcDPk3yulT4Pdy+IpZJ8qaDxIxkUV0sK90+UnouOnrlB+bhGN
	 hRrkDE8FkHqpveRO/xEOE0OSYztKTx2pNGTv4qk9WBgwzAvie//NWNNjqjKPZ8bCc2
	 wVh52xghqFR0ZO6u40gplztkiVZ22VxpThkItc7XwoLUzH7fNehvVH9gFPvH49zRo1
	 9/HCLMgbIEWWotGUIrqZyC+Ao/xlexDtCym3mFlcxWbpr4l9m6uv7iZZN39qNFAGbY
	 sfPQFNTRoXlI1GvNkr6cZbo6/lcvTo/qrKJIjyXoY1Aq3FBSGadVDUBWZBvO0dxwYh
	 b3K/MbNDaF7Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B208FC5DF9D
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178755303371.19067.5325823206810287783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cf3538cc85ccc17b6c28f91ef3d954306cabb1632de15848321e7b01b5e5778
Date: Mon, 24 Aug 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787553033
