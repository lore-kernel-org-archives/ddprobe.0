Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAB2B40B11B
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 10:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787826036; cv=none; b=WdpiOLzX1n4bECJOyjRFMi0Gh+sVAxRasTXTqbXSFBMSsQvYJzuuRZDmIjuGkfUGPZ3m+1SgN+apnEHyJb9Tbiuymgny8bOTsAUiYTIwJ1wzL3i1ozQ6OmaQ5pnjTEphNH9V9VVMwTCIRvPktSLGV1Fc2PhL8FxaFidhw3yoaUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787826036; c=relaxed/simple;
	bh=Axvif1P6zbLv446WU/AykzyKzvB0A+4Pd9OiuCCZh94=;
	h=To:Subject:From:Message-Id:Date; b=Kh4ZAKOdShLjZiMN1k9IPMklzqnT7lqPeROtTA9kv0sFHmtfwZSdO94m3v0sr2an2uZpMhJzK54e2Feqbl/eVZrAMV0I26Tivv9Pda/ytPmW7XMFWMVIiQHyhZiuFn6t4FHUfn3pU3nSR6+O99GhOaJOq/U+kAsPPbD058nkw2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hkz1CJHH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hkz1CJHH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC79C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787826033;
	bh=Axvif1P6zbLv446WU/AykzyKzvB0A+4Pd9OiuCCZh94=;
	h=To:Subject:From:Date:From;
	b=Hkz1CJHH4h50aTUjFAZGtRAssb+dXk6QoMUuaVqFmrz2ZtywXZB2g1X/nLl+myJBn
	 LUzx+usAZdo7St8avsPjJWeirWQm9w5yu+E8NlbbcBfCjmb3XH0+iHz/x9w+aet6Cx
	 qnvi77bHpKb45NeLizdCmH2LNHbmiqqS43sARQHGZGQ5XmYz6M8MwRSPELEaXTR1tJ
	 kFk0vkihzDABmNVP1JqMDtyZ3KuQBA3SVIL1uqyg5RATQbpKUmCBaOVbj5t49GxECA
	 NYc37ey0a0UinOFysr01vGpcv47xLLA7NnReA6S/tirwf4cIddxkAxbjCDh3MRfapO
	 3iqQbv7puPhvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F1DC61DC2
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178782603368.10753.5739124764321992974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9d6ea78c998ae2e5d9ac89ab67de83f285f61cdd9b96dc8962e6b67ffb6591e
Date: Thu, 27 Aug 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787826033
