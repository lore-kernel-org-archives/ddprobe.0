Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0172F851
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771787094; cv=none; b=LkfSNH/kVgE4tbHJuJ4o8ni+X4zutvJtJPVz/vBE7sdNoHyKojHyNn7iw1mfWl/7aSw3JMR+v/99WfcSgawZ4KKwcv9fM6gDz2uGb7wHL6lMA3qpZz7t0hbjLlw9t6Myr7encTPZ+wDfhllFqsqgxO60Dueu14UF7Yc5hfxT21c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771787094; c=relaxed/simple;
	bh=sv2BwP2ksXrFEiZ3pXk7HHGGtFEdjmcuKxauHuuXF3o=;
	h=To:Subject:From:Message-Id:Date; b=fb/Kog/W3FHSRkOcbnbqqtj68kgmkjxUolpH4fh8rgvuFXFx5wIWMTw436ATJyJj4ONPS1y/au3CCcrv0rPXxlKeb2xqSDd1aLPEiHADPVtOhgFkdCdo01WiBG0ZgQOjtAvav0yTwyfPXhMu1rFkgUjNlm0JAFhNzw+aj7hco2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f7uIbCYk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f7uIbCYk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A26C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771787093;
	bh=sv2BwP2ksXrFEiZ3pXk7HHGGtFEdjmcuKxauHuuXF3o=;
	h=To:Subject:From:Date:From;
	b=f7uIbCYkldivKwIpDq6G9hfe0m6zLryRh3c3lKjW5+zQS0eDqe1xXC1Bg9ZNuygUk
	 LsEI3AEXitL6+LJDABkU6GUs5+kwLFfbuv6ji8gGt6bjRtMtdFhnRk1S14WF+HFjuQ
	 DJYPLVyubt7zdXav+ABR21RJjwy0CEMpHCKGBEWjOkSCMi4fncrlEQwOXEzei+AyeS
	 IPuwuS1NYk7qW4aIeAyUgysmLH+qqIUT1QZDnQQMEIiWzHPRN9t/bgu8/dLUDe0uw2
	 v/5m1v7lVwDW+65IrUDjX2ieb1wfCG2N4FTZ+/HjA4w1dqd2R0K3N1786hIsIKMrUY
	 npgI6s5+2X/0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAE1C636B6
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177178709358.18959.2700102817966400997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dfe7694dd3bd998990bc983a1fed99e7ccd5d260068c5d99818e496762e701d
Date: Sun, 22 Feb 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771787093
