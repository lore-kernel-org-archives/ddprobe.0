Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5632012B77
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 02:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714615343; cv=none; b=BaTuHcMZ4q90qaRnbcKB+AAABxU6CAgjXEMyMe4Dde/o0W30Lucv4PGYRUlOoWhwj5ry6ufel6H0Ro0yBwr6hRcYunhIFNI1NfO7MMEd1Nriha7AdjGs9QOQxRQJa2CGDSnooMHaU124BSkIsKvIfjjmHuzSieAr4LSA7d/2q/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714615343; c=relaxed/simple;
	bh=VJZYoUMackEYl41m/UXY5eZTGLvt6bIN5jrBKUxZiZE=;
	h=To:Subject:From:Message-Id:Date; b=QwMrm9aodoFp/cZ6reqYnJqtoFZTbE3q5XK725v1gzZ3Ici1tz49jeVF9SB1Sybh54yuwGIhoJdf6lWwrlRYlhcngFkqXsPmEmmuDz1ixhK27C4h9oPfDkb8RZij3PMmHcp4jJU0ODm4CfU+QVdjef3fkiDhh/D99O+vC0IZcXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ByzppXQW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ByzppXQW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E20C072AA
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 02:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714615342;
	bh=VJZYoUMackEYl41m/UXY5eZTGLvt6bIN5jrBKUxZiZE=;
	h=To:Subject:From:Date:From;
	b=ByzppXQWx2UqT+PCuMhoDDdd7pAzya/EHiyGMo3DL0RnHhfHLB9Kq8Z0KxGBfM7Ri
	 M4OgxxF6NXk5OgCw4blJMGL3pf2ciYbFU+76N/LtkpgeIs6lY/TNSAdiMcNj281RJE
	 7khiL7rLQhvLrOmPy5lk5VVve7s2pj/qemnFWfWUehiP4XE+R4hsXFJbzwukc/msIg
	 09RI22usYk3B/TBiV7+4F0MIBKRMR/z9axIvMfXTxff6htZa76E2vYbOfeVsEPCj+Z
	 3g3z7nzWMZSEEoZ9OrGyvWb7SfvKGOLfUZFCmtkIgHnxQfsalVvEN8KLCVww0IzBPC
	 B8ApzbhI++9vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C20B8C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 02:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171461534278.30401.14231554401330775581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e75dca0fa6672399b0efb9cd8d2615db201397fbd6286e368b500ba03ba72367
Date: Thu, 02 May 2024 02:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714615342
