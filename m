Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70B1A391513
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785442234; cv=none; b=sJenJltQ3QtNC9vCyw+H0YL0kMsVznFG0jNqH262VCBRl02+obWO4M8G6mj+x+VhCPJvMub5qedEoqO73elCC4XZ/GEFDtTcx/Ez8Ds6x85qOlLSV5l8trI/lVXi0S8HwIdpXeQGzLV0cvJQvBVkIklaOIdaATncZpROnVK8kKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785442234; c=relaxed/simple;
	bh=lctcouTNDjCHzh/Se0TCePeGaimGxbuEiG0uTdkH/vk=;
	h=To:Subject:From:Message-Id:Date; b=BlbY+DS25WRcV318I6sbBMlY3VKpAu88v8LMNm/revoSR/F3tOZFYwtHcIt6r7ckifqqO5hqvUhPEua88NfLuMbOhrIs0Y22RHTomcpih2a3pxdkRDlVyDFzp6KWDfHTW9RXdsFPrbtZdHy00OMlgUJuzHJN7J+eZ4Cg00nf9qI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVVm0iPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVVm0iPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCB5C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785442233;
	bh=lctcouTNDjCHzh/Se0TCePeGaimGxbuEiG0uTdkH/vk=;
	h=To:Subject:From:Date:From;
	b=fVVm0iPgs6rb/LOe6QGYJpNC2xanLDFUqRSGascSNGsKK5lCJ+aJnM+R1m9ykBjjN
	 YhQNSii015oU02keKGKvxPOt0lEMRliGhmbg3z829glu1RKwRr2IXLbPRC5kSDeTR4
	 GKS/q8/vURDgfE3ju/SZyeGjVwjrj04D/ntNSicwu4DrbOkniBjWfIAUnUrbVJqIXe
	 FwTP8RgpNertDKLTVugURnjP7GwZmJa78jlagDAdTTmaC+p3yJITm7rjHOW4MgwdKp
	 Ru3g41TcKYM9uzELgB/ibAp/mK1kknJyaUB11z+6RYC77C0yKkYfmTSbDMJK7C/e1w
	 rAn9UdbO5rqFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FA9C5516E
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178544223368.23428.6945162875353168478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 350cd5887e3ecbe8eef6e487b5e2c4d1d97adbbc34aac7ce769f8b1bec52278a
Date: Thu, 30 Jul 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785442233
