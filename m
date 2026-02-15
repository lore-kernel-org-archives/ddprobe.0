Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7D319F11B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771139094; cv=none; b=Z7D52rT8QuTJGinS0cZHyIsCBLhcif0ZYKYsrF9MHafn2e7v6TAwxuPDia1DiZyqVI691taS3y8u7CNW2O8n18+jUgRS5yRqLWJ8PD+I3t2Y8KXYLw3lOCMOZdXdsFBavtE1OHOZsULaEKpnimuPUzkzxKlJ/rs2d9VysrntbUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771139094; c=relaxed/simple;
	bh=9rr3b2a5fFczRt+Ghnxzpooa2xLyu77yYboKZlw/TSA=;
	h=To:Subject:From:Message-Id:Date; b=hzr02MLJ7h3zK4ntuwynGBu4PPg4bm6gCK1h1FOonGpcZwuWG/q7WpWjUdSXi9o/b3ZcpbJ57dahHjd+iIiIuaFQImdtdlw1OXVpZ8qy+TIuY25InlNmPNMc5n/3xhSM08iIZKvHTH13cM27VBsZPoPIVSVwhLOwZQR8UbEJd9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovExMlY1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovExMlY1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAAE2C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771139093;
	bh=9rr3b2a5fFczRt+Ghnxzpooa2xLyu77yYboKZlw/TSA=;
	h=To:Subject:From:Date:From;
	b=ovExMlY1lfYOk81VHOOvOtvPoYG/ngjEM44WfIL90RfXIqoBIvkBMJnoza19AenDv
	 rcbFIxNdkizSI1no0GF8FhFh7e0mPaBMOrjHQTyWVPgGITFS8FlNXXzfA5wxlsT2cV
	 5/GWiQ2bFexxHF7K3aVOf61Ue8e9x+2Jg0mAWYj/MLphnH2apGhrcXOEPtz59MWo3t
	 TNZ79sSYSh3sUJHzkvRqI8bLsfmL/sEvumyNHTOAnI9HWqBnwcZk3SWJwPvhw466J3
	 7KpISl+PiVT1u6JFqd9z2VMA0cSgQ3D0x0qR7wWcpU2vRQcDVENMNCvLA4SLsABxAw
	 znLIGc7srslgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1274EF5868
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177113909364.17334.13788838897534145612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b848d30f163771cbc7d5837d44a9340e39e6face26fa952b203e4d43df90c4a9
Date: Sun, 15 Feb 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771139093
