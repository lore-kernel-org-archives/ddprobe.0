Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C7C224AF7
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 18:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780511674; cv=none; b=W96Kl9fAW6eFoMFi1xbK360GNM6OAz73IOQACcDb57Hotb0Xko460kLF3L0qwFJ86l3n6tOSEVfXgrlSwaAlaEjutAHdGSuzkKtyTEmgKsfnRNP1j0pizrOA0PWhK2Q1sE+xC52N30bxHGXogEuvC4xZEA/WZgRYxaf6xRthz58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780511674; c=relaxed/simple;
	bh=dWhgXYfvs5YmGz2HfSzzHN/VevgAn5ZzqUGaC6M3AME=;
	h=To:Subject:From:Message-Id:Date; b=Inth1vVZs4n6QAN3fzyVTRt+IuyvJp5zeTyI+vmJ1FGuXJBYGavZGH06A77tlE4nLmgepH4v37RBlPSgdglOX4wYsVw0eGDhTAduo4+1sGjyF1xl1Bw/KSpHbCwEAoCOGTB/mXhlsF2T3AN8utuIvhwla3fjSFQMRQUaGiNV7b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uyeD6tKE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uyeD6tKE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7ECAC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 18:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780511673;
	bh=dWhgXYfvs5YmGz2HfSzzHN/VevgAn5ZzqUGaC6M3AME=;
	h=To:Subject:From:Date:From;
	b=uyeD6tKE9mJxqptlyRO/rfjhBLUOuA9oeU7/Zoxp7T5U7JZa9/lr6Nei7JF/oSdOE
	 EOlvr8icOe7GSh0wFlcMxlzOFwfCcn1J+d+3dwh6R+XuERTASfMpjf3jl6YoHJ2IrC
	 vzWe4fpKzgaGowxNV/NJwD3qA1W5bqSoZawge8W7VfSYHUcP6A2sPpapSUAvt8AYmY
	 kG/1GUMh1V57IXI2f8u4kN5SO6iHq3KQzPMMrbc3I4glEq8r8FMh5jNY37TQfeaVyD
	 Yl6g0xVcKE7Ry2xVKR1GRl5T61tiOnrWTTacFHGZF9VHkkA7TNhh8Cr3NMaWLGBIe/
	 lIn8wWveoMN8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD990CD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 18:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178051167369.28967.3117511827113696775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30b594c6ac54c0f6fce549d0250c434dcc2c96183f3ee2ca68057c173d498313
Date: Wed, 03 Jun 2026 18:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780511673
