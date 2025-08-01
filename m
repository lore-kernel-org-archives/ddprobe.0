Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E9028150A
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754063994; cv=none; b=HasmUiT9ahCLFcro/Ti8SAsVUXTM4Tsfzn3Jo3b0dK6IuH/ppo/YWyaMvIH4cx8Scu0vTyzK6uYY4DIj01mFbyDsOhuViPNPkmMFDMiokMfSBuZS62vxwXyFn/GEldTdQ0e8BtoHSQDRZpYgc1KSLvc89xyvhD0ZrsrgDIIt5WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754063994; c=relaxed/simple;
	bh=7RUqdvoLBfNDq6vcL2JeVqlg3sjvZQITP4xGI22Qg7w=;
	h=To:Subject:From:Message-Id:Date; b=uhdVvuE10Qz4dXMu6Rdm+j1RHBBdkaaDLO4PuqTTs8WUCpFeK5khEt1BdnZzBsCjAe5Lq6MVXTHpGQoPETQQrLQXrrQRL38yAmiEq6KnQwNZXU/8Y2gfvVeMwZTD82UQbKXoRPdYt+PNp8XCCOOTygwoCrmIS2cfzJZB0k6td4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YNX7Bvd6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNX7Bvd6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D8EC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754063993;
	bh=7RUqdvoLBfNDq6vcL2JeVqlg3sjvZQITP4xGI22Qg7w=;
	h=To:Subject:From:Date:From;
	b=YNX7Bvd6waW/r3MPhlYez6ypHJO+0PTHW9n3BBfAQCsu2G4T7Rb/N4jqSb2w2egdN
	 +peuuu/f00n6K98C16q8xmTjvwyBb1VUAM68b3iq6F99wUKU9+vLpj+SSb2Crrv/qC
	 vJ8r3Va/MwlSYMtlw8+D/XqohirzsbB59ZEReQ9/3gGcItufVk6XQSHN8lv/rRVniY
	 4/sk1M4vKN1Actq/tDlNCrNgcOG7Ej7tt6ax67nWCUpXmE3uz2kA5yFmtqCYJOgdLT
	 CPC7uJT7x5qjZ31rmtO7W1cVpHp4T5odp/3GgrhvoOKXvHP2lrruIJw9EXCHxDfE1x
	 lK59I8yu/0Kyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96496C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175406399358.28137.12191617497614536639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 785573c3b4217a54de6174fd728f45c1c1f7d4a0720420da1700747be8620035
Date: Fri, 01 Aug 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754063993
