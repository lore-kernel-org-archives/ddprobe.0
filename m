Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9CC2D29C8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 07:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783926514; cv=none; b=mD1s6q4vum2oaQQvigs/cjhZd8Cc8pekgFyt1YITD45NXbXFypwy/e8NTyZRbcHt7IQiCLeHcdKHVe/pKYxWdozP38COQ3GAbXMRkGcvqR4rFlHmuWHdO8c+WYpb29t0D6o6hCmkBRa1E7C00qqOfi1AcebzfJyiXGQjXjahD88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783926514; c=relaxed/simple;
	bh=nwRQpviCXQmhhHkvCiW+vAh0CNx9D/8PJ/UIEzqomgE=;
	h=To:Subject:From:Message-Id:Date; b=Kw0Y9JMqaDEeSnmpl/DwXaK5YLR+xRHvdP60LkYw1jEwwNotUuXtOGwL7djwQ1R/h8TwaS/8XxNbo6w9OuBaaqwW76oq2yUf4682rghflVghI814pQuRGEpHm8jm+tUZi+ev9Y8uP3wVisT2a7lAI9fi7Ju5SZzLOaeIpmQpRfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LogNK/Rb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LogNK/Rb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE038C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 07:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783926513;
	bh=nwRQpviCXQmhhHkvCiW+vAh0CNx9D/8PJ/UIEzqomgE=;
	h=To:Subject:From:Date:From;
	b=LogNK/RbYz7xnGcin0wku5mW2xKTou19yfNjoC8genVbHazMywcA6PBS5/jJRQNtz
	 Wvx1Xuw0MhOznvYGKUC38IntqArXxtGsv3SaCkUtwt5q9zP7tTowcQEek9b5KIL47y
	 MHr3bOn7Ti1+/gsxar0WgYZ+zmbxjH3nHSI3uNZd038ZEZTzWiYM6Q9RWXlMGB+kDI
	 GjcD9jFPOp8ZjR3RM6k+OjY951MCGA2sTLOcNFj7PKylT8KbAM1f27xwyytcn5vmTA
	 F2pInTShmky+9GqxmPUBWCc2KR92Y3YuQuTnJB73+B1sH4a3/BwFQAjofiZkF7fhbV
	 wxRcyAh5ROsGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1F2C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 07:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178392651369.26718.9017788207491015986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 014c61dceb3fbf86f45a215a3745fdae9cf4984f776d3859433f40703f49e096
Date: Mon, 13 Jul 2026 07:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783926513
