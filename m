Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2539412B93
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732074354; cv=none; b=CTNUFsWaMSsV9NsRwH5jr7WCpuxMJDV4b84Qetfg4Z7N/p2pBKH5qhJej2+kOK3DX/wkQ3BHvwRsQqIRaZ5KQXEMiiIVIeSQ5rUwpKNpTOJWcHXYTm/OPUB8mCUi4CTsqzhkJIBSma0XCWcosZPX8XxABC+wXk7to/qn8Fa3lgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732074354; c=relaxed/simple;
	bh=xd5N6dW91mHEZSMvX2s6jT/cyH+Rcy7YzpIHZP9ARco=;
	h=To:Subject:From:Message-Id:Date; b=qdg4BTb+TQsBA559vhbS6gIduseDBT14N77pRR8ZRRtlq18roL6Oqgcp5Bps3UvTmeQH6/z2h6aVJ9n8mHtmqLTyp46tre2Z2ns9I0BeuzeOcksNyXNUXNjeXKpu3yJlvy3aZnTbQpCXAh9REIZsYPNhDCLz++tvx2bovROwes8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PfmIhwoP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PfmIhwoP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A33C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732074353;
	bh=xd5N6dW91mHEZSMvX2s6jT/cyH+Rcy7YzpIHZP9ARco=;
	h=To:Subject:From:Date:From;
	b=PfmIhwoPiz0u993lsszR/hIU+sZdZ9kmuk5zFURTPNTj0ToOGStxip237RbVmqEoy
	 O2dm5pCvRP/pw14ucjDKhWW/B2qaZTO1KQdbnmnkCRVDXg16PZAv+R60tUKv7MnzcY
	 Jiw0H3Eouc/lW0q+aYbX1R3kFQqQ7NZ7XAp91dxZjHdPYgLwIJ/uic5EVVC5sOYw7E
	 xLOupyqtv98IN+NpRumftauvbDd5PqDARfvRBBpP0qN7q7sLdNLySIfw2TRp7084BO
	 Tw7pMa5+7hp+qarSxpDBA3GhAOC/PfzgY8g/agI6o05U8BPCcB2hxSz7hN2T7vb+QS
	 SasfqiEN/EufQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AB8D6E2A6
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173207435358.20600.9245827599315203676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3860fd597ccf902a7c3f9d1293c47053bcc542d9d8dbf6784f360107d02db51
Date: Wed, 20 Nov 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732074353
