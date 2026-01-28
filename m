Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CAF225390
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769611434; cv=none; b=MQCH3P3a+RkMul241ME4YOdrkDg24kG3VLq0rGSiOQNHbGDXpm1uYsBrpvO5sjbZmWBPyOQF56MRaAqK2ae5OSn2erhm6i1qxm956QRVGT0TOCF2NyKqrr+eX0rX3YZPeXhxCZU2VcvOn9onCzFMn0/WqPFHfGaiL4eEIKnaNFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769611434; c=relaxed/simple;
	bh=B1R/ubO2CEfjhm4MUVwr3ZW/6UCPz5LVr+Ua92DV0tQ=;
	h=To:Subject:From:Message-Id:Date; b=tBRdoUF/KxRx7OyH7jL8cMmDh7v86jmH8jxkXg6s3U6KjFhDnNwv9VM//xnHM0lZK6nTDbsrvvWCM3qVwnkrP0AgEVqIuTkOh2KXzsrbW7o56PvUoD7SUxLSco7BRGONxDpZHRw9GMrF5YmWgVtzR/5FH2//CVHiqFWg0BQzAVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MAWudneB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MAWudneB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E949C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769611433;
	bh=B1R/ubO2CEfjhm4MUVwr3ZW/6UCPz5LVr+Ua92DV0tQ=;
	h=To:Subject:From:Date:From;
	b=MAWudneBay2U/Z2TdXsVUfRIPextpduKK3y2ZVZWHm+Opjz1Z2MiLpoZY+7sxmYx2
	 8iAg1kZxDe1BrAbw66JBhSOZHIaCylQrq1wzKeigY9BzIxoraf4z+cilFdSihhvyjm
	 vSzdZw65joudCqwZsRyS5dzH/DCBK3PCqgOVXXL2nBjmggAUiUnQnkgX25+brlqGik
	 aX7f5dopsJJd5y+divnF/2uW4y/tgeJ6Ego+9MHridNE5hkv45VV1E5FJFn9u9w5TQ
	 J28smIHSIm6LloVFtzu8/6ikT9B2Rt1I9XKiJuh0cwjHj4W5UAcD/pO2jgLUzYbX3o
	 7kl+hVKa9zn+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903B8D3F071
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176961143358.1638.17482126994950911333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b77d5eb9767ce9f14eaf7ef993df195f66a74a240f916f6b038757339aaee07
Date: Wed, 28 Jan 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769611433
