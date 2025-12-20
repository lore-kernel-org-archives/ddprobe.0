Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D011D6BB
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766194434; cv=none; b=nf+bXHLVFX4MqBr2j8sACYIpyPFGdUUFbGoC11n+B8Ul08OVWvXP8l/aS7J9jMu9brIFBjJKJRJYvEfzY3TEt23sLOXGEhh2QZPN6sSArcipO4FJ351w0LnbD5DFUldUY75VzlvXTNstJaEoYhdXVxUpfMn4hsblKKGPu7vsL70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766194434; c=relaxed/simple;
	bh=wYSiR08uOcZ8JxZjxmGf5QTbgH0ayIVobBoup7FahhE=;
	h=To:Subject:From:Message-Id:Date; b=HO57GCKTS51/y4cGHZuIwsGDyI6KeAPHLXkWNmqHFv21S56KJuQZH1gdhuDbfaZu3l3PcvRdEaqjijN/Qds/G3T+aeAja+0+h3mYsKDQdxFNDBeNXfRxBDyUjCF4UTayQXtiZaQbPq4XhRNRcsud2yRl6j2LetL/1Y+GVA6epY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U4kvFpm+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4kvFpm+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8199C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766194433;
	bh=wYSiR08uOcZ8JxZjxmGf5QTbgH0ayIVobBoup7FahhE=;
	h=To:Subject:From:Date:From;
	b=U4kvFpm+hNnncvKoVVICZV6JjokkRjo8ospT3rUU7aOlwRON7uAgBn4pxEqzrSGi6
	 ZJfl6+6l16xjUSsCCQ8QCmHbB1OwdHNZvMwfbZLjja1HC/YitGoRHpOmjhl9RWMw8c
	 uGNJYUCIrVsppMG3W4nogqJMiwq4ebP3AwGN0Yo8GZZBI20XTiaoePPA/2t7ZuyO9D
	 sTxQQ6mvGW2k1lpZJEiQRD4sthYE8WthorUrfT5CCwh4+R6bPgD23nk9vGqq1z+5Td
	 iZtyasbw8hWEraLn1zKXh6E6408odu3aOFhCwrhrn6J3VlwA2E7MGi0alfO+MxFgW7
	 QoGz2sCEjBg0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F946E668A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176619443357.30929.2025368392315425570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d4357b6fc39c6cc67f29b987c99aba6f6cf98ab4187ce3c62fe157c93fc048f
Date: Sat, 20 Dec 2025 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766194433
