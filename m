Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB048F6F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 00:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719362603; cv=none; b=P99QQUFQDYJEhERdy2h5ojB/EboX9psFHbN6G1tvonK6W67cZ23HJmhFXU6K5XNOFPhyKqhnBPJJjPFTtxZeS0XeNLr9GUgLQs9qSpoVMIwE07gAZLYhL8gMwD1rSb3X8+K+3hNvSmM2jdgYIP+kseAGiKZjHieGrSXmWCliFmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719362603; c=relaxed/simple;
	bh=gmmGXhyliWnrcKlP1ak1ERaM5zvRcJCoyaGjKEkzTnI=;
	h=To:Subject:From:Message-Id:Date; b=HFc+WSeCGm98F8e/P3mRIlJIIQVmUPE9RcQvVBELgv3PPH1jcfngA5vwJbwv2LZouQQn7VDPWKQ9ZrH+XrHcf0uNx1g7Unm9qumYO0fJ8Ze13vu5p+xS5t6zTGO2mK87zRlHpaDlVO8aYrQ+NA1EvxlNewFbKZScAdxYN3nTsjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fL7/ZBWU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fL7/ZBWU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC2ABC32781
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 00:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719362602;
	bh=gmmGXhyliWnrcKlP1ak1ERaM5zvRcJCoyaGjKEkzTnI=;
	h=To:Subject:From:Date:From;
	b=fL7/ZBWUwzo0KZxeWRn7WPmelbG3G46ZY2UPuBARdKCs+Citeg2hOExhoCqdrXcvB
	 RYXcrR/Wv+1UjCh9yQWePM69FmKYf4g/KYTwxfwfpVicyaqieo/Kj8iclLsgP0Qmi7
	 wf8UWQuycYZMeCshfQPY1HLjqF5NE6TVA4U1iLvzv6amnV2NXmiEHlp82PHD9FJuUy
	 F0mehxjYICjm4W1IEQdLP2ebHxBe2aJK+LzuyF4/OwyA2VVg9CHgVOZyM6Ps37Sbzt
	 YxLBt+gkK84l6BmBVer9Iv8qAvU4SVszXN0nEzkPoLdB1zN/6kJd65BJmOdtOqEYfv
	 zhl7tRgmDfbzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCEDDC30653
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 00:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171936260276.2380.15021870346273391926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca94048dae915306a74448b033309869910f740768d6e63e48271b6c25f103fc
Date: Wed, 26 Jun 2024 00:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719362602
