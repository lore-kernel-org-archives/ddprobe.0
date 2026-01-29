Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF03E7260A
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769700234; cv=none; b=jidwdigv/UpLoPrao9HQ/BfVMVK7qYZ3H5GARdk8MWc48rvOYBcL84ktUv25VNfCz9I3XITZ+OZq9xnRgaIaFKtY8dRFZeAqAuk5n2K6dJZZddwidGMuRSH+/H7/aHMpT9A4lMpu7X296GTscbBEY6QNJYWKEVUHYRVPx/rjmrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769700234; c=relaxed/simple;
	bh=1/ooBaNzIzEJfASeX/dXCrwcf5FevHXRzB3C2iVwb9E=;
	h=To:Subject:From:Message-Id:Date; b=pxNZSHGU3HoDeOLSCzSsk8LKv5g8ixP9mpQzhL6xfQqPyzSFQk3rIZKkYeHYdDPDNg+i/AbMbWnTSauVrI0JtYs/hx+R0FNNi2r6NFzER9ILn0jM7AB0qA8wo1SS8VeuV5PaC9EIIiS4jKczK+ke0sFbw978t3+huUNeeXPOChQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwj1flas; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwj1flas"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A202FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769700233;
	bh=1/ooBaNzIzEJfASeX/dXCrwcf5FevHXRzB3C2iVwb9E=;
	h=To:Subject:From:Date:From;
	b=rwj1flasBrNza0QjRka3IvzwBdXGtCi/t4dpeYowdAcJ+1BeXqu97YRmtLlL1+cT2
	 V5sNNcu+aPNtQ0vsEGlVxQNwAFmM4BOgdBkVc1Yb0cnV53Rew8zFskJFvu9VPv+N6R
	 byqreXebygYDC4IcShGKPPzjo1ZpRp0/8Viu5gj4OdIT7Oymg1zs/pNFF13nF6QtfT
	 /MRbfz6k3K95wf+J0Z4a5MRYlu99DjKBewoSkFIfxrlJZ4FzBOUa7+CC+F0PAaZ0Ce
	 dVi4AreVpMHkM0Oxar+r6KSAMhMdaby1HFcGQ+dPIkygbrma53KrwCevwNoENC7+8L
	 13jE+CiIK2JIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935ABD61020
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176970023359.10899.833466259225401017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e74e97e8a3af6f96150563ed352d6b08b1603d841fd5f8f2f4a9af68a9ccf72
Date: Thu, 29 Jan 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769700233
