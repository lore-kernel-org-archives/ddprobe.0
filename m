Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6A212264D9
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770415433; cv=none; b=LvbS8/lz48903S4qjWPfrpAGky29ITlbxXcpCm6HZ5NaBtTB1mxWPClPvxdZzYG5s9d4uWwX2aoFedjScvscOfvbZN+71/MqJUslcinmY9F1Ky8tYsXXlf+EJWz3Smx+BrWzfSFwT3atlAr3vsn2DECX5Gl/qU57Jg69EBSqFMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770415433; c=relaxed/simple;
	bh=9b5X5mC38kR0UDsT35VeVIOZL48nIA9HN/irN0UdZHE=;
	h=To:Subject:From:Message-Id:Date; b=PrACse0Ul7cUpHofaUjWKUudie936YUKYjhttx0L9YTPgJs+8JKWtYFU/lH+ihGbaa/CHYHIdtjD74LDDiYW8X6nmCjvQah4w9J9yw1SCKOq9cwH6n+wxK6MQMNWTWVh28Shp2elAkLL+r4q5XZK+vl46wounCaURVrxXtcMnxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUrAh/C5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUrAh/C5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8157C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770415433;
	bh=9b5X5mC38kR0UDsT35VeVIOZL48nIA9HN/irN0UdZHE=;
	h=To:Subject:From:Date:From;
	b=IUrAh/C5NMvMXr5tPlUGR+gsFG0FH+ZJ9DMvUH0lucHOwJTgw2uuxi/1GNohXkVTZ
	 9AsoBpSGhyR9lMlhYlKNvAd3ErlCikexZ7fqWdKfhxwbu17Ix90vKOtH/14EPDSci5
	 9xjG7Ayssfwj1VZ3RYy2XmOZ8m1DnYWWGfVJL4ooTAeNYIVtWI0VPVqSzDBqgL1n/B
	 0vywmedbEmkm7KK+0YH48vs8x8YLXpCKGutdVHSUy6O9GwHiFLOKvxRszKtHZ04qwq
	 uGSyY8mom1SEES7bfViLhYzB+K9LQKruYB2fiLqmkaRnz64Ljk47y/QyozN2xguc1s
	 p59QhTBov9bMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A67C6EE6B66
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177041543363.10508.10176532130706375798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 317d8873c0349b5132f871fa7d0655e363a5000b488582d6520175e730efe0b6
Date: Fri, 06 Feb 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770415433
