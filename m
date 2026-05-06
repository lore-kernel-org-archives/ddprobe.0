Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E4E3C871B
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 08:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778057254; cv=none; b=XQLn3G5jWZfeTlV12NMpX7mcVePtAtVHa4uFsbee1yXmcIzXpo9Z0T6wzgilx2MUExs2Bx1ifkBEOkASg4gxhiAdSagjF6A3QOWDOLCBQ2I/I9/Lt19wK8uhA6YKSMXg82GevxBRCznIXaJng1VZG4ogndqztugq/GzcBhMbPVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778057254; c=relaxed/simple;
	bh=9SjN+v7FJ9oumFSaCbAzGt04VwJcmF+s2Nk9rE/71bk=;
	h=To:Subject:From:Message-Id:Date; b=L9kflDUcWv4ZpAuLqNfE6waNd4UxaRYDYRuMRfQuCFruf7S16/NJki3hGNpjnnEPB0azZYP3Vfs7fI8O0vvWgcLtPlRbQW7G9zrf8ITSRABRAR6dst/ZTFNKNIUWM4fpvrSo6nUTytwPnpsTy7soGf3BuW2xNeF5LC7nMIa/xEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMFgZFHO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMFgZFHO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02E8C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778057253;
	bh=9SjN+v7FJ9oumFSaCbAzGt04VwJcmF+s2Nk9rE/71bk=;
	h=To:Subject:From:Date:From;
	b=tMFgZFHOh7XPpwSA4sN+4K4iAw+MHogGHdz4/rM0IA/5XIVSb4o+Q569McIE0J25d
	 gfTJO/p10CLRfN7k3IPCeezajsO4qL4sSJ4cI0MkNNpAzZozL5351bsBy0XU8gCOTx
	 P9mfQZcN/HVByFAveeuwGcmsTi9LEDHLGtDN6K5VSNr6/yiVyU05MOxMrZcbeqB54C
	 Nk+QOE9cgLH5U0+BMaS1yL8kox0100W1bzTUhp3oJgRDgBSjudCU7uNmyr9PI2fPpx
	 AC1rwf4VteBx+4ze3uVIZMqll6hMjxV8xrnWfedi63iXuMQRGuCeiPk94qIX7EjDI1
	 QwKwk4J6z4cTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD567CD3424
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177805725369.6903.16575110637988579879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 308217f4beeef320f30199e03f85fc1d6ac205f54f4b645e03bcf849d3c04a3a
Date: Wed, 06 May 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778057253
