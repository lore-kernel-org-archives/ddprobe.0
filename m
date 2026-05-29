Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D4F3ACA74
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 19:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780082554; cv=none; b=A+ketccv7mYMCAEqa13xs8Paq3NXlHUc5lRCg7gfw2vkAi2mYlgWvkVIOk+fqmuBXHFvVwJcvVxo0aKRlUEDgqz2B8CgiQ/Wneo72iaDLEANma3SzeUC9ybdqqMjui27b6lPNAZF7M+SoxBfWFt2Fqda18cxh8qKKJeB7mcIcXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780082554; c=relaxed/simple;
	bh=McXk6AQ7nkloyNBj1vuqKOHJYw9TjIzzxMZQzYDzmHE=;
	h=To:Subject:From:Message-Id:Date; b=nnzMn6BwPUnA93e6GcYhRNCRBeolM7kdo9HYqhgkXsL4RDWkT+5WqI3PgeZK9nlAPRGeg5P/DhBPDMTl4d2FlOl4EzGVjaLZrygfmpyFgAdcD20B4PYcMf8PgyBzek96M+agepuFzJmT6z6A/9CUhRLEkaGwQtG/y49tZ/wDy64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3f116U0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3f116U0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D786EC2BCC4
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 19:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780082553;
	bh=McXk6AQ7nkloyNBj1vuqKOHJYw9TjIzzxMZQzYDzmHE=;
	h=To:Subject:From:Date:From;
	b=u3f116U0X6Sw/i+8bXKoAzZiSXGnMlAX88mkEI+6cr0dASC5q2e+VZHOMQ/evVHt9
	 YAvLFHzuMYdI4AVgNu2iaSKQ39I+3tBu/WrgAAIbHMPjFJ1+uBSULE5sV8RG83MsQo
	 QB9HHpSMIYqFwWMhpfEr3ZDy7jFhBmGR5SWaJqBLvvq0bU8kzHLSSBeEKJ/zjLzKKn
	 3tOx/KhO2+gGVGdi9S29WvI1zGnez0vzjQfEvhmTzfehmuYqDHSQW7WqUTpq/vFIrQ
	 6cV9z8kzcTuAXCSc6h1+Nn1LH5dQpW8pld5MKgrDNRAIRNE3sHiDCRJk36pK+GgZlI
	 Q7Ym+5R+th8Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC6F2CD6E4A
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 19:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178008255370.13895.4210783744837171104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eabd8fa6b4209b3e1d1edde31acaf33d317c8e6e2353f3fcc267b860f67eceed
Date: Fri, 29 May 2026 19:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780082553
