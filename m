Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148D02E3704
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751776194; cv=none; b=ptmz5wdxNEzK72VfSxSkZBXFxOLLtnWU40FqkRZDz8PNWrKRRXZ211cYaNXbMRgZyTDSpznMwDW6lj0pk9JjTqydWVfKkOB5z61LdSGJmF6RlM7l4ONFXpjk1Iw9LZh2zWsdZX6YfpKcCm4FoLok48iQkPtv85tp+cQqo8WadBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751776194; c=relaxed/simple;
	bh=1aOZ9sO35Q1baTmSIyKxqrJnL64Rye+3mngZ0F6PKlE=;
	h=To:Subject:From:Message-Id:Date; b=QtllV6laIkHEAWsuhiBiLbJXP4YlbFCBNNa+vwrqAzzUep6n3nwksMnYH0oDOgBLcGS09+J9ACltHBB8fEvh2uuf+ET/AIac3ReEOql/Ly/cplxoYEirRVEUxGyoAEbufeEWADsj3gz/1/WNF7DarmNQS6E411VGIrvS/MxBI6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHQRTi+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHQRTi+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16EEC4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751776193;
	bh=1aOZ9sO35Q1baTmSIyKxqrJnL64Rye+3mngZ0F6PKlE=;
	h=To:Subject:From:Date:From;
	b=nHQRTi+0nHRtA5iLlI8tWcumERqJzgFpEafjRdNkE8Gm9h1oiJN40kT/8eqvcE6oK
	 nxI8jlMRWCeN/tqPbOqGwvyEAO2qaeiJXrMrj+v90Xc2Q75pthQAc87W1dh7HdQBGO
	 PqtdXNDTLdx0vydAZCXrD0XDTqTI8NUhakrpByhZUFqOlQdX4Q5Q6Q08HYG+PX/Jbj
	 LUWBoq3iRQPvB9aZd6m7CCHNJYrjTbZed2mbzP0bZ68kcFyR+UXPmMnTRUzbBkMmhj
	 eXA7NVduFP3omge5K704GW3iC278tnroCO/T+Lk9vz6lnm5/nk57t5V2GcdJpXm7NT
	 2RC7tQqizfk2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E753C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175177619357.26361.18430671712696057178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ccf172167a2e0b4c27bad89f56f88bb63b4b3f4fe22dab22040a7f309e4984c
Date: Sun, 06 Jul 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751776193
