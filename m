Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251515C8E8
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707585497; cv=none; b=MEV+hnuqlTdeQ75dzpgkRdCwEwjpn1/07NDuPyGAcw5/cSFtnhLwanqF52TqYJefMlgtdWehYvZbUuLh43xFlq+7GYQTI8IJpQQej5Th0b6AgHAABflEhhT7A1g++ePAx/nlk43Oy7wdmynUyXc3PZlRA1uxfHv88aCddWPTjLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707585497; c=relaxed/simple;
	bh=fjHEbkpUyGMOHMmsVLcCFh1he1PDnOW5ktcd+0jSQDo=;
	h=To:Subject:From:Message-Id:Date; b=XkbYW7X5WnUklNWiJ5omSp+y2k+RTBjmjzzXBwvIsq+ztNP48aUeMVyAC6if9zeptvc8PP1VJNPsRh9hgoVPK1FxCTKB9xYH76h/x/uLhjO8XUfFYQuf4e4TnfofWDgnl7gZxJE4JsHaOIKfAlkzMm2KlLe7LzFueqpSyOQ+fHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KIjQ8T8Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KIjQ8T8Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BAFAC433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707585496;
	bh=fjHEbkpUyGMOHMmsVLcCFh1he1PDnOW5ktcd+0jSQDo=;
	h=To:Subject:From:Date:From;
	b=KIjQ8T8QhO0OlxquI4HXa/P1KPWxzCaS1lCr5OztGZHvtjaBdC/fqi2nEKC0MW5x5
	 GDJMnXaV4C4oShTu6wUu65CCRncImOLD8Axhm+Juk+bUxrja8N5DXK3wuH1bTCnarF
	 NsJ0u3L85H1hPhuLauYp5Td0Rx63IRovkhCH4Ow70Dxgt6dNDF/L2lnLm3TSL2BO5m
	 24DitpqvVkH2TedZ1ItO/z6zCLtYR8YroaVjag31YAFUWmqgTNvxzyCQz5+33ZRKf6
	 +fUaaKimFIWrAG1DU72qnjmBIFRV7EUD3f/wROuLdduY7pnTRktZH0/WtAuH+NDWKs
	 qWHur3oQSTSMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BB87C4829A
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170758549640.11294.18440277412777781868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea38f9dc3dc7a17f75d09babc2da6df02557183d99534f82c4aa643470a96a85
Date: Sat, 10 Feb 2024 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707585496
