Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D411E2834
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771207494; cv=none; b=kpNhOGUPc8KT9rk5gm28OpGYzIKA8j0Q+yRDx8C191z9BPzBtlxrlfuT2Xe4Hb761OqsK2sVvpeaA05G5WELv7coOziw2nmI084VtRoZ4rsoLJA+zLbkpy/IKuU8/Ub+FDMl2EwYb9xpV1zH7kVO63J46do94SMWLK/kxnrYiI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771207494; c=relaxed/simple;
	bh=q9pdC3sVgJBAww648iOP0lcN9OkrsOUQBive4ESX9KU=;
	h=To:Subject:From:Message-Id:Date; b=thLB18gc7EtMe82GF6BTVgV5VbikUV0CxpK684iNuTt6lcsB3W51aGWObq1VrDrIU2zumw5BnlQcGTCaim8fIw6i5FOlz8hhVB+XPTo2xgACWqScQgi49q7y3u3aZTfFgfBDI0K6OEwrsfEYJB5JSLtxLfGn9nifeu0AwOSy2eM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PX26f0Bx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PX26f0Bx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F58C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771207493;
	bh=q9pdC3sVgJBAww648iOP0lcN9OkrsOUQBive4ESX9KU=;
	h=To:Subject:From:Date:From;
	b=PX26f0BxPDCzY0isLPLpeoKFk558HCd8RJfnnTZmP17bimoFdoh0c2s8cZAslKrUT
	 HNI1NSGwV5Pz6HLQ423OnWuiQeG0KtvTlyHeTxGhkaRYjzwf1uxmM/wr3gGVE/EvDP
	 Ko2hXzOl7GlbLsL9L3DJlfKmwwsiw/Vteuun7sGUn8VdtVeUnb+RkOihb42K9aYtBj
	 +HfapXSKzsGVRPQi/x11JJeOiMug/RcGiNgJ0LA2Tn+Llq/H5lq6DTEcFpmihMrOdL
	 S3iAl8bDGcKzkD5x7qxYET+IcSLc76M78uaJDO+dAwjDLtOISmRBi+ov34sNlrcfUr
	 tuEQjx3h7DKCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D5B6E63F1F
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177120749361.6800.8591888400401625415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8127de39df78e7c48578acc28cd18135158a46a82185b1a652bedb345c1c0a7a
Date: Mon, 16 Feb 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771207493
