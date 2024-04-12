Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2FE355E4F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 13:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712929163; cv=none; b=IcNezuqk7suQFb/rEftKUxRvYVGUXoPK2DaGHod1qxDWMdPZxx/x2bXHtIPsOGMxWDobB9HWpK+oO3gElHu3zyDprNZWsuM2y1jWqjdENmGBktaB6Fc7yo3PCqU+CociqpuNyhl7c3T0wcuM0P1NwSaOlFHeN334p/JHALkuZ8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712929163; c=relaxed/simple;
	bh=eB3JwTRV2rRKi1X9PVPOwcMp7pSZcq+XZ6J7j+pLZGc=;
	h=To:Subject:From:Message-Id:Date; b=rAZgq5FH+1exx55hDez59yxeKDhgtOHT4m4dTqji5LN6n7J30zZjXqBIx21zcwuPx1CDvFl3HjTASkAceaVBzPaW9PJEvdVFBUSHHB80h35sf921kfwJqhcl7Fw0+LQwiMXHy53zLVrZb/eE8/DYIkaCdsrjrLOReGUemtHrsts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBSlf968; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBSlf968"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8CC6C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 13:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712929162;
	bh=eB3JwTRV2rRKi1X9PVPOwcMp7pSZcq+XZ6J7j+pLZGc=;
	h=To:Subject:From:Date:From;
	b=XBSlf968BEvPgeZ9cdomDs0aAfXdSNNSlTcRzLBtOHnG5UnLjJ9czZ/EPdyQZIgJ6
	 WQX0Z4Qp6Rq7+ggQDWFHG8dJ+0R96kiyzin3YQrHHT3nVV82hB6yvG8e6KeGX8WL1e
	 oPLf31Qm/Am2rdtlY8rvrz7IX4bQ/J/XVbli5MjZGwrNEGKA85AlbBfxayNe5QpYRm
	 CqwhPBxOE35Pj4j5aSkT1gjetr5I+85dEK6lm3nKqvsdxB7ITwjXWs49wN14BoliAH
	 Qmc47aTD4k9wkItS4f+NfGkCNDzNr71AQuh944CVLXT4TNNye9qeRnY6t+hPmiQqJs
	 uv2SoKgSXBjTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B95C3C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 13:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171292916275.5101.10697127359339067599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0a43253259b15dd5fac9dee677bff595da0b4a730ececb57c0aede1bbee579c
Date: Fri, 12 Apr 2024 13:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712929162
