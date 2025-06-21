Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D89217A31E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750509594; cv=none; b=p8wBYIEUieiqn7yE8xQwRB1R1ehI4C39J4cFJ5JBEFhtDN+4y75c846sjMvjqXL4E5EodlpyJFB/zg754+nPO+jHP8HSytnW4fOrvaBkCS8VJYnIsTO1Jg0bJ1LZZW820QPBl8jEupjV+pZ2G+H3GevpGVtv/RGyPZeSE6O0H8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750509594; c=relaxed/simple;
	bh=Scr3CesJHPguf8Eno4M+V/raJnWJr9UnSFUozjgOhRE=;
	h=To:Subject:From:Message-Id:Date; b=EuHzm3AwSyDVSbjipaP0cnuIxVmGrad4DyyzOq/Lgnpv3qnkXxp9LRXu+jrXM0+N8w/Pe19Q7sORwPSn7v7M+8pn8iRt7xQIx2de1hYQ0CTBdF71GXpFGoC4cUGwH3DyaoBjM70L0pKQFWnhMemzwdvXVUhkl5wZ2mbudB7x4Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gw62aVmX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gw62aVmX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F6EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750509593;
	bh=Scr3CesJHPguf8Eno4M+V/raJnWJr9UnSFUozjgOhRE=;
	h=To:Subject:From:Date:From;
	b=gw62aVmX1ZmUvpTBq/OIcbWJaRPOCDN3xlHa9iy1HjgYuntb3OipX5K6NewussDNA
	 d0ccX8zw3yU4ItrQoHMFGwgTWP2U1P0+O4nCXPL07bGpRE73LTuc8HbPeFf5BoaS1m
	 iHWtZb9T71pmtdzoUhxZpsMJhS1dO6XuQX5g1IKDnPKwX17g4liPu8l5g7InB0dkTn
	 tMQ46rqnvdto1D2FZN4HoHvY0U9Ua20nnrDfCy8WlmpcWQZmXMQ3eGFl+EAmCMWw+E
	 oWwmrTQ+mktX5CxXEC/jtGiq8WkGxa8UXpCqzvyMgZeKbAr+2BuOAy56T+1yzChjwp
	 8wnRUI+SJ7rGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CDEC7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175050959357.32142.16131728713386910025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7b166bc6645d30b601e9c4977b913480bc56638f16683861cd58ec2f7ccf02c
Date: Sat, 21 Jun 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750509593
