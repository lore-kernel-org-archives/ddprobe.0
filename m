Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E0D17C202
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 21:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719003743; cv=none; b=rrxqqiGv0BpLuaKfcvVkAZy3uo5VnlHzMfHKxpE5jyKEAVpL4+OuFkZEQGTvMdJznzEMdIugkYmEyAIPC40RFi7qbS1Dq1/BxoaXkZ6e7G9hOQNdr8Ykf6p/MXl7QMxu97qLXXxMZAJ7KyRBRFAIq4tgLyhSmsallXJHpLJsdAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719003743; c=relaxed/simple;
	bh=pwSHwZiph+jiBIdjqY5a76nFWNidEjOF2LeJLgBTF80=;
	h=To:Subject:From:Message-Id:Date; b=I66gV/0pp1deakv+HkJ1loNvZwlgjKKQASjlf6wF+zxCjJwmTgEXz/sR4AGK9ycNYyoXk6vfYmJLup4fO2X1OpZ2gPhwsI7qIPfV21XyzKV6uaOPVEWdCLtdxIGmcja4vseauh1IxElHzCOjN4A/fIswDCZrg53kr4e1T+YV3gI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hw8kFZk9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hw8kFZk9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8875C4AF0D
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 21:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719003742;
	bh=pwSHwZiph+jiBIdjqY5a76nFWNidEjOF2LeJLgBTF80=;
	h=To:Subject:From:Date:From;
	b=hw8kFZk9mkNdVhMc6S3IoHrptNEsPUtLGmqnMIlqgpvNdqAD1T0Ou2yicr308rguj
	 kB9Dk7xlmcOR1P8keGmcCL6zqgWtrdY68YQVK3av4LLarlvjes5Fo3mYs/0zoI6FVt
	 TeY0tTRj9VGFUVWJM+T1kONXw01zkBKvGaBOv4mL8zh93S7rW4amIc8saoJY5+GUtG
	 2zNpgwDv9ushZ4cA3lCNL7f5TdI3HI3YGO7s4s5i5LLYE0B3upu7SeI20XF5kXJjKS
	 rhvU2Ocqqxi1n90oRCnpgbexdGmvz7xYVtmVr7cm1nt4CwKaQIunKTpE3VWSHqdTDJ
	 bn+JBk1rTHfVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D099FC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 21:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171900374281.32154.11666086250710277018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5298f3bf28961a0bea3c67a812e6c43353e884c3301b20465815647a831a4f38
Date: Fri, 21 Jun 2024 21:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719003742
