Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275C4257D
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750013394; cv=none; b=A9UKnJ94sPn/hbT5H2jnMA2lSaQuFxfVWDsTfQLYNfNs8/WayXKGy4QvX37KAsqSCv8TL0tmjqrqtGUc6uBAaOhqPVYEZzCcMGH0gfSksmQwNvfz0zcGqg++66fn7EezBKJbV1iNoUqlgJGSNE183QAoU5wW/SNBUvLnuNdNQZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750013394; c=relaxed/simple;
	bh=aqEnui3g8GTiKN4x9OLUkw1JtSeI/uX/CbHa2gO5rPs=;
	h=To:Subject:From:Message-Id:Date; b=sj2JBBuN+HfoJavpHQP2lkGmz3COU/LAUTfDCf/yCbJHVTwTtHm32ssmXRaqOIqYWldIYuJvvH+zRhZ+hD18G6BjsUN8vx+9N/JIoziJUOD+ZTZp7dgLxVRLQd5g3/hnwtrSc4+Q31cMnjTsRVlZ2LAc15lsbQGEwm6EzHr9EpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ICCKvEC6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ICCKvEC6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83F3C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750013393;
	bh=aqEnui3g8GTiKN4x9OLUkw1JtSeI/uX/CbHa2gO5rPs=;
	h=To:Subject:From:Date:From;
	b=ICCKvEC6wLGL99qK9x8LA8fglxKv+qUuciJqXS8uVCJcbnXbZaooKrr0BrmBf54IC
	 Ip/o/KiR8ojGcJz97PJ3VGMMROTWg4aXIdoUODVKr9KLikpCCexSFN4kJ+zaDmk9k8
	 yTxrzAzDb0BGjCuZ7CkBWXyVRffzBTMIbA7bRlGdaQwXXGIVgeDuPum1DVWnHszfyy
	 nSNREWkf0QxodXcm8RYbcB5PvLttVyURWsfPdjw6sI3spuyg5hyUIePWwkrIGnGU9V
	 /5TjwPJ/41fbMOo/b/86u2934bcc58T4UhP2/GmxE0F48gmhptk6FYp33Stgl3MQQk
	 JoEJSyRdfmS6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F265C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175001339357.10247.16366632514096188652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1f226cfcd77ac56dbf7ecee464c1c3d66299ebec5ea6f7bab095463bea838b1
Date: Sun, 15 Jun 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750013393
