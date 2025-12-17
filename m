Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105B433A716
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765970034; cv=none; b=J4oPrZwO/w2Cn37RiY9ADphLa+oA0/n58TFu91LWeO5uvAMZbos9OQ4yE7AFUDfpUXJGE4jHPjuY8D7K2r6BZjLqS2wJiPw6hjduuVyiOl0D02+mqIgVHXtDLr1MsZe8wUyhXfPvu0hIxB+u86bgMipWhY5UgGOyrLaUZheVy9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765970034; c=relaxed/simple;
	bh=xFSUhX9ulMEHeFV/TnesaP9JZiyPVFCqlQnqv6aSO2E=;
	h=To:Subject:From:Message-Id:Date; b=kmW2GIbjjbG9uJcSL57Hevy0Mnalvg76XM1O9p3Ax0aH4ARy1mTFSjXKJiVnAo4iaqllwYYX2ZPKq6y2P2CeJr36eHt+PlGkcSGFmvaPwjczr4c91WzBVhnsKEEfJwxgL5jOsn+liKWuvKgRdrszDSNjIZvQMcCiI6IA8Jtr9Ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGjNs7Rf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGjNs7Rf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A576EC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765970033;
	bh=xFSUhX9ulMEHeFV/TnesaP9JZiyPVFCqlQnqv6aSO2E=;
	h=To:Subject:From:Date:From;
	b=XGjNs7RfDE+bSVDfDvis2X4MQjetstsiWAbYWtkfjEyS2J0JsY/4HaFjxD60hcV43
	 lKD/On2MGQN6B0WJ4J2jYPpt19vF3PU4VphPHAG0VmhoQTc+K3+UdILsQXoscJjVax
	 4kXEcb0X0hGLeU8RfR28beS/qmvCmLofMBa8/A9cWgvUtP8V9c0DiJxzFrnJTTJBN2
	 bHHnHt3GaxL+7XLa29Xv+YWhRMqpeD5wlLgG85MVlvZBsac7/lojsVD+0IfOt/+mV9
	 WUBgHZle8F2aLbjH8wT25XRq7w43bUtkIDg2r1UBGrL1LW8mzOJ3jwVv7h5YUDGbyo
	 myKrqGt8S+Hxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91214D6554F
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176597003358.12815.16323572048546881585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 034ff988705634637a11d442b8466875531e1f6ee7865694f71f6e25cbc0d6ff
Date: Wed, 17 Dec 2025 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765970033
