Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5959817085D
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 05:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718085503; cv=none; b=gBtUzVFOOTEIl+0SekYk4SWE8E6isS9KOxLn2plrfwRMV4bL31b9Y78cDm79azTpc1YQZgZax7olBQL0bYLH1RYR4pH3crXDVutkR22nE1mbt2YWjtAuqST8yQtaqDMWrPt0IIADKQr0PiRPrhFYyBKUoyJr6S5wfAH+QSYI1eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718085503; c=relaxed/simple;
	bh=C1kj2pFVPEken/XS+Vr8nRHVSINEuZ1OJJzkgMUvelo=;
	h=To:Subject:From:Message-Id:Date; b=iS00EKtwElc80rHy0S6NM9OFR7Wh+QUO2TrHmVOVdP307zIsSqM/Nz1+Bhr8CDVe9jLPUhhlnxZ5PVKb7He7QW+TwqeVOAsDIfHJBmNh+2jTXF/wGx13GdsuWZRYD4xeIL84b278RwMbhjQ1Y3g9sF0IlpJqMdgXFY2UOTqqwW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ayRmQ+qt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ayRmQ+qt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4B8C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 05:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718085502;
	bh=C1kj2pFVPEken/XS+Vr8nRHVSINEuZ1OJJzkgMUvelo=;
	h=To:Subject:From:Date:From;
	b=ayRmQ+qtfgLGeo1kSw12pEComBgpEmFaWA+L3HbzBLFu6hy3v0xN71oBFsk7Om0Vm
	 OV/q9bOa1I4swM17DV8yJwpQzuDfxZr4KzR8NGeURgd5nYjr9BdWj+lqTvUvD6y/sj
	 FijcjeOqR+6UOOlUpD459aTXAYtrsWfqIgP5bVKy9u+dJqlq/C9jqocEVBjD2qZ6o8
	 zJsK5Ys5d7pz89K+gmjkM88ZFO4oFB7O7ooxUBvSfzLawRMHlMiWl5LTWh6imgSTCs
	 FLaVfk4Xv0LSzmfVZlCrldrQIZVxv1GpdTTaUhupCVG+cC1I02kPcOTufyWtqR2zCj
	 pMfmKOlEZbfHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC74FC27C5E
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 05:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171808550275.24119.5131373503686966191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50ac7e2eb9b468de96b96d45a2c0db37d72e06416359c372e0899aecdd12e503
Date: Tue, 11 Jun 2024 05:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718085502
