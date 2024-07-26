Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3AB2225AF
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721987753; cv=none; b=ApOCmqbHpNEU59tc3SsvXji2NG+FN1VkubgTHMeajk+bgVOFod997ZTJ3DawYmOVPfQTNCUTMKZzKYC12Q7pRtZnSpbuFPR8HT9z4wyJVk7PREIG9Zg4qTp3Hrzd6+oRj7OTkEbiK48ooKTgIvMXIPxugIYlPx8wSGooZKEWmKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721987753; c=relaxed/simple;
	bh=8w+KvXPOpDEHF1vB9x5qHg9TjrAuWb/fKbp3fw61v2w=;
	h=To:Subject:From:Message-Id:Date; b=W06IKJ49Qr0W1wXpJSJlLtKp1lF5zwogM/USbAJZIEABSVb/qNZQWrqa7I8wtDrhho5SX+SGRtaRtJBMTPK+B5RQ3otoSOX3hZXTz6Bj4LjMieaMz+rIziAABe6wegUs+7427u1MUmQbtBj/Ip+vL7tBirRSPtugDmrhGsyLvaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2+TK0E/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2+TK0E/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E4CC32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721987753;
	bh=8w+KvXPOpDEHF1vB9x5qHg9TjrAuWb/fKbp3fw61v2w=;
	h=To:Subject:From:Date:From;
	b=h2+TK0E/uG0cZEKgkBwFevNlK9ZtBTLSH9SxDZ1rp/2cdVq+m5s2siPnMLvwwMY/l
	 ri/HZybP1tTvsSgWbkkQvuBswlYQITech3VGspAYtYHZ3ErLXO5/YN+i0554bKAE5I
	 nA+UNm5BVdTuvk9Zjqipx33Dj9J2ojBwwMHTvGmi9Y/CM282EWnXN5DbiEirAAV1vu
	 uFTovfyV6LL19HNvmfq7n/MIEg32XeaDB0tAGSVKwDeyJU/RyWJBkXKLJMO2fzC5fa
	 dc0NMsUpra/k/p6/A8P08q8Spr7qYkH9hw37Jko8G32eGZqnhtlPIua/AeL+ISPJGS
	 xxCZGIB9ayJBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C3EC3DA7F
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172198775360.10935.6220508621091016884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a449a3302b4a7c7e9b8898588c708d712f638dd3e70f1ae7feb4861e981fb0c
Date: Fri, 26 Jul 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721987753
