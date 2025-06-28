Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA2A1A8F6D
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751093394; cv=none; b=VA00XqW1ie7z+NXf0SqSUS2h3OskzJbo/xglqiQGJ455P+DR9uF8TX5JdLhE+GDsyrCIaETQNdKH6Ko/BSYkWG3HhBdBR5o4ogg1Xx/f+/Pqnfv9jDTr8fVR9ut3Hb7rCezCRkjGBv+Y2q2J4g7s+/5oeXZNsIqCk/0V+6h7e/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751093394; c=relaxed/simple;
	bh=NoaedS8xRkkhL0VQPwk4KsfkQ62b7qLdnnSE8rOH8Uw=;
	h=To:Subject:From:Message-Id:Date; b=ilq+OSWE5XmAFrGUWJHKZ9kRgGDM9Cyrt98LUJ4IrjbqlohRbzxe2W/vpv0xIcOuoSIHmBrH4OdPjeh0EMrBel2aHJDhiU410zlMkE1sjurwdQ1hnpikhfM+EcdB1zMdoWeXmILAjnrlXutd+jSAgcUMDjTm+Cx11JIuiqPOGlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vHtOIOIF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHtOIOIF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E4AC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751093393;
	bh=NoaedS8xRkkhL0VQPwk4KsfkQ62b7qLdnnSE8rOH8Uw=;
	h=To:Subject:From:Date:From;
	b=vHtOIOIF123i3DRIycSaQ9QHuAiYb7HJ8KeDMi9KQqGiTcDx7rk6fjCgIJMPH47P1
	 0DMHPf7Mq7xcSqo3U8tSSuyo8SoYtCJiOHp80GjHg70gq1lQeFEb8yDUEnkQO6kRp3
	 niBatyBsCr9lJzP3J66wOuo6qUWKfWOimOB7SFeos9LBlS+4zY/O9CpfROmVt3A+we
	 ZM52kG/st93EAXsZW0yR4S9+jYZv7lTYSmN0xJTWrpad59IsEmj9uIq8JMO3auREiZ
	 KHI5ogaNydZyB1oc66EH/Loc8bPREXGu4LkQoJr2yz8STYtiSpZAkirJnslKUhBxb0
	 DoO96yNOwZjeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96407C7EE32
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175109339359.18866.11167305657730271623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d37f451e3e3b6356fa0d0e90b221ac5b713d40a3a0595013a919bb074d153616
Date: Sat, 28 Jun 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751093393
