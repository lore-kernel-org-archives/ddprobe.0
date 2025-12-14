Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E15115ECD7
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 00:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765671774; cv=none; b=mJ6kzQI+cQlscIRReg8g2jR0AoQ7mKwr2f6QFuK5zLe2U3G6CXtMAwpe61cctx01FGrAs/dyLaqcUuptQvr1xfFrWNHtm+iQtsm4sOTk3xvahJlvIRHwB08D4LBvFzghZUJ9Hgk9mCCKZODkEDGV/MH41zofTT7I0zCq9ysh97s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765671774; c=relaxed/simple;
	bh=+9veBOnpNTw5L2gk7naBoZG8sWslxlGfddV+wdrAhkI=;
	h=To:Subject:From:Message-Id:Date; b=Cg0OifxkhKOcCnLeFJW+ZudhyBl6AIJfIPQE2pcNBIt/AiAwZ+BeShNJ2+R3JBXlr3VxUCcPMCH/u6/o8WmMIKbJbjhQ4U2/neIjLU+O7ClypTvXhp2olqemlrZLBgzcSfZJR8wxLpmYGjyJ6ihW+Mh7HfVqrL65ffoFXhFx5io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwghTm9l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwghTm9l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA368C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 00:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765671773;
	bh=+9veBOnpNTw5L2gk7naBoZG8sWslxlGfddV+wdrAhkI=;
	h=To:Subject:From:Date:From;
	b=IwghTm9lkkG3680Y8b4da+0qkxX/zXN/kE1AKfzkJG1TV7SW1ilYzgYOj3bK83p90
	 69e7V9Eg/TJ/tuv6ZVmcQbVg6r15rOUfre16w4fPHUiso20snGs7OYc2+zUQRkpsHc
	 R3S9IBhScAp+O+XDvy+N4WHhjVYN7KblPnTR3I04dKcnfixdEyIMYQxwe9pIlmCPia
	 +Ht8KzcS+OaCrws9/JndAz5TNmx2jtFiHtkzCANAz64DKZknppt0RD9Lp0SN7D/GTV
	 SUP21JrQ/c421eF6zuCWnffaV8sz79iQQXXNVSToXLa7205mpdo0JRm3rYRq5ilt8Q
	 wy26MgV1rsiWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EC6D5B16D
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 00:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176567177358.11148.15058950721810252197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 567ab8aceca8db26210c7d74b3421c86d51a6187ca2b47f1cc5dffac728448ed
Date: Sun, 14 Dec 2025 00:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765671773
