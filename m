Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264EEF4F1
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 23:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776037654; cv=none; b=pHnaa8ThhXFZYsYbnhk5JsB97ilS80WYssTKLcvx+ZeKU+ft0ndVC3g39J6pqmI/2g8KyMkyGVt1YpztJ8Z3ri4VW/1Vnl85IK+u3xXIwtkya1e7LkFffaQBnw9No3aN3CDdKS6GojyVM/HfkngNc6gXYVkI+wsYMP8pg0mgO/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776037654; c=relaxed/simple;
	bh=VPcSpunTMMjot/T3/Xi6f5hwl/RPV/2YdBW1bRiCEwA=;
	h=To:Subject:From:Message-Id:Date; b=sXK9ARdW+HICXnoEKsSpYwAd+xudL0c5HeqrxFJbMlhcqw4nGIeU8DNQtm+EEl/SgrYfvQlfvHS4QOOTYSPKqVzTTin/8L6iNSf7W6kYpwEzQVqYW3bnxHBeNIs7uhF8YSs2wb8MFgTer/TgBBp34HFgOEYou0H2Mr/qRdgknrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NfSWT0X+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NfSWT0X+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C05E9C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776037653;
	bh=VPcSpunTMMjot/T3/Xi6f5hwl/RPV/2YdBW1bRiCEwA=;
	h=To:Subject:From:Date:From;
	b=NfSWT0X+co+aykfhuO4XUv2PfZh26s6hBQhjmYNKLyWjU6wKfExHdYVYbNvWegL53
	 yA0xrENQtbkTUXxU3Bel3L/MaLjpYbxD6E0utHdW96Pwtks9RLjAHDubi55jDTaGsy
	 sFUaO3EzsY68KH/JCnoToBIbZMNaTbZhvP6Jv+T1Wox1pW5y55xiCLOxJMfBOOC4Lk
	 hGvlvj2jIA0mRqSmIK702VqAGfjPJkNK5bsXQ8FNNCEssDQClCvIhSwZF2FEe3DneW
	 2UCGyZ3D0WT4VIBxXk2RdlybjdJbHOB4O1eyNz0IMvze2Aq3u35s8VWG6BFBvGFCEX
	 hfMPg10nU49MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAB3E93807
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177603765368.6245.15089527132038641863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 355d142d555a62c07f81e22223c35a2701e8ebf5c53ef37aee0d701a8e4f9fe5
Date: Sun, 12 Apr 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776037653
