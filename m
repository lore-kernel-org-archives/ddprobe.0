Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323BAF9E8
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766624034; cv=none; b=HrKboIsG+BamPdYYOVqYNTnof6saBkjZNstj0N3tw9Zqovm+mIib7W+sE5Q7QucEFNVjiz25rT9fWtozlxkyVqlauTXhZF2nS885yeB5d4lOLWdVZ97S8Mpoy+JpXZsTu7hG1vEuXDVaFzn3m7O9x2qm/w/FPBJBEMkIgXQhRyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766624034; c=relaxed/simple;
	bh=CYVOkM4Houo3r4w6Ydxu2t2EUzI1nvrV/LRwm5aYKmg=;
	h=To:Subject:From:Message-Id:Date; b=mrxXix5fvvQMXyxqjzb4eZ7hhpTKZmL1omWXGJgBzmRBjRm6CSPvl4qA5d91NVrNSIgyMIbu5fnrFFCD8g4iv59wDkzM+kiP3tht+HBza5RCR1XwcgzGnlMq5vgVjhInX7P24nsCC7vkbp04XZk7GnuXdo0iBsmR46+AxeDbkBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fSjq0cLb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fSjq0cLb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4451C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766624033;
	bh=CYVOkM4Houo3r4w6Ydxu2t2EUzI1nvrV/LRwm5aYKmg=;
	h=To:Subject:From:Date:From;
	b=fSjq0cLb3cGE154/Z0QtD/mid6ut0fKbcw5uPIh2XOE/NyXfIdlirhqC6N8wQsItK
	 Cb1z4sIPMcKisARlYLCh2PGrgH/NEBeV/h9NcvHtNSljWbxOV7JsbcMLEp2X12yte/
	 RwFTXHy/qGhkwhdtraaUF7bWUy9JI7qNQ4xtH86u0NBBslIR+zpEXeJHAL/t+49ZGi
	 G1hvl1srzHzlizq165oIPkumbGcGcscKSOb9ENXd06Ye9+6EvWD2q0MK6WP5lIGeYm
	 Qi3mZuqFiB+2U1JBVh/HEpdxugBE592TLjFF4f0A3bcBewzka5KypQnpw+DNaFUkuS
	 oRdOTNlyKpPeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91795E784AB
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176662403357.5698.15941563008529342806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3f355f9caa74a8971472a4a73cc30750cd6e384e19e6d29a173133bc02ff4b7
Date: Thu, 25 Dec 2025 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766624033
