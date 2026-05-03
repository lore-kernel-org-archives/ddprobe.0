Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1663E26F476
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777830454; cv=none; b=FjSWWgq5vw9YJ9TTOkPVBqmhJgsB0iOnuVeBY+qjF+df5yvC/p14qj+9Z8IBEbWrD7pS/v6qOo8MwgXtLzn5uBKATi35RTLF4zj80Q+jX/YDEu4JyDLYWfMvgZ8dA3mpE1i/GLYGAY3X09+9LFI0Cmeh0ekf7oQLMPnnRmKkiw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777830454; c=relaxed/simple;
	bh=pllwTMsr+Doq0rs1uk5VaS/N4aE61UnXL00hr7uly/g=;
	h=To:Subject:From:Message-Id:Date; b=g499BIqbhr9tgmss6x77WX1gv+clVL7/PUtJo2p1/Q6+LWaYCalJB02ofnLidBzjXvaJSUDfTuSiHFnSLd/vHZsnWjlEaIoV4ulFLw1HUOnsXPClhopm30KK+5XFwX27LYgyxP5nGZyH0Do5dNGB+U7cazJTE3n9P4EMcUhmG30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VLkP4Te8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VLkP4Te8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA270C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777830453;
	bh=pllwTMsr+Doq0rs1uk5VaS/N4aE61UnXL00hr7uly/g=;
	h=To:Subject:From:Date:From;
	b=VLkP4Te85X5UyM8az27RBTHUQlkSTNCJ2Xw3sn/TXp9nIWLbHjn+z3aJcMnkuXbMy
	 6kj+4WfOU26H/tJmhUl4cCy+U/ZWulhrWLwG/DiRES2D1XnMdeR4voWhZvXLfLT3aN
	 8rc9Fjreag5jMvmMbMS9VBW5jcO/mvUIryVvQVfrts4vxKwp0LAG32Ngnnheeuh31X
	 T5X+iVSLlqWHQ+aiE/D7IuV/vIH9fWzppfbMfgAqu2MxfoZuU2/ANhwruAxmnYq8/1
	 Vbh1AREriSkG8DIyYR9EyQNlwYwkv/dU+h/eZLNkjAXooaczrji4Y4EE2mvDjpT2Jz
	 2n7Lp4gnSznDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A1DFF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177783045368.531.16297808871985370640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01fbc300cde08baad00450339ff6111d21e2d78293e48c54eedcd7295b47fc86
Date: Sun, 03 May 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777830453
