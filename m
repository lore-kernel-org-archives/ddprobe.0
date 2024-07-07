Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B8E3224DD
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 13:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720359983; cv=none; b=fabiRY1fVobnXqgBCau/bGR88noejTZFWxRhtEW1L0ahgkDXjFB23MTeRQdGnWHD5TcjSRwZaoTOn+dQ2fZb/V1mgGt+n3+MXaduqs68p3jJx7ub/xI81mSwQetidd1O8xSC6NDUiYZfjDHFhX5Jv2qhWJvvOsq/FZlLgvQ8xak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720359983; c=relaxed/simple;
	bh=U1PVJS493Uhz2e2I9q8qEyOEvRxIXVqpO+DJSuWxO6c=;
	h=To:Subject:From:Message-Id:Date; b=d7sDIrVjIiNaA8wdYiPdZb3XrcRkjvFb0+ri2NAT3n2WHAcbkm8I41hd9ewb2JA3ue6qE34TmWDyVzRroXTjKYzD+xpAwJP1fhFu2Oy/BQfRvyyjfAwgYLR54e5r3OFabsBoRT+uRFmG0nWZM0SHu7vyouNcK1Cy1u7t0p2WhJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDibr0q/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDibr0q/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07BBC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 13:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720359982;
	bh=U1PVJS493Uhz2e2I9q8qEyOEvRxIXVqpO+DJSuWxO6c=;
	h=To:Subject:From:Date:From;
	b=hDibr0q/uAoCsMngi4V7qx+myWmDfnp9x0re2Lg8vHz8BEA7yI5Tc6sU0tq9cWfDT
	 zjGPq2uLK2S1MSByimz+WOw2cwv1Pt6X9/DhoV+1TJzBYjbjBU7sTV5fHNKZ29JlB1
	 jkoWfLbbGsqwOa9eUtyjX/mn5NKKILWk3nNmY2v03UbioWQ5wm0xpyv7hRptaEykAr
	 SdWTtpGNK2bGUE1csrCB/CNaAUZyCaSwgIsNu6cFmOnl/Af+kPIJBs50UfPA2zwP7s
	 XzgYHBUCkS/6WOx6pvi1/VZkDXPYyWkxDmNP1Iqp2OGKBz1qzDqVLvLehWKHnI5QZy
	 merdh2yLMnRLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE685C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 13:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172035998277.13073.1615513136818972036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e74d8558884de4c8eaf4a9eb72482ae8a85f4224b50179326a20897d2a1c126c
Date: Sun, 07 Jul 2024 13:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720359982
