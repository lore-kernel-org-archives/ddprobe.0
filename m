Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A422561CC
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744214394; cv=none; b=u/DjGTuInsLTLLn+wwic6pJ9rv9R656zI0wEdHhbPYEWKcOnkouE3SsFQvY79f2MDVDJ+0A2rLXnEmhBNwUp/YAjbq5POzsKLSd3z8/b9rgWdZwyo2s80/OZdwRpAgoX908n8IJYQOcp343PWS1zLUfiBc9t7zCuP5cAhF6Qi38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744214394; c=relaxed/simple;
	bh=w0p94e2X9uld0nIjNC+SjxMieQRrm2YpflZPR1CP7v0=;
	h=To:Subject:From:Message-Id:Date; b=KOpyh4fmMl5Nzq9nqKJBWaDWEMlWwK3qP0HB3fA/JZuHHKtnUvud8MqfJizGNsmZqDjmzm2kuzFO1REYXv3Pde5vrqWD0dhIdaE672oFK2p090nbWQMNhCXlWoMA5jYtpo2dxe8K7XAYKbPcbRpzN7d2nezjgwOLj8X2ItluFn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TR1QWgQF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TR1QWgQF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5483C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744214393;
	bh=w0p94e2X9uld0nIjNC+SjxMieQRrm2YpflZPR1CP7v0=;
	h=To:Subject:From:Date:From;
	b=TR1QWgQF2hynrcop8TVGO5w64NMWULcD1NkbkitSMwkI9CdAIFRD2AuQNaj99tOtE
	 tcDmQvrBQUeFqZSGObEUnrxoJrW5/CV9OBJHUE/pPCglzAfRSEl1hnwhC6h9eiTlH0
	 aX1+oLBhPJ9zOTNcK2iADojvzoXy8kKfMe1cc/6FXMwJzslV9Mf+srk0QjobMyCBo/
	 13NYGUBp30bemQw62sHuBwshjRE7sEuIR2xW2wWAi0xHBCdIBefK3nOncofeRASMCo
	 9br+Pox2odFgTuFMM8vKNrdH97zpDT86ghwu7Z9re7G2xjfsGXqfQti+wMU5vTKfPM
	 ZlW8wlP9Vt4gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9924FC36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174421439361.3867.17254866174027706653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0e8acb1ded74c27b1212f59f4bd77dd8eced0ce860a540d6b6154e4a13e9be0
Date: Wed, 09 Apr 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744214393
