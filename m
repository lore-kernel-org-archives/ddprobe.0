Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552D933C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 07:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712993363; cv=none; b=Yk6Yvcr50qZih4qgxnNXbco5li8j/iArWzyHIv9GqCjsnbIY4VINKH8DGrPXf+dKbYEpeCdBzUptzvMOXR+mNTclED6x21CD6mjp5u6GUgHdEmgwTNUTHvuDxqiAQAWPtjnE3nW1apNnxhThq2a3otVkHRyG+DX39OXNxkIqWgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712993363; c=relaxed/simple;
	bh=/V31WoDEneLuaEf4+uku60+yJBzt7qEOWxl+niu2zvw=;
	h=To:Subject:From:Message-Id:Date; b=MqfP8axg4VToOLEOMJK01naSQUtHbZHIshet5w++0po784PHDtRRUS5JNUct7ufGWOBuNNJmvSt+ocuq7VlmYEUHKU8QLFtdudx2fTPxNnO/e5oCuIVKqYsMHDKGrtGvUTp92k79hu2IXEMJTJXpQ3Bg3LEEGfdRLR8ePlSGUak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XgO4UrZn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XgO4UrZn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1A96C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 07:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712993362;
	bh=/V31WoDEneLuaEf4+uku60+yJBzt7qEOWxl+niu2zvw=;
	h=To:Subject:From:Date:From;
	b=XgO4UrZnDf80CTBCKO6q2quE9ZydPHmNhtLN541gTkjkMkjGrlnTPT1xDj4gUcase
	 BZ0aJqFrgJIqWaL8+KijU5/ozBKVgcfLVHYCJ8gFGKM32rxjuoY5yATFgBm5SUfNT9
	 5D4CieojlhYCIAfv7ZRFxNgPJfQH20oaAgruGgy7LtRHfPFiWNMn2SkW7PB8BBFjQ4
	 ujqztL85eoziRwn9FlrEJsdkils1ZzyQeYCDvike9QQVpmbzk2Y6fZsx6F5fDfuHh3
	 MQUmZIl8GzFuGG2Cdjn7ZBQoDTw0FHdakHsnSc2+c2A+W8MZ39N6NJ3FSrRMMqOz9n
	 DbNGxcf7LEMxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC057C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 07:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171299336280.21942.5664783120297258729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4c81ea8ab5e5ebfefc2da65d3111622dfe6d15f89134f121cab2e79b97ec819
Date: Sat, 13 Apr 2024 07:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712993362
