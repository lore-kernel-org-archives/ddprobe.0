Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3339484FAD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742857794; cv=none; b=K359j3k6kIbixt5JSpCGdlFjWvCMWGJcFtAdv8+uiY3rU7iSVNELIh+XClwGlQX+GKcPmZq4LfufN6Ad1J7rWHUXILuCUhl/ucjoRgpQp9LdwXTFGpoxUWja7LH5Nn+jUHhGWJSZjVPhBUBeIWzxfKW4BT1jX/AyvZqJ1qVQnKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742857794; c=relaxed/simple;
	bh=UlPf0NvsOUB2PRe3hRa7MoLTVfCsA6lDOTxigRkKPR4=;
	h=To:Subject:From:Message-Id:Date; b=iIfn645ZAXXiS5MynFVt+FCbRpogwr2Jl8RAIyHpJmjOkhFLCN7RFG2D/8VpnR0ErXGdRPuiAwY8/nv1yAd1jHkdPO+q9T/7f/eaBTCuOLTTDmpSfu/ptHH5UT2E7tOpBet/04vl+nt4nDgB/7g1RYkafwOk9OEe63l/jME+Amw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HhVTGMNl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HhVTGMNl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC801C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742857793;
	bh=UlPf0NvsOUB2PRe3hRa7MoLTVfCsA6lDOTxigRkKPR4=;
	h=To:Subject:From:Date:From;
	b=HhVTGMNljQ2H/cPf4hWewl1uppexa1e971FPuBuuIiALoJHtZWZ6MreBqBUEtervq
	 MNR6MfmsHN3kQc/PMpBaq4LzDI63nPbC7diTmUdI2LRkU3Qd5BMR0UOdtiuemsq+BW
	 EkfSPF+3rNJ4GShurESDOBj42VS7Wy8G27H3k3tEcZy33ulYuwx1zKdZjAl0JXz+m+
	 e6m57eFXyhP7ZyZ/rxO/GBZTJjAPYEK3VLM+C6WOoM6nFSKW7D3YiF1b2HXpaTaP/P
	 L6/RyL03HunomOPuTanf5bqKlfE15mI4y+bzSkIkVaVi2fBMAvKNnL8e0nXp69wmS1
	 oQJwK2gGpM33g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EF8C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174285779360.7202.10682575404160086577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c18121ee31f95f05dd1e460d5e4ac65910d9d31b1bb6c89d82bbf4d59ff714d
Date: Mon, 24 Mar 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742857793
