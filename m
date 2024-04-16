Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF3F3D38E
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 10:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713263963; cv=none; b=NQ99VTnu9xVNy0Mf5n7wCD0ifPTccDVutd1NSRTSeb1LghV/B691C040f5YYF4fwGINH63l2vPqpczV5GP9RA9aUdz3k27S8DscqQ7vcig7eJs2HDWA9bOyMI50AoHT8jQtek0CXPfixLHWgQRMutQuyxD0zMv8P1ZbqDLYOQtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713263963; c=relaxed/simple;
	bh=JesH99SxPLh49qHPQtPUIrKjHLfJAOzK0wGaJ0nZKCU=;
	h=To:Subject:From:Message-Id:Date; b=AbX8InAOqMuBOWd7Zs3ls0+8tBRT3vcadsVJdU8g6s5XTmrs68D8LmVwtL4gxjcPrJN9x5rhyvUa4dWbl3J6ftItOU+Jx2TOmvNP+s6/mk+IOqYA06PpX8yWDoqONzawnbQjPPHtKOR8/EDtBye+bJMkgPBz6TWNNC0yhBmRJ/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ew6CXk8h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ew6CXk8h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E41C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 10:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713263962;
	bh=JesH99SxPLh49qHPQtPUIrKjHLfJAOzK0wGaJ0nZKCU=;
	h=To:Subject:From:Date:From;
	b=Ew6CXk8hCxLnhah0iyg6rWGwqr+Jduaw9HvF75kPJQ1XWzoSVbAW6iCl816kmEydW
	 4qfVrodyjGiCElk4hz1/9wRErkr8xgjCAgNGAHfgt0dENaOulS7F3gHOuwvpg0yjfp
	 SaTpAU39SWagQS4nWvwrCtsgMe1Wk4puEWHRfCCnNeNuDhmC7jm0yDCAibwOUYxWoM
	 u++7z4XQ/LLS4tK+zjktGtDzcIfWMmDkz26BqQhOd0feDbLcbPPtB5zX3e27m48DMG
	 +YLBWfsrRMLH2HOCOAFPJkYYNDkxA0sZXGzhgfXp36qZho9ECtyfp9f1GYRnJCX1Gd
	 eb4rP6a/rdjFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA1E1C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 10:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171326396275.24373.16091758598247799171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ec2e48e0b7e9eb49b002e380520682fe2068f1b840005898ba176b3c025e67a
Date: Tue, 16 Apr 2024 10:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713263962
