Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6562797AC
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771239894; cv=none; b=pVwjTnHo2C9+dV7AYWZaEOc35ZBHcgi1LZ/bEgFy3deaEM+MPdkSgYUP/fIx5MXTj76If7b7AfSTtcPFrcGlMyLcIlyYGPIRZc2VgW/Il3CFTSPMCyfby8pxgIIpzqrsMYJPozZozCeVQQk/XPgMTs3jylrD+gWmZNT0Ef0bTc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771239894; c=relaxed/simple;
	bh=p7PhNTSqwnVsC4HVWKN4dbosLfchbNbFrM+o3m7eKMk=;
	h=To:Subject:From:Message-Id:Date; b=lP3KyQaGQ8PKvpAgaIKeZTc/NGc97DVtEAyeRqyPG03f3i6XnX0+RZXUGaT5GRigaa8cLnqUJ7w4eCyWcvbFC5TBhH6sZb0FGFZrOZNvvOuLVjvy4vdl6V3Aj4biPLePnCPEBlRQaRStQbx/a7skrCStSf0wiUSJ+N224hdlvLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sYO8lC+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sYO8lC+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B35EFC19422
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771239893;
	bh=p7PhNTSqwnVsC4HVWKN4dbosLfchbNbFrM+o3m7eKMk=;
	h=To:Subject:From:Date:From;
	b=sYO8lC+4wIt0Rhw4aBD4OQACIJi4K13COgDar83q5t9n1KzaGwEH7HrGqz5wnQHY7
	 /Q5xSijr+rzwLcKKp/GP/6GNHWZ7u6ynrPRvNKIifO5SuQJQirjeCl3XnC6ksSJ6n3
	 QpYiEkzzE/8mOdxZGYnPRXrB8/BfbbEXLmgvEybNwlOtOtbfGJeovyuQZMav+2QkC1
	 hybw5ZtBJ9zOXrLE7utSPH7KOljhseQis4MYZn50zBbletVwIXbn3AopFjc1mN9sa0
	 zLZ7eSz2btZRxAz+HFOcK4DjPXn+epLQ090uuBIXJ4nfOp7PT9iBG6FrLmRxeVkL5c
	 gd89tkkcjDEEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B919E7BD8A
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177123989362.20204.16052009675997404973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b878de11e27bb0e12601644d9adf8a2757fec8efdbcba749b6e4602182773c08
Date: Mon, 16 Feb 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771239893
