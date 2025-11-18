Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D40BA245008
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 07:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763452314; cv=none; b=cQNr9Wnye7l4R9LlW/nNnmqFEPhy40obj7BBaSflAsoNiHIZTjDtxPvnjnwBZTf8yCmjRLm7MTX3ztg77HO149UIDTHtrvjxWD5vkR35yLVTIlCVIrEJbuXPyJQhmoxiyQoBthn8uuQUxXTx/Dew/Sfa/x1aHk6dgaGmjgeduKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763452314; c=relaxed/simple;
	bh=JLZuzAxuw8GlwOT4RigTGqCePR+N2a/S0Dg19W2nHto=;
	h=To:Subject:From:Message-Id:Date; b=rxwc9C20kZ7OQvPO2/w2mecJBqgaSH48oAdgm5Oyi2XJ2qTcTUQZXrtZ1tt//cZjo2qv0upbp7Im9LIZ/jJRK0Jz5XsuYLU0CbAgZM9DpNpmlvwIvgjJyF49fFoYjFse3S4ZVifusHbF+DunOJT/v2uHxv+wi7CEZL6/FxcuDPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSCcpNuX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSCcpNuX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C84D5C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 07:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763452314;
	bh=JLZuzAxuw8GlwOT4RigTGqCePR+N2a/S0Dg19W2nHto=;
	h=To:Subject:From:Date:From;
	b=NSCcpNuXhmDKyMfVlxzQglfy7q7KR6RZzRTpYM0v0VDhdefb+uHRFbCnq8G8iyvB9
	 wrBUssw16fDgm58pwewf2VoCWA7GWccOfGJ2R+hNxYa4VCGQT3qxOLmcxyKcQrO0QF
	 NQWut6eyIopqKYMnFNypcPTlQdGtfU/fHAFSsYgzjdU7ekGZ3U7Ooy84XS9B0ThlLE
	 Sy2q2lR9+hEsc/wNygODPpUulg5dNkoP5PnFhicSjaQeW4z43KVR1VfC3dTLAf+x/z
	 jOpEY8Wv9Kb3KZ0Mk+VZZ4MtOqt/k+MAd1ddTDDYgzmAhqZGRrWvoASRsAi18TZ2qL
	 IqIOYLNOZwQLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DD0CEBF93
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 07:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176345231359.11502.18317353132448863102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 840780b804c5387a17360481adc4b1055bfacb17848cd46f6a48de648b88429a
Date: Tue, 18 Nov 2025 07:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763452313
