Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3052D19E80F
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728845754; cv=none; b=cVT9cpK1czRx28WbyiibsboBupUTXLQ1i/+xpnaT19wwnduUNtfC0/4hw80YSJSoKKYSBQYTfLCW9AKm1LmlnQlBkGh3f20agR+6ZzyB6FOHCqD2j2iPIPJ0KE+4AXuY48ho1V5S4NJ4cD+OIOEQG5xzDcSrrhu5+KpxaPnVcvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728845754; c=relaxed/simple;
	bh=0Wi9p9O8Ch9LuDNmZ/aSdm1qNFHR4RTbwLJzsc/bPlQ=;
	h=To:Subject:From:Message-Id:Date; b=iwjGFZ+FfmlYibkxAAp8XOR5q5DndVo+7A4qfIz1W8gD/Npq16UfdZKg6VS/YSfw2PFj77WnBAHR51V/xshWDerWFNERFQIUMSFsAIsmnKoB/F5mQtIjnbdVJVHjpXSu3COMUHejsbRcgd7Kq95UH15Pk05eip5VH3DPCZn1ADM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cWKHE2Mg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cWKHE2Mg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE8C8C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728845753;
	bh=0Wi9p9O8Ch9LuDNmZ/aSdm1qNFHR4RTbwLJzsc/bPlQ=;
	h=To:Subject:From:Date:From;
	b=cWKHE2MgT8wrfWbAnyBJKvvvJAKoYn4H8SxMlY8W2/2g8fe00hZJCHMDDXrTPnKO0
	 jVhMZqoY5oMFuIlPvEPxG8bbb6Vo2x2rGBc1lDLqegGBbw6kYT3LCqgywsQqd4peX/
	 MIKjxgXqIev72y792853m3mLArQXwkPuXI9du0/G2QhKlr7Eq1TkfKQnJcg3UCoNw0
	 BWCo/Tp1KNVY+zdNa21jk3B4P+gZCL1RHEHaw2cjMMPBEFlYpUbNQxRdgFGOsqLpQu
	 bbyGdh/1lNNsW7gR+Cg6TmIclQFnVzGA9Ojkn1AT17ZsLrzsQ8rqmmL3UbN+8IirW2
	 Hwo2hfLVpA2Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FF5CF2579
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172884575359.5179.4497021063750977993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8b947c88c1c2c3efe0d5e3b5b77f6fca1ae12d0aec15c3f828079544c33cb89
Date: Sun, 13 Oct 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728845753
