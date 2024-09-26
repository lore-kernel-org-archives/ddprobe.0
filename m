Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFDB4085D
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727381754; cv=none; b=H0IuuWOoAJSJFz7Xtf7zEsn4Sv+bCGelqFuXEqMEC02HFg4tdCBaa4EvCKXfdVDKv9pj3DmN4ZqUqFTA2tkPMqxTOIv8OTa8hH/96C4f8FB/rdlJgfPUHwwvDm71LnzqWlxCU47ChTDB3Qg+UgtQI63nLODvtlaYQxBTsXgbUas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727381754; c=relaxed/simple;
	bh=BeyiAoqrZTtUiGNK0pptlAPVhzPkJEHlX8+UsqEgg1g=;
	h=To:Subject:From:Message-Id:Date; b=GAt4KUGkiKqTxaycoZIbyDsDoKIa66UhtbwOfmKiqAmJTbzUqvfCbIUq7hlWYu+Pm62ZDVok+xHs7VjI+MuFuKBSdNOzKpihP0fUXASxXdfInLeKyYNEl2X6C78lwcrPmGG/iWcY2suPeKRAlFsI8jhPEERQozOE6LstGoKNMdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h04fhmuE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h04fhmuE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACAFAC4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727381753;
	bh=BeyiAoqrZTtUiGNK0pptlAPVhzPkJEHlX8+UsqEgg1g=;
	h=To:Subject:From:Date:From;
	b=h04fhmuEe4xyBCY0jynamxlCJFX8wC/PnUVPPDu/w2wpbggT2Iboh1lDl8LG42fgS
	 OmDnSEecHeB7MZ/Dl9FUSQdmmROQ/QGucqVmzZ9de7SkPa4yjJZhbibvoZetpBUyQO
	 shCGGvRa4epKFThUXjIy+XkZjJIoM1FUQWUjlbJeyAeKJqAucyaMEx9iusGwb2doqM
	 e961T47VEuarNncoycpQZws8JZj3dT4HZrtfS2jNDtK0sb0+NlycvFhRiJqBB4ylCb
	 j5gEn/GRu26zDPgASAoNmJtDFNfLqQ6tNiZi6G73IuLqTiwb6qYUUB04TzjMoi2Mdt
	 pfFSTKtOuR/tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97042CDE036
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172738175360.20224.8933209816458209463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2969afc3907b85792ef912d05552ca14e79d411d060aac37186aef69c3ca4c95
Date: Thu, 26 Sep 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727381753
