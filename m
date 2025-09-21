Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB91E552
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758415194; cv=none; b=bWK6dnn+4CWjmJR09vSNKynlsiFlxN4cUk6x83KuBkmpiYi10SNbyekzbnHDfYBfp3A6ndWD36g/bEX34UDChSR20FmAX1BoYA8niwuJ2mCDNHk/6OFwq+DpGBRQ7RHefOO9uxHDOSJ/jcWsAqq4pUJLhzWS4MgMNTlMPC5rNws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758415194; c=relaxed/simple;
	bh=8G2SAFkvYhXV7GqwhJN6u1LWsCpziQr3nmnfR1f+aBI=;
	h=To:Subject:From:Message-Id:Date; b=XnDZNWYefNaxokhHB0ubgoo0Wa1QGSvoZH+2JjHeiKlyL5G8L9bLuIsQpq5mUYnCKQDi7cRzvJXFVx6Bi6sDSymsUmJlOZ1Vc56vRSYiNIRJUuv4OhR7EhOKMBBDUJgm4a79FlB7DHN582WEYzUirRkZpMJgCpOsT0eUnMkAEz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMzg9Rcn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMzg9Rcn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F11C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758415193;
	bh=8G2SAFkvYhXV7GqwhJN6u1LWsCpziQr3nmnfR1f+aBI=;
	h=To:Subject:From:Date:From;
	b=MMzg9RcncXxKYejcZWaOiR1pG/qInAlB4aPCxoSHYT8i6uL1taOEBIY5fkhbu0HsH
	 3ibQqi3y8DZ7cx610Nud8J5kwmMfiOeQylKO1TuMPC6JXO+LCa6inMA+RtQWb7CN4P
	 VrkkjR3ROx+uWwNcO4YluuxmqcMZpi3qmc7li/S7hZ/lqCGsTJdnBnkWLFmlMD8xRY
	 Ai/i3QZDXVc/ad/WPvtfcIipPlpbnsLGD6s9hLN7cmXrUJQXJ5p0YPH4RFsCzBqMn9
	 CfxFCHZS8vK6RAaZA8tR77KRXj4bsCCw7H0DzzuyGxSk2Umw+kpxsu3NL6GT1T3w/2
	 Q8Iytm6y4PgOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95043CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175841519357.13660.14042293636471535791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d50ba93b80a5fc961004f80c376632cc610b3029f9e62550a07ebaafccc6798
Date: Sun, 21 Sep 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758415193
