Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD52156C69
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748157594; cv=none; b=mg5xgfvg95hIGnTDPgek1shRausv1Ima7XNHj9pSJba8qEtLFGJY5I9CmLY7zLPLOfplguT/sfcf5LOYDdyQ8wUTktK4KZ8vTOyUxexlF5IQ4vIakFcGnTO3tQ8if03H2OdQhwRXbIWwhanPaPjCdMs1VfBlNX+D/OnMGm/ewTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748157594; c=relaxed/simple;
	bh=UN5DsYxQQiKFF8Ouaw0mpl6lNIgnpYy0a/pAStcozUE=;
	h=To:Subject:From:Message-Id:Date; b=cFxoqj2q6yiBxQ5OOK5dGEf7bNQQZkHBtiD0jxAbqlu1hkuqJN4sfVmg3ixULZcZaEjwgl1apPDHII1jT3xuTBJQTLHBL5LNNczZoyjdKA69dqq6+DOvxVnu+iFE3RhoYS6aV8T7tkeuZ0cQLAm6w5mlh1DM08xk5qmJSP+GtLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gi6PReXZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gi6PReXZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2789C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748157593;
	bh=UN5DsYxQQiKFF8Ouaw0mpl6lNIgnpYy0a/pAStcozUE=;
	h=To:Subject:From:Date:From;
	b=Gi6PReXZmX428tet2pOXEEhGsZfaXhJpPaWVotRpwEg06AXwcl1fKIu+EkWN2rVzE
	 YxEm1X48gFx5RGIdE/6nYzgFSh0YXse2DSblXkUjQzPERmDxGKwgmPajgWCgX6QGEB
	 jFBa9Ff6H1/q/Eepu2L9+sqzpmOT9HwGstbbGsG0Z8NdY5nBNspqvZT5H+L5lk2wiT
	 R5UxOUulJ5Q9Cb7T9tv5yS4VnDa3uFlQbdNxPbUcDkRjwm+EE0U4WOMCI/ik7RhBRb
	 RKd31wB3mX136IQ9N38Jjltxjt/H30F7cLrqH0oyhQb9OdAiaPA2SzKVnh/Gw3KK3T
	 UbxiWuvPsyvKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE8AC54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174815759357.6933.8193703817820411151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a3271f3b865cc90b745867d42f9cfea0c8b63cb8118d5e689a99366926e75e3
Date: Sun, 25 May 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748157593
