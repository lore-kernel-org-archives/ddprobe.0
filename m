Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC13A55
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767071034; cv=none; b=bRBYOiThIdpLx3K0k0E+zUjU2+fzcGjTIxDMFDi1wjLnGspRLZP/fcAVagGGlzgadQFRdb4+y9ufh2hmrV9z/Z/tO7wwy2ackONkihnAmqhYtUplKSOXo9N5QoD2Ryc9L1u6Y6OMMGxIXTFrXhuTOopoczqPnOqY6xgK2GJpJ6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767071034; c=relaxed/simple;
	bh=x0kCXiK9kcxsiUgMjy+1+yHh2eCo33q+mBu8mYOMXfU=;
	h=To:Subject:From:Message-Id:Date; b=AuGB4Kv/bwt4TxHgLr2VRFMmp9m27xPumKllB36XwbKQgrhdnRW4mDBnXrlxOa4PL0PIE24iJ7RusRMS+WCpfKqsJLMk9dcCO7cR35jfPQbtABPNQHnPIiT1xpxUrLguI4IbjhNtursSR2BBr/PDlAeavTvFAhuVk1rLtRBPr4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZHPsgj/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZHPsgj/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDD6C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767071033;
	bh=x0kCXiK9kcxsiUgMjy+1+yHh2eCo33q+mBu8mYOMXfU=;
	h=To:Subject:From:Date:From;
	b=ZHPsgj/Z+vMqpjXvbGhF10sj2HGGOd6TbEu7GLAUjeXzlbjCQygQD/I+HlLvoHTt6
	 JQ8eRVNjJ//sofoFvtuEzDpIhvYhiai5qCLzyBxNCoeTXFpHHEA0mQ2g3KyihaGZqr
	 vN1n4I/KiVaKccJe3dkBFz4x0DRifa6OLtIq5kp/bPFoGEhm/kcceHdNCYjXg4FFZg
	 tK7scmtGzDf/9wJog0aznHhywos3hQaK3ie0+sdEgcTExIQxYGKFSzJRtK5dtaf2dY
	 qyTnhExVPXz2YXxy9T2fgrs5AKJ8GqpDvEW4XHC2EbDI7GHeFNxYfOZkdwkiWVpC05
	 l7s4X/iC2aLJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1A0E9410E
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176707103357.2922.10148863160034291599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb23849834b2468565dc7515b6bb5b36d426d5dc29931d7233d8db0bf082e79f
Date: Tue, 30 Dec 2025 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767071033
