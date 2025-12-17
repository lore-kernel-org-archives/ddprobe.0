Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371213595D
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765942434; cv=none; b=DzwfyUveCUDv1voSllGo1m/FPic0EazTxQneeSr6flWVDhM502cboTh2ogcoX0w8AbD2bgDqJxFKYlxmCtQWM0c/9W+namReC7ckorIXk8JNZ50Cb6JGPUbrl0Fpsm7zpVt+ywlIRdfRF63IZsOu2IsWYX8TAjpe0lGSYo6t0ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765942434; c=relaxed/simple;
	bh=aYSg/jBO5y/BDpkGnRfAQxDLXTPbB0UfQg8c6giGpeE=;
	h=To:Subject:From:Message-Id:Date; b=J8RvAAC3CfRmspv8iD3VLwOUfOVuBvhydFgZ2zN/Q0U60JSoLawkaB0e/RhoDjDz63lgDF1ya1ilmROZzjqDNZ7EnZGlOZEsg6yJ1BLLQz0T0iWGNB/CbTvZkjO0FNwU67KmzHL7LPXggjOUWvrw0zBzME02YnB5HOcJFYXzrYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g5OjuJaH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g5OjuJaH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B62B5C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765942433;
	bh=aYSg/jBO5y/BDpkGnRfAQxDLXTPbB0UfQg8c6giGpeE=;
	h=To:Subject:From:Date:From;
	b=g5OjuJaHKfI5zYgIlzGGX0EYAshjAJ+/GdR3ScClWsjfPY0Wah2aPbyaW/4W/Ghq9
	 DgqcIqXDzmtX7qY3UkRiMa1aq9MlrO4L52gPepXMkSgGOsoGOuIjN2eX18RBDOABz5
	 ZaCMadlgwqDAS4oRgRcljSqglTUuofwms4ETCEXYsBCwl3TgE6JRqxf2wiHW4Of+sW
	 gqQdVRJN1l7mlIHVjMKSmDZ2YuMY+aEz6v58jMDoKXT7foUaWu3G55A3+Ockp/V5+5
	 f0+RSiFUgy8RQKWQBSQ1nDx+HJslbYTqM41OtfF2efjtiXz5Ig1i263K0aVDeF4QVD
	 caO93TJFYGXfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3F77D6406D
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176594243363.16291.1979064413132021344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f10bc83caa5dd3c48461a49d16687a38ce25ed433e036410c0700dc749e00e5e
Date: Wed, 17 Dec 2025 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765942433
