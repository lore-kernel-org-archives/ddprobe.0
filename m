Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DAC833936F
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791004234; cv=none; b=oiL1nvz+zABNTUAf5+N/qm+zLr9YcpA4Og40BvCCG8iyKRt7iRJVoL0Cx5U6vuk+CWa82iTpLwGZYHK/eQEGw3HE+MCxUZ/0peM/Md+gcScILkO83w3SqAXDRIwU+0EmSLqa3pN677iRPVxzrYFDNo5lUJziGSIyZ6v5HfPCzFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791004234; c=relaxed/simple;
	bh=kY6omm6eX/exrnDVm3T0jPIh12Pdajc10nNfQ0xNfZI=;
	h=To:Subject:From:Message-Id:Date; b=Pg5XPgYm1DefztBSJsfd17VmtI0jZQ+XZ8kPafuLix8ydQMQjh3Mr/G3nst86o59vrWPh/s60x8nvwuKeReQ4ddL1H/s7d0Eh9eUqB3yjVZzmFRuxTS+2r1h6HSNiC99Y95tCHAf4ONfR2cBeMuvFCxmvmc9R2YTc3/6FqcuZXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qSokiKHC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qSokiKHC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C13C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791004233;
	bh=kY6omm6eX/exrnDVm3T0jPIh12Pdajc10nNfQ0xNfZI=;
	h=To:Subject:From:Date:From;
	b=qSokiKHCi8/aMX/hG2JD4hvysjKetzo3Q0YaYEa0aNRySBF7x5oUZiVw1BvVsDLm4
	 SS7ZzG5Bg0e1USGWbr91BtxojODSNrv/qyRoURSEVN1J2PEqwqwfCDGbn9OWgRTiLH
	 Ggpakn5/FPVSOwpEbIDs0mhvKrGfzfXHHmwOrad5ap+/ESHBtZzpST4x8t3xpdL3QA
	 Y7pjpydjNZan+2h5UkRyNg0ZY6yUabjBwRE07ytvDCgMSHE9vXjeV5KWNrApajBP6D
	 Mo1+sA4vjA6tZYgel0k1fGn9/XoQr2tEcZfi1WxQh7Kjh3tRh/uAh6PU+9YaFPrfzN
	 v41jHVF9sKVTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFC5CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179100423368.17307.11491407975967750739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6251e7fa1dff5009628e445bf1de791ecba49a47b02da85af102987a7962b858
Date: Sat, 03 Oct 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791004233
