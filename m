Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B56182B4
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734672954; cv=none; b=EgDDk80Tg7lcyHILum7+yLMZ0nFdvpfLZwa9MXhGCnEL26xLYGUDvU4xXLiWscsnt/RcyFVlYcxUzec8g6n+vBxb9cXYNUUlgSyXKzb+vyCEidiADgC2EoeqoTzrlm4TLIHcqzFV19/TBGnDFFIXtSIf09YGSI1tUW2fuwWd1GE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734672954; c=relaxed/simple;
	bh=8u78wtRRxfWFmuyLZdrne4ZlvV+Q0mnemugSyJFAnA0=;
	h=To:Subject:From:Message-Id:Date; b=KEpCJe4aT+AGYG7HdAC22yfSBycJRn+vkbRmrlMvz3KH4PTOAgu9NSQMyKtPIOZTfhfQQmyGjQ/2GjoCtT1YGmLl71Hp34dxPBS6O8rX0wCeQS+jE2X6i1gXuREFNJL050DmFCOF8eIrKw31i9G4wYdG8iCfDIXC9H+ihMJmb20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouJH5Zm+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouJH5Zm+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6ED6C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734672953;
	bh=8u78wtRRxfWFmuyLZdrne4ZlvV+Q0mnemugSyJFAnA0=;
	h=To:Subject:From:Date:From;
	b=ouJH5Zm+ErPXq+x2Mm+naeQpBlgjRudXlMFPDLS+MxebJJw3BqdALe0u3cjfBn1Cf
	 cmiY5//XGBO8Hg4chUegch6oXM1WrzwCDLPHATI2mUXot7WLQ4/7wF0sSO5JkHsX1l
	 pgOd6VAtpe8fOP48Nv6jkd27VubN6vm70MqUYrYB9+JbrETy6o+Cfvosanb/XYUb7B
	 zXOkCu6EJDrBVhJ2z4BfQxhzF9IIJoWIEuMtiCGqWrfSHQ63A39cYgWthKcF4BqSZO
	 5S9yIoSSpwnjqFjLEfYR4no1do+cIEAqul72NkKfi74SCdIqoigtlkqbdDcj9gy7UL
	 cSdJKtH2x8M9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9466CE77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173467295359.32317.3415416693401257698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f64db417a499bd38c02fb4069105c787a6868d9a4137dc97dd69b5010a30051
Date: Fri, 20 Dec 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734672953
