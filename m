Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5540F381BE
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 03:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720495583; cv=none; b=t7kujskEzfa3/j4b68K5xWe2Keel5enmVE1ElXqf3cGhmnf9YfUY0BqJy9DDzyqp1uJKyrOgfOsw8nbklVDGFlqkEtYRuDro6R5nsEu4INjbYo84USwDEkP2LZX5UjhjhQQez2PVRGSvn+Tk316sY8hnTaulOp99zzmr4/wkH3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720495583; c=relaxed/simple;
	bh=jEiInEfxmA5ZkbSJcCkdwi/agagkXIWNiPw2jkbUAHQ=;
	h=To:Subject:From:Message-Id:Date; b=OmSaVe8iFEhNp456z7BckbhyQBPlhKodKO4fL7vCsGjjC7WLjnA8QhV9uksupyQd6moiw0qiPsLAXVLgWcmKGBszl2xNE0U2dSDWbhCM0H5Si+VAh8bO9rIbjL2uu3Ry+ivWH36+rnrPDnJcJuSmGBBUwV2850+diKkjFXKtUNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Go+O/4dv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Go+O/4dv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6623C4AF0A
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 03:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720495582;
	bh=jEiInEfxmA5ZkbSJcCkdwi/agagkXIWNiPw2jkbUAHQ=;
	h=To:Subject:From:Date:From;
	b=Go+O/4dv0t7Dp0p+Ppzm8JfikNNAFo1nnUdM60RAyhxEihH2/KGIwWCwcVi0PrZB9
	 BexeoATeM+MjhFffJEAWXkcv2fxOvxj/5nCVBmlG2G47TjertBhUIE+vBzMtlSCLwN
	 Gjnu9AM1DoDke9PIDuKCJHV0kypD9LYR5DtUR4RFXY2oTOBN1AiBp5CjsoZeP3B2H+
	 uvo0QvbFS8TXV8Btmmo2l+AhJhRvihr9f82OIIY1c7IVs30eZItxqjFIipmRTdKASq
	 V14HwU8A/8FLptRmL2Ol8pRElHkRuzlJ47HxP5+toCk8W5pin4lAiYjnDGDm5m1gZL
	 6GBCRYMHqciKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE1E2C3DA49
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 03:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172049558276.10366.17085417750304553552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb55821af6a1ac8b8e23089ee6e73cd878bc4bedede6614100e84a3e965ddd78
Date: Tue, 09 Jul 2024 03:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720495582
