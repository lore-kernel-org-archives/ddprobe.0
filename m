Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6702FE56C
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 18:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763662314; cv=none; b=miqOg9xa3MIVTWNkuvspNWzyl4aGMFYeOW6X1l4vreaFhrneZsoLvgXP+OJ6O+OpRgOxL7UzfAcK21BUPGefJm0WYzwXZXFqGWoufABkL9XXv3KBqKt1tHdkoOQATClSp0PitPSAUCiBpNbyBxNEpVFraNM5vpe1d5mx1TGOmhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763662314; c=relaxed/simple;
	bh=mtE8vvvVpuzq8i1Zg/jeqB7ryRfqhAvLhVlTIn8wzYA=;
	h=To:Subject:From:Message-Id:Date; b=IsYQ7L41J0O5bUt3R4xEeblpOIRzxvrKWU4fEijvoNVvy3cWd5sYYd2RYmunDiu5MCk2plVIwxgCVzeQmDbLHgmigHyK/X2XT83FN2895pXc7DcgSE9J2boLjfQFJIT9P/+oZ9DTsMfnt9R8yNvwe42hR946SfwamwuqgBgJYXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+iACSCA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+iACSCA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC397C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 18:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763662313;
	bh=mtE8vvvVpuzq8i1Zg/jeqB7ryRfqhAvLhVlTIn8wzYA=;
	h=To:Subject:From:Date:From;
	b=n+iACSCALIEB/qjEogEblhlhqFneL2jDUThiRqRorWwCnz8/xME6lJRwtVNToc36y
	 UAdyqE2wRwkq1P0UXF4+tzNj68gxN6Yzj8p16l3L0C1t0/hvg/tv5Re/3+hd0vA4Ln
	 /MShrBhXkMfNP1EkNNGve2pfo2NlLVielh56grIjP6p3sKL+kt1dVjvDvGeb/z1s24
	 iddIbK5iGZsjE3yS9PGpEWXu6s2AXo/U9WqPrXXWC94oBUXafMFOX3D9q/yCmzFO84
	 oWEZvWA8ap6xeZOeQBme1nhfwuuPsp0EENVUI+QlUDwo+m3bvNH6sVa2w3q06h3CnP
	 2Hd4t2RC4Zpvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9646DCF9C7A
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 18:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176366231358.3559.17445825757810549469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06ff5a8f07ffa6548fdd0c7bb866036362736cd4c67498c9ab89b4c714da30d0
Date: Thu, 20 Nov 2025 18:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763662313
