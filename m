Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D2E620125F
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790294434; cv=none; b=cMlaLMrbiQWlYKO9U4MPt38N+5yuFWEtR9NIcd05MASiFGDTzBm6nei7gnfhUtvEHRSBY1wJXbr6HmSjXIVO0kUJcWHdtUCMFhRFNcGnUXTztQWW/oXQuRyU1m6oSc/r4QyLszYplnZgoyS/lEPNsSLIrTHSHi4O4c+KRXtoF7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790294434; c=relaxed/simple;
	bh=R4PSyVQmlH07gAtLjugfYXgCLhmM61OmzgLoL70OBRs=;
	h=To:Subject:From:Message-Id:Date; b=SKNBX1yjHZY2sCvHfQJmlZrxjsv+nX6Axk6HXnfmmGLwuuaHegdCNCBwXfnwBWOYnvtbp6EqGTNrzRZyg6ruD05ueEteMcm7FuIE9BjHjsbcfhZtrYKXfx9jnj7D8RPsGISnWf9fS6Y2rAK1D9LJH1LxvXp0y+bVK5sZ96zWqLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ph9CugkW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ph9CugkW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F37F7C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790294434;
	bh=R4PSyVQmlH07gAtLjugfYXgCLhmM61OmzgLoL70OBRs=;
	h=To:Subject:From:Date:From;
	b=Ph9CugkWE7G36xHWA/IhfkqFXce3Qpn7+b5W3LPf/iuV1d6f2POpSKvjmIAOgvg7Q
	 9W/6x306VSUVy4AAWkgK2rZWA4KUD4sJxQVF5PetqsqS1zfPCp0LswXZmX0cNHD+5O
	 wWXcIWQRNuiMnY6n3hK+VJdqWAB7TQibQnqJ59y6T58tIQjXLhTRX3lXuEJI5OC9nR
	 kQ/NZsvl8YMcEOaEIxCY8JwZ099XG9Jnhm8BHa+yDPQ7hlgAWr7davuS4nTdw2gI+G
	 6pdzL54VuGpmRDdIQaQBRO/ppGQyEEleksjTIyikIVnVxiNFmLT8njFccYiEngCeWL
	 XkaM8JJLejtfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6293C98318
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179029443375.3608.873761973342893125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4b52682c9b7d855a04418c9ac06cfb587c626c06a92aca9487339c870174eb6
Date: Fri, 25 Sep 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790294433
