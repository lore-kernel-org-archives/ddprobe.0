Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFFF7253356
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753695593; cv=none; b=WQeswQC3b11Medd6bFCk3R+x85zzKHuYk21DBMbf7VyVqYp9P8s0TK1EyzEoyPjrfUywTrBDf4C9TZdz+rHpB7GmYvrRDiuLg4Jwt6k62uRNMwHPmexbSL+NQBqxU2X1PpmukFQpaGMAvs9hLdHqp70a72buiPFY+I9l2vKVSwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753695593; c=relaxed/simple;
	bh=2rtWkW7hV5Ixu2B67NiRT5YTYlRz8CSOFc2CEbsI3Jc=;
	h=To:Subject:From:Message-Id:Date; b=LlMqETKCkEMafqQdEiGOBe3mALlfUtiXOSSOKyFqDLbwv1HPr1BiyNJzyfjKJlF5IEBdoDCc9lCycOB5a9HCK3qcAMjgg1dVb95s4quAoJpE8swdlm2k0W367h/OcDCdUIhWAmxyJ+7t/i9L6g8Wlrhzut8imSNJw//F9A9/KGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bG++qjLH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bG++qjLH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7BFC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753695593;
	bh=2rtWkW7hV5Ixu2B67NiRT5YTYlRz8CSOFc2CEbsI3Jc=;
	h=To:Subject:From:Date:From;
	b=bG++qjLH/7w7icV7cNtEKRaaHyO1UQBuRfHyqPa7mIMLdZgLfIgy2qlUg7qelWZFB
	 xtkcxmwQ0k+WcMq+BY4DuPETXsR9j/f67yqyebiVbb1/KH07Xyh5N7xNchzU9kRil4
	 55c4JSo+WZJqO2/M6X8CRbmGPL1inqgdCWcrYNdvlQqMjWtWmd3KPWnDBYDVbPn2oD
	 nB1Vwe0qY7WBAoJgUVj5YDWRumedbPkNKFxVx7Asx2HEgEMFVnM5WZFJB7nDmSkHOP
	 kHc2RcPEYUG3ziE8KfG83qE2SRXjLbkrZtktOzz9V7xkQ93SEHvbQREx8u2CTI3ZE2
	 ANl2I60yZUV2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9146CC83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175369559357.3318.2311621150340686477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 566ea35974841704d02d062073dc68941812f1954a921890a49359a057f4a1e9
Date: Mon, 28 Jul 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753695593
