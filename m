Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F5D2D4B4E
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756875594; cv=none; b=ozDCH1hl420PwbuVxmsCQzh+jpsqs4cEqfadJY68If0E6+yj1P9ykjazS7ZbKqUw9EK58ha/Z5DnNf9gK5xyuq7e6z4XWuGfH8JAp50ED6S8C5SuI98g2eqIrEvYazXPEcDWe957V3GUtMAbdxvBV8tOyMTXdk8fqYBg+df2m5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756875594; c=relaxed/simple;
	bh=0OQNP2zMYx9AM5KAYnUSBN2AEE37lg8s8dYUa/bFnLE=;
	h=To:Subject:From:Message-Id:Date; b=nsVZZiVvNH3weIIW0efLWfA1rxzif+0llKnvovvwCSOXeLN8vJLFmw3PGdD8NEvVdhrIVomS2oZsj35jpesc+30rrXinJYKlLaAp0Vtmrl0KPcYBm4PsKIUg0UinWtOBvOZJzZnjoRkxlQLG/e091dxyTrzzZcw/JULDjLz1RDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBV8jhXb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBV8jhXb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A865BC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756875593;
	bh=0OQNP2zMYx9AM5KAYnUSBN2AEE37lg8s8dYUa/bFnLE=;
	h=To:Subject:From:Date:From;
	b=EBV8jhXbWAR5m+Nm3MOXDQqVw9SMevDj+hGSMPkGXj4jHg9HS/qEX5hr1U4NLF1SF
	 E7w2m6PLGwGl9e2/iQcxTjKjCBBe1cVDiptAIlfUbLuPhiBhO1fxTWVwhNW6cPhJk3
	 aoNC6TtVbNuBTtdVFTVluD4zHj6nfv9UyyoHGiyF8R74wVjnwdCdUmXd2pS2flSY7f
	 4eb9FNCryuR/dLE7Jzp+9QRJXIlSjtct3noMvUIlxvwgsJmqxEYXQ+U5yY0OMj4Xtf
	 IRq0TmF9UuvUVCLSUMR1hCaXwPeGiXf5a6tX9KWDltKAjFphdRHEQKrMPtp7s25lyM
	 lKc2bDvLHcXcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933A4CA0FF2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175687559358.20575.15514495614207253861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b400307dcb1eb40c1efdd404b9b76a32d5bc500d6e55ffe5cc8e5409fc657d06
Date: Wed, 03 Sep 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756875593
