Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2480F1DF97D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751274594; cv=none; b=F7xJsu8ELO/ufXsAygwGf4WgO6sHagHVbMqgsnkKQrs0CTbViwrICY+ZPLW/wTvpsYqaXUuKxxgHIvQ3IgJJ7vuNSAT7l4jfgkjtypS6KXWYeHOP2CsoOUU4i/+1ivvXJgIatlMsBmb5a7DFtIVWBbD7ltIs4exlfZYLkI/cQsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751274594; c=relaxed/simple;
	bh=iXPM8+pGqyh2vWjG6kDzLEvL/CM/PVhc5HUMGqA8GKM=;
	h=To:Subject:From:Message-Id:Date; b=QUt+Ug2hr390ExzFgE84UgPKnEaGyAJ6qFin51EKe6eGoHjy9wHY0fZW/y2lr8qe0fxDdAWEI8Itijo2FJdtvLlyEcYgAM9GoavPtwGPOIQHcx9nFtjo7f06X7Ybwpj375ZdXpLRGRFgxEB7ksBjJRW0+0oByO+5HqDzVkefPR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rL0C8YGz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rL0C8YGz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09E9C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751274593;
	bh=iXPM8+pGqyh2vWjG6kDzLEvL/CM/PVhc5HUMGqA8GKM=;
	h=To:Subject:From:Date:From;
	b=rL0C8YGzu9qsA64XQmHsQAYpT6Vb87+vETQHh9OaK9FOh0T3Qxr3KHJD+qMcLXEgh
	 97yHiZp2oxIFNBL6nEaXdUI2TVkhmiHVoqRLJMrfb3aNtKgx+aYoiz16O2y4sSXG7S
	 GYsgEF8G3i+Rck2P7mQA9rpVxn56L68h3aUMgO9/GkBDdUtMusTx3MgMGxFX+3keVu
	 4mlaDs0NvnlSBrdBS6bbCvdsZX3tFh/AAZuABr65Pzv7/Ggcpv4IocYXuxe8v+CRBj
	 pYtm4uvEt1F1GHjn+OkA4UtaYMrSfIolODd/AQSJVitxTrVw7KbI+BW1Xh+6xpDStf
	 4x1M7KSh0c0UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E38DC7EE39
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175127459357.7535.12502783716557486490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ab053211dd5e4ae363a4ce9d0ca210a14d205b5e461f2d0a821a2f6e3194ec5
Date: Mon, 30 Jun 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751274593
