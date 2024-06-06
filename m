Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ACE0FC0A
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 20:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717706843; cv=none; b=UOQL4309nqM5nixq3HSKJl8PwYtQWUszC0+bKaa3c6+A/TNNrdl5/Rv/L3vwCS81p/YbQr2uDR1LWm1HhnTRNOw2DJ9TE9sqdWQPPqD89DjEOcNLWbuy37cAnelVj6mDRjpKmoMbiBp3PQdwsYmLIGOXSFDLtym1y8ql4V+Iawk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717706843; c=relaxed/simple;
	bh=OmTr//3jgprOMCcuNjFPpJ76GGRAKjxbnQ+AQGxkL3A=;
	h=To:Subject:From:Message-Id:Date; b=sTH+7nTWfZ6iHcm4WPuuG2XtUWe5Ar+iOXJ+V/btGAWzz8CcelsY8wYWpydbJzi9osiazJCb0XZjzLnVUO1m0jKI0yyNUq+yPGYCQQxPM7NzV4gWyOxOGeosyVP+dwT5KmbcoZXzNVfb52cJPy9OhvVgDCfbJ/Z3sUYu7U4/5nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xo4I+mZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xo4I+mZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E23B8C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 20:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717706842;
	bh=OmTr//3jgprOMCcuNjFPpJ76GGRAKjxbnQ+AQGxkL3A=;
	h=To:Subject:From:Date:From;
	b=Xo4I+mZDcX0z8i86QZ7Bd4xFDaPEUOAsPYN/+haYW/KTyMWABewRMUH9E7wry0NAZ
	 C45M8I6QwTaIcqOjncQpli4bmGee79IqOLE/4ZIy2lwhE5IGOmE3XhbMztBATTUF4Z
	 6q2TMC0v7bXo8lauCKa9s+WRFKvmkMFmdzKXsRGsXw2uzb5dW6Yfb51aiug49d0SVJ
	 /ymxZcM4itj7MagnV6h7Y/VSAk38Rcn1utmumfNp/cUaxLlW4jZJgQI9fbSS9Pnizo
	 fd7gh1FisCqixudobiKeC/sUG9MuzR4sH24lub4R2oqW33luZ8SZdAfixghbEneQF8
	 UihOjucynYsLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8527C27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 20:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171770684277.30520.17964551120533708106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfd98f77c8fa2723f290f338b767b7d6b6f534705c054e856a8efb84b0980b39
Date: Thu, 06 Jun 2024 20:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717706842
