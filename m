Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695B71870
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 19:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718481503; cv=none; b=ei1DwbNjLrqkQL3lYWBuykmgl+skXozX1TG0tWX258rIxeTUCWzzaykgZH21vet8rZj6P6HamDy3B4ieSgGW3NJ0aLzqHHU730QEp/E4x5KZtC+6oyUPs5P2rEHoH4I2wwWS1O9vr29dHGIfP7D/zBcQeZ+PkrPAK9Ij5y9AGGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718481503; c=relaxed/simple;
	bh=XksOJ0NMrPfvATRBMGif4FNVm+WSNcyePAzBTn2Awqs=;
	h=To:Subject:From:Message-Id:Date; b=qDMlr16OgjhYc7PS5LVXVYg2AGBd1+CVZVqh4WzpSpRfimDtMITddJem0Yo642N1Lk50hLVujM1LjM4mryyiRsBjBXoSofrry8v/TKzePSAYFLr9C9BczxTbXVW5P58leqOFrwqzx0EoauyuN/X4VuMayLG8wLCvw6z75Z6j+vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/1Da57y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/1Da57y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E65AAC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 19:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718481502;
	bh=XksOJ0NMrPfvATRBMGif4FNVm+WSNcyePAzBTn2Awqs=;
	h=To:Subject:From:Date:From;
	b=n/1Da57yK2s904PEWEUnLzjq0gxjLAVNF8pddQ18v8ga2c+282nEGhXc48Ue+bpLf
	 Az2X255/SipfhBGIuQO1Dh6jeNTSmFqUDprx9KYF+yP9xy45vWtNBRWo8VHJeig4rH
	 bpbfER0qDZtznF7AWbr6xD+a+E13WXTRhHWfZEkubYiyklKzpuFqsDofe7gWq+Ofzj
	 xfJba9qRK61S74uKficGIMG7RCi8qOpMSPNYwWMR4pHgCfBvaFud3VWgy3WP7rSpko
	 lTFWhIjL3IlFuV7rjbsvwSy4UHqHcEEp6qxQUYXnTrsO+Z89WhZIH6HFghdrSwknPT
	 xmFwp69CqhiZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC50AC27C7B
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 19:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171848150278.16743.15607173836817904332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9694082d67b791fbd3245494d796fd4400150402afd54a8ee89433cb602e59d
Date: Sat, 15 Jun 2024 19:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718481502
