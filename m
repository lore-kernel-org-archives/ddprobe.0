Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4571028DB3
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724496954; cv=none; b=AEIuop9E2kmA5Z7srJi05In+LHKzMlb4Dd2omWivJV7dwpKNI9ym/BPSfixKOFWO6onsEyA4NnSOMttoVX+AuP3pRUySDzqzxIVfzGX9UbC2YDuDQfAGoyi4fot0VMzBdUMB9jsTfKfChC4BIKr4SEhMW7hCbov6rZCWVObNtcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724496954; c=relaxed/simple;
	bh=oASqijZffxaVJYTNvHsCbEu9Pc3UIAv6YS0x+jK9Bpc=;
	h=To:Subject:From:Message-Id:Date; b=GMOTlGGdu7GOkPApvduYVceNaYwwLCiCR2PI7tv/75cjkB896qgrAVnqoPxAy3EssyM4c3sQpKXOIVh7n59v+dAnE4ckXaSAvtPYcEi7HiMpERyU7nc/pHyA/YqPf9U/QJjYhfavE6pVlx65famaT3rUXcTwyMGT7sm07gqqOLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7+HBZVd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7+HBZVd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9520C4AF09
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724496953;
	bh=oASqijZffxaVJYTNvHsCbEu9Pc3UIAv6YS0x+jK9Bpc=;
	h=To:Subject:From:Date:From;
	b=X7+HBZVdNn5+B1SGSEXVfjC50pZ2NaoF4PMFl7ohhfG9MFSfgEPuymh6xVtUuukuB
	 Btdk2T56p5shrLFKwePJG49bqjnRSh9JGB6x/2a0JT+GgjTKhnlwnTgTvItUdR+NuI
	 PzVySloHaOTNBTbLeZFu11Wb1ia0z9J7/9HuvO8U7we9Nv+tQBdFRB8EOW7tdn20E+
	 6bj8vc+hRMMii4v+MQO6Vwe76iqA+Ec+blZ9vmqnoYvpH0h8kq8EIm0nJyIln8m1+W
	 EIwXuJXDAYKs90jdNY0ItHPrn/+pSrt+s2vhpmCqMLKK+awBMqwGSAIaHxzMgLnKDu
	 gr6Y6A3xtoyaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975A4C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172449695358.12393.11752401795330627839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3579ee2bb1c332c41c38dc8e74eaaab31d7185e661679cbcc6658c6d7d3451a7
Date: Sat, 24 Aug 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724496953
