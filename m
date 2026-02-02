Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF983612D3
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770076434; cv=none; b=l8yLdeKGmGgLhxejieJPPbPe/sjpjNns/ti16M9Ouz16tTXCYhdQoiyp6BEA2+ILzS/QhwoJVfBjmdz7NLVV2ZaL8fTORic3o+cOZDL7QD/pFfA6haSJom5GBjSj4kiLblqEkyuzyWgY/UgofbOCTD9gFkNMG229tDK9uh91bos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770076434; c=relaxed/simple;
	bh=32h/B02bvbrfQDAvy4NqzByBrbyRNz3SbFX6CjFahWM=;
	h=To:Subject:From:Message-Id:Date; b=V+RWeh4WS0rqyykjaXnnhVRO/RnZvxpRphUJbnQMoAGQ6sl1cUydoa5/rk6n+gJaZQdrrh9FBYO/XlJfXI+Vk4FW23cXJfqRwQWIt4FimCn73/AQWcgL+25Q82vBdE1+YmGnFa7dcwk9j1J/UdoRznCqktKh6pDa5+frmnfpHuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OhQTRh5T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OhQTRh5T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA188C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770076433;
	bh=32h/B02bvbrfQDAvy4NqzByBrbyRNz3SbFX6CjFahWM=;
	h=To:Subject:From:Date:From;
	b=OhQTRh5Te9k7MBmhI0EVtLZ8E75fb0a76F13f85pWpIqABMYaFtGcZr/jCpMVPHL8
	 hqFjNUlLSt6MgIXTjOQvcU/bxplj326hOJzsD+2cXv/Wez5fgRj1b0YwikqMQ9O1cw
	 xu/UBi+fSBmvEP8S9E9zfarfiPbvhpdtpaZ5Q8JaR/lZmFii7agWJ/0XIDYhvVHf22
	 2ZXH1932Ho8vJtDCz0h1rt/8+agzoeqKujdCiMOt39gSFq2P4+1sJQLXQ2aAUnH9LL
	 BubEW6OvIOLorOEoOJSqmD1puZxpen0ftDpXBYwW4/qn6LKjZP9XltpNJNJENxOdGC
	 LzazfsEfSaLRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97108E7FDF8
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177007643360.7237.13770681270393566661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eab0b83c4e6da1bc5a656a38fee0793749c4435a91842aa6524f626f5d7ac60c
Date: Mon, 02 Feb 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770076433
