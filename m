Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29196405F7
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787644234; cv=none; b=MK7BgnOdMTes3X//XeJt1ogvbjUHbiVARkiZwRvnFSoy7ByYKZsE5353RAAFiW82WTzUW3/fZ1nq9JF3jCOLwAUaxCH1oAuDcMRQRo8jIrcahd9zEr5mTV2NZOB0sDTB7Zli3g0ycoMM5KPO6VCLO8T4d8PvwYG+8CGoagNCHtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787644234; c=relaxed/simple;
	bh=kQdkYwFnjqp5h683xxLdWcBhkR4zV+X6BLcpMWjfaIM=;
	h=To:Subject:From:Message-Id:Date; b=sX2oKKYI6IYYPS6yLgT4cLtvUxzlfXf3eTz2H+VTBc5454hqr6jkP0IeEN8wByme0Figos398a4UGOmTIFWuw/x0WfLzNhYSaMfDHOPNFMbgH88Qo4eaOYQTUDxN3eRiMppUxXDe2y1R+Tl+ILzI8eYswP5J1ItFQtojuAU7v+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLYJGUdy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLYJGUdy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC999C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787644233;
	bh=kQdkYwFnjqp5h683xxLdWcBhkR4zV+X6BLcpMWjfaIM=;
	h=To:Subject:From:Date:From;
	b=RLYJGUdyiBMvDsk+vFiNtLd/ZPR1GS+ZeR4UuGmkcJFmvaJ6P1F/PxTS0peqAFAM8
	 KlME75dWAvXJAFGnMwl9RGPII6iRc2EUdOcqYIrvVGt7FybISOchaQgqbr6GeRad69
	 +BWSjChQAaZ3q92/AncT0PbezguzB6sVDUzWSYTvyosA1fKy8Yataz40jG8zNVPFC5
	 Ew1R8QCsTy/80TGIZiSCqMpfvhuJAb12vG5LOtymOShyb9w1prHvY7CyMfbd/tJxKX
	 l1hyBWivdDHckz0m5+APZaDQstUceOXW4K2XMOQc/ds8fw7IJJ+W6QXrC0+nwgW5Fx
	 7uow48tOxv4nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADDCC61DB6
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178764423369.9753.15636216445927888681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7800f5f40d8c27b651be184ca9e5ae0c9078e2235395fff6427c99003a5898ef
Date: Tue, 25 Aug 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787644233
