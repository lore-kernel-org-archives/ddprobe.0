Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7358BEA
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729446354; cv=none; b=JCKOWqDiBYb6vuO7VeeuBiDDEEI/yxvR9Pmi+RouEuXRcnjrX87TYNog00FwPLZglJ/OTDRcNZ5fjQfukBcuka81Httxn0AOQ9tb71TrfcY8kgunPIFDchUDPxC7e/m9wuUCDlbPlZau34d3pC2BQkxRlaS+knTm+/vnz25j8cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729446354; c=relaxed/simple;
	bh=vfXu+roz01iuGeAHknYq6oHOsjbAC3cr6LKSUxLKH6w=;
	h=To:Subject:From:Message-Id:Date; b=isx8tc2vtpHlytvswR3fWE13trPVFTBSxVsd5OsCiOCUXo7Hei3QK14FIGGg0LeNHknTCtIyBnfGoYOljGwfRVSYRwmXS3lOS1eN2SGIum/7672+V/cL+EmXtw09fShso7Pl+VvGHNxxpnUCCAiXJ15xM9pq3Fob/93nvWAFFrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQbqGWX/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQbqGWX/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FE6C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729446353;
	bh=vfXu+roz01iuGeAHknYq6oHOsjbAC3cr6LKSUxLKH6w=;
	h=To:Subject:From:Date:From;
	b=FQbqGWX/Lrz4J0tcIRRUvm1IUNYfBr/5tl8E6A94fezDOd+ellGJk9IpIEjFYca8B
	 oOLcaAtzqZG2YuyGp6Swm4lhzqjP/N4lEHQCB5bzmpRRkYgV1G0g/mFsbvdx89LSYS
	 INEpyflXIHQcyy5QVFhjOEpTrUtn86zU2yuQG1DZaReR5hEEU6us8DJlOvy3ThUdpn
	 vuhwLG3dF64FvkzYQfP0F+i9G6f/dsWTSwNRqEZvmbgCcsOIzRMiBd5jKbNRzJuqbJ
	 ExnwEqzyoM+kn682sFqs3Ahw8MordEPKyVeWnCCt4MJFe6LgMQt+nojg3D11t+9S9M
	 UjsYuTBZLIQbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F435D3C92D
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172944635357.4410.12104494062546964322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ac9c98888351e98573e4ce6190ab417d9baa04c89b9e7678efb9197008714fb
Date: Sun, 20 Oct 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729446353
