Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211C4CA4E
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752950394; cv=none; b=WwGn/b5bCwJEipiQa37+D7aj/EXbCttdHAZJ48q7hBtdDWbVFrzencQE90oZvWNyLLLjCuM8GL3dmu+q3dwa52JwhBwoWPOHjKjPOZ4EmyDXYKc2DrK/J4Hm48a/psKbhajVkn0gYdBluFXb6RnPdcaL5wTo4KFtTOIwpkpOBoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752950394; c=relaxed/simple;
	bh=rG3/nJLvu6uXvNRXWdaBWYKrDHQwwWUdUZJbqGdgbvQ=;
	h=To:Subject:From:Message-Id:Date; b=E4FqpWM5TBDQpKI8KmiW7t30qdVVm4sUCmjyOuEnb0YHxkRkPS5yz5/5vk3lbXjDYjHAkdHpi2JYL1pikq2ylBUW6CbaeOkG11IaipRV87dOj/Er98jLwY+HkzzvYEVAX7OzcJjQos9khPmQgZ3kFHoXj/sayuYFRZWLF3Ef2Yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMx2Vy1a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMx2Vy1a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70D8C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752950393;
	bh=rG3/nJLvu6uXvNRXWdaBWYKrDHQwwWUdUZJbqGdgbvQ=;
	h=To:Subject:From:Date:From;
	b=kMx2Vy1an4l4EIWgWdXfEp7FA4NIA0GA3QaEB6xCXXDRjrOzDMkoz2A/yI8RHfvPs
	 qxzaPwGkY7m2eG0rIabUl3KGix3HvQSgQ3vIXXNAKPq3+NC87eW1rQWTVCXDdEuBPt
	 oy6x4oL0D5hb7EQWhaADf/iulJgNHOP7fyPl+Z7JtfSJOiJcrZgXq67C5V93HjN0m3
	 DX3aQSOHD5BcEmeGR3GMC6xFGh/Sf+kawBbSU39apHBE/HnClW9q7taXFgNiYvPGVO
	 oy8a9Tcd+l/71A3P2F/v/nuGWIUL9su22EH8j/KI3IJukyuaWYZZyAqkNh4+/gCNNF
	 f90XlEIs0MxMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9268EC83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175295039358.26881.10619753569345712493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b08802f8bcfb8ca82a582742b72bdbdd739427eaa18297534f2f4970d526b68
Date: Sat, 19 Jul 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752950393
