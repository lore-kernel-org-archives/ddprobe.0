Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FC2265CDF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746524995; cv=none; b=oCPYVchWOsliPOC1P2YhHLiK+npoonMUdglivtad/F2wPaxifEkz2Fi4X31MpbWArWrfFs6bHq0sc04BOfX0ntx4kpFLsRiaMlzihzhUHMI4S9nr70YWcUEzsEdnqM4eFEpJ26b+p01iXHyydWu1wIx5KDhRpoBgJuBokSBD0T0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746524995; c=relaxed/simple;
	bh=OnDjI+5ngQLNLrdSYz+FTTj4PH0TlXhc5o/3szcyAtA=;
	h=To:Subject:From:Message-Id:Date; b=uYdOOy79ptEK9PN+Kx05m4dzKdoGct88AtAHuogJzvNlRI+7KmS6nPyuzcKGs2qFdz6seUmjfs2dGsAbeeCXZyNf+ZldrTPRdqc/TqwW13kzV0Jpqce8q6i65ajzR74vbKfey4TJ3FU6cEkavCAlqWo6tHsQX15Cax2v8VCoorc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjQHtAOh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjQHtAOh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E27CC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746524993;
	bh=OnDjI+5ngQLNLrdSYz+FTTj4PH0TlXhc5o/3szcyAtA=;
	h=To:Subject:From:Date:From;
	b=gjQHtAOh0aGY80oSVhMnh16lqPv2P0NX+HjEP9hWUjAv/IWgpbVaywMWKweCpVAub
	 UKXyXJ89kOTq4A/o0kttq+N743it5WWJ9lqyNsUJuNBZ5SvSEORBp5WTojYfJbnEcF
	 Lwd+FAH1SR8fLIb2G3ptiIeiMZ2vMCWrikruSZObkForsE4yHs3m/T+zYKEX6FMMjW
	 xsxFpg3DjJ0+ojSk3ry7R4ujqo622TBaJx6DYmK57JoYgsJqdROOA0MjBUqe9cGLZk
	 8cvOMt0oRKhdVlRcIlSmMVwrcLuOo/iaUk+WV317DeXv6qcSpqBiW8tWoj6PxCdVa5
	 v0KaoiRZzej9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F496C3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174652499357.15566.8903544597545056709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ae417cf36ed4f42ce963a616451f95a2e5752f1cd6ee556a55d3a4e61a82dc5
Date: Tue, 06 May 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746524993
