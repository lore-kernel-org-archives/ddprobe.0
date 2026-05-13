Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D5134404A
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778634634; cv=none; b=FFaRtPCDm5/QeQVDqTDGUQZMwhT26fZ93tBH1wTkE4LUcbUcYU1VbEohD6e5xkNwJufdQo/ld5Vw9wgHeCoh0ltLGKry0SdU7gYblf4nI50rn557thcTtVeriigleF+ERd5vGXDxlkjAi94F3soChowAV4LByB2KuL2tGzI+c7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778634634; c=relaxed/simple;
	bh=QKfHnr44spVzzNlR1NHvNvfEQDwNvOaFUw+cb86jXiU=;
	h=To:Subject:From:Message-Id:Date; b=l/I1QicvaLSe7XX4iz4J4eHCt1lpaTG8W5V9kgqyviRV1obZxz/kKjG+R88bdZZYovGvWp6y9v44DQ16v5v0bcFGq1AjKVNDas+bXNZOjFoYwpiQefTII+io9Ya8n7D65ZlBFY00WnZoDwRFpM486WS4/3ZwKGjZRmjnO6h9fPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwvvH4+Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwvvH4+Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0193C2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778634633;
	bh=QKfHnr44spVzzNlR1NHvNvfEQDwNvOaFUw+cb86jXiU=;
	h=To:Subject:From:Date:From;
	b=lwvvH4+QYP9YjTUxXSbKKHws4+kiGlXgs8UkR0OHoc9JEXOq0cRGST99tzv9fXN9V
	 1329a5439IJAi4VOd6BpqOdHcartBSmZNGg+RIsZzMIndd3SHSDQF4I1ZNbjSO84bF
	 yDhUiLDoRv86XinmO97cJ/3T0UKfIs3y/mAG5YJQorAKmCJXBamPk4GyL8Y46k67T0
	 TgAOrZIALA8ujoPhvAu0gsx3cJPs8um+HExeYLgcXJ9EbUiB1uI3lMrwA/t6L2vT36
	 IrkIW2dAJiZ4HS1LmqCzs83oopv79+7PKipqSdi/pgcuvfVG91bPJ4+5p0tDzRAVLs
	 CO6bhBC45AxZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB5D7CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177863463375.10316.12059392090953043414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a758763ffcef284ac6706dabbe6482042f1021add0d953dfb94a20b25145531
Date: Wed, 13 May 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778634633
